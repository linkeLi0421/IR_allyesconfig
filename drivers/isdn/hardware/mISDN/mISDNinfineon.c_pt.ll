; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/mISDNinfineon.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/mISDNinfineon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.124 }
%union.anon.124 = type { ptr }
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
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.inf_cinfo = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.inf_hw = type { %struct.list_head, ptr, ptr, [20 x i8], i32, i32, %struct._iohandle, %struct._iohandle, %struct._ioaddr, %struct._ioaddr, %struct.spinlock, %struct.ipac_hw, [3 x ptr] }
%struct._iohandle = type { i32, i32, i32, ptr }
%struct._ioaddr = type { i32, %union.anon.146 }
%union.anon.146 = type { %struct._ioport }
%struct._ioport = type { i32, i32 }
%struct.ipac_hw = type { %struct.isac_hw, [2 x %struct.hscx_hw], ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.isac_hw = type { %struct.dchannel, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.timer_list, %struct.wait_queue_head, i8, i8, i8, i8, i8 }
%struct.dchannel = type { %struct.mISDNdevice, i32, %struct.work_struct, ptr, i32, ptr, ptr, i32, %struct.timer_list, ptr, i32, %struct.sk_buff_head, %struct.sk_buff_head, ptr, i32, i32, i32, i32, i32 }
%struct.mISDNdevice = type { %struct.mISDNchannel, i32, i32, i32, i32, [16 x i8], %struct.list_head, ptr, %struct.device }
%struct.mISDNchannel = type { %struct.list_head, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.hscx_hw = type { %struct.bchannel, ptr, i8, i8, i8, [64 x i8] }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }

@__UNIQUE_ID_author459 = internal constant [34 x i8] c"mISDNinfineon.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [61 x i8] c"mISDNinfineon.file=drivers/isdn/hardware/mISDN/mISDNinfineon\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [29 x i8] c"mISDNinfineon.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version462 = internal constant [26 x i8] c"mISDNinfineon.version=1.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mISDNinfineon\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__param_str_debug = internal constant [20 x i8] c"mISDNinfineon.debug\00", align 1
@__param_ops_debug = internal constant %struct.kernel_param_ops { i32 0, ptr @set_debug, ptr @param_get_uint, ptr null }, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @__param_ops_debug, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debug463 = internal constant [45 x i8] c"mISDNinfineon.parm=debug:infineon debug mask\00", section ".modinfo", align 1
@__param_str_irqloops = internal constant [23 x i8] c"mISDNinfineon.irqloops\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@irqloops = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_irqloops = internal constant %struct.kernel_param { ptr @__param_str_irqloops, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @irqloops } }, section "__param", align 4
@__UNIQUE_ID_irqloopstype464 = internal constant [37 x i8] c"mISDNinfineon.parmtype=irqloops:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irqloops465 = internal constant [66 x i8] c"mISDNinfineon.parm=irqloops:infineon maximal irqloops (default 4)\00", section ".modinfo", align 1
@infineon_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.4, ptr @infineon_ids, ptr @inf_probe, ptr @inf_remove, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_mISDNinfineon__467_1166_infineon_init6 = internal global ptr @infineon_init, section ".initcall6.init", align 4
@__exitcall_infineon_cleanup = internal global ptr @infineon_cleanup, section ".exitcall.exit", align 4
@card_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@Cards = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @Cards, ptr @Cards }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ISDN Infineon pci\00", [46 x i8] zeroinitializer }, align 32
@infineon_ids = internal global { [15 x %struct.pci_device_id], [96 x i8] } { [15 x %struct.pci_device_id] [%struct.pci_device_id { i32 4403, i32 57346, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 0 }, %struct.pci_device_id { i32 4403, i32 57348, i32 -1, i32 -1, i32 0, i32 0, i32 2, i32 0 }, %struct.pci_device_id { i32 4403, i32 57349, i32 -1, i32 -1, i32 0, i32 0, i32 3, i32 0 }, %struct.pci_device_id { i32 4403, i32 57355, i32 -1, i32 -1, i32 0, i32 0, i32 4, i32 0 }, %struct.pci_device_id { i32 57689, i32 2, i32 83, i32 1, i32 0, i32 0, i32 5, i32 0 }, %struct.pci_device_id { i32 57689, i32 2, i32 82, i32 1, i32 0, i32 0, i32 6, i32 0 }, %struct.pci_device_id { i32 4168, i32 4096, i32 -1, i32 -1, i32 0, i32 0, i32 7, i32 0 }, %struct.pci_device_id { i32 4168, i32 12288, i32 -1, i32 -1, i32 0, i32 0, i32 8, i32 0 }, %struct.pci_device_id { i32 4711, i32 4118, i32 -1, i32 -1, i32 0, i32 0, i32 9, i32 0 }, %struct.pci_device_id { i32 4277, i32 36944, i32 2161, i32 65448, i32 0, i32 0, i32 10, i32 0 }, %struct.pci_device_id { i32 4277, i32 4144, i32 -1, i32 -1, i32 0, i32 0, i32 14, i32 0 }, %struct.pci_device_id { i32 4277, i32 4434, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4277, i32 4433, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id { i32 4277, i32 4487, i32 -1, i32 -1, i32 0, i32 0, i32 15, i32 0 }, %struct.pci_device_id zeroinitializer], [96 x i8] zeroinitializer }, align 32
@inf_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 1078, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016No memory for Infineon ISDN card\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"inf_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/isdn/hardware/mISDN/mISDNinfineon.c\00", [52 x i8] zeroinitializer }, align 32
@inf_probe._entry_ptr = internal global ptr @inf_probe._entry, section ".printk_index", align 4
@inf_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.6, ptr @.str.7, i32 1090, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016mISDN: do not have information about adapter at %s\0A\00", [42 x i8] zeroinitializer }, align 32
@inf_probe._entry_ptr.10 = internal global ptr @inf_probe._entry.8, section ".printk_index", align 4
@inf_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.6, ptr @.str.7, i32 1096, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\015mISDN: found adapter %s at %s\0A\00", [63 x i8] zeroinitializer }, align 32
@inf_probe._entry_ptr.13 = internal global ptr @inf_probe._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@inf_card_info = internal constant { [16 x %struct.inf_cinfo], [96 x i8] } { [16 x %struct.inf_cinfo] [%struct.inf_cinfo { i32 1, ptr @.str.14, ptr @.str.15, i32 3, i32 0, i8 2, i8 0, ptr @diva_irq }, %struct.inf_cinfo { i32 2, ptr @.str.16, ptr @.str.17, i32 3, i32 0, i8 2, i8 0, ptr @diva_irq }, %struct.inf_cinfo { i32 3, ptr @.str.18, ptr @.str.19, i32 2, i32 2, i8 0, i8 1, ptr @diva20x_irq }, %struct.inf_cinfo { i32 4, ptr @.str.20, ptr @.str.21, i32 2, i32 2, i8 0, i8 1, ptr @diva20x_irq }, %struct.inf_cinfo { i32 5, ptr @.str.22, ptr @.str.23, i32 3, i32 0, i8 0, i8 0, ptr @tiger_irq }, %struct.inf_cinfo { i32 6, ptr @.str.24, ptr @.str.25, i32 3, i32 0, i8 0, i8 0, ptr @tiger_irq }, %struct.inf_cinfo { i32 7, ptr @.str.26, ptr @.str.27, i32 1, i32 3, i8 1, i8 3, ptr @elsa_irq }, %struct.inf_cinfo { i32 8, ptr @.str.28, ptr @.str.29, i32 1, i32 3, i8 1, i8 3, ptr @elsa_irq }, %struct.inf_cinfo { i32 9, ptr @.str.30, ptr @.str.31, i32 1, i32 3, i8 0, i8 1, ptr @niccy_irq }, %struct.inf_cinfo { i32 10, ptr @.str.32, ptr @.str.33, i32 1, i32 3, i8 1, i8 5, ptr @ipac_irq }, %struct.inf_cinfo { i32 11, ptr @.str.32, ptr @.str.34, i32 0, i32 3, i8 0, i8 4, ptr @ipac_irq }, %struct.inf_cinfo { i32 12, ptr @.str.32, ptr @.str.35, i32 0, i32 3, i8 0, i8 3, ptr @ipac_irq }, %struct.inf_cinfo { i32 13, ptr @.str.32, ptr @.str.36, i32 0, i32 3, i8 0, i8 2, ptr @ipac_irq }, %struct.inf_cinfo { i32 14, ptr @.str.37, ptr @.str.38, i32 1, i32 1, i8 1, i8 2, ptr @gazel_irq }, %struct.inf_cinfo { i32 15, ptr @.str.39, ptr @.str.40, i32 1, i32 3, i8 1, i8 2, ptr @ipac_irq }, %struct.inf_cinfo zeroinitializer], [96 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Dialogic Diva 2.0\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"diva20\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dialogic Diva 2.0U\00", [45 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"diva20U\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dialogic Diva 2.01\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"diva201\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Dialogic Diva 2.02\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"diva202\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Sedlbauer SpeedWin PCI\00", [41 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speedwin\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"HST Saphir 3\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"saphir\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Develo Microlink PCI\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qs1000\00", [25 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Develo QuickStep 3000\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"qs3000\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Sagem NICCY\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"niccy\00", [26 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SciTel Quadro\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p1_scitel\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p2_scitel\00", [22 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p3_scitel\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"p4_scitel\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Gazel R685\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gazel685\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Gazel R753\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gazel753\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s.%d\00", [26 x i8] zeroinitializer }, align 32
@inf_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@setup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.7, i32 932, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015Infineon %d cards installed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_instance\00", [17 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr = internal global ptr @setup_instance._entry, section ".printk_index", align 4
@inf_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.7, i32 584, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s unknown command %x %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"inf_ctrl\00", [23 x i8] zeroinitializer }, align 32
@inf_ctrl._entry_ptr = internal global ptr @inf_ctrl._entry, section ".printk_index", align 4
@reset_inf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.7, i32 488, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\015%s: resetting card\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reset_inf\00", [22 x i8] zeroinitializer }, align 32
@reset_inf._entry_ptr = internal global ptr @reset_inf._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@setup_io._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.7, i32 672, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016mISDN: %s config port %lx (%lu bytes)already in use\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"setup_io\00", [23 x i8] zeroinitializer }, align 32
@setup_io._entry_ptr = internal global ptr @setup_io._entry, section ".printk_index", align 4
@setup_io._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.50, ptr @.str.7, i32 684, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\015%s: IO cfg %lx (%lu bytes) mode%d\0A\00", [59 x i8] zeroinitializer }, align 32
@setup_io._entry_ptr.53 = internal global ptr @setup_io._entry.51, section ".printk_index", align 4
@setup_io._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.50, ptr @.str.7, i32 702, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016mISDN: %s address port %lx (%lu bytes)already in use\0A\00", [40 x i8] zeroinitializer }, align 32
@setup_io._entry_ptr.56 = internal global ptr @setup_io._entry.54, section ".printk_index", align 4
@setup_io._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.50, ptr @.str.7, i32 714, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015%s: IO addr %lx (%lu bytes) mode%d\0A\00", [58 x i8] zeroinitializer }, align 32
@setup_io._entry_ptr.59 = internal global ptr @setup_io._entry.57, section ".printk_index", align 4
@init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.7, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: couldn't get interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_irq\00", [23 x i8] zeroinitializer }, align 32
@init_irq._entry_ptr = internal global ptr @init_irq._entry, section ".printk_index", align 4
@init_irq._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.61, ptr @.str.7, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: ISAC init failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@init_irq._entry_ptr.64 = internal global ptr @init_irq._entry.62, section ".printk_index", align 4
@init_irq._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.61, ptr @.str.7, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: IRQ %d count %d\0A\00", [41 x i8] zeroinitializer }, align 32
@init_irq._entry_ptr.67 = internal global ptr @init_irq._entry.65, section ".printk_index", align 4
@init_irq._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.61, ptr @.str.7, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: IRQ(%d) got no requests during init %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_irq._entry_ptr.70 = internal global ptr @init_irq._entry.68, section ".printk_index", align 4
@inf_remove.__UNIQUE_ID_ddebug466 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.71, ptr @.str.7, ptr @.str.72, i8 1, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"inf_remove\00", [21 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: drvdata already removed\0A\00", [35 x i8] zeroinitializer }, align 32
@infineon_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.7, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\015Infineon ISDN Driver Rev. %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infineon_init\00", [18 x i8] zeroinitializer }, align 32
@infineon_init._entry_ptr = internal global ptr @infineon_init._entry, section ".printk_index", align 4
@switch.table.inf_probe = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @inf_card_info, ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 1), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 2), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 3), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 4), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 5), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 6), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 7), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 8), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 9), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 10), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 11), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 12), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 13), ptr getelementptr inbounds ([16 x %struct.inf_cinfo], ptr @inf_card_info, i32 0, i32 14)], [36 x i8] zeroinitializer }, align 32
@switch.table.setup_instance = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ReadISAC_IO, ptr @ReadISAC_MIO, ptr @ReadISAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.75 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @WriteISAC_IO, ptr @WriteISAC_MIO, ptr @WriteISAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.76 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ReadFiFoISAC_IO, ptr @ReadFiFoISAC_MIO, ptr @ReadFiFoISAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.77 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @WriteFiFoISAC_IO, ptr @WriteFiFoISAC_MIO, ptr @WriteFiFoISAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.78 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ReadIPAC_IO, ptr @ReadIPAC_MIO, ptr @ReadIPAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.79 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @WriteIPAC_IO, ptr @WriteIPAC_MIO, ptr @WriteIPAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.80 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @ReadFiFoIPAC_IO, ptr @ReadFiFoIPAC_MIO, ptr @ReadFiFoIPAC_IND], [20 x i8] zeroinitializer }, align 32
@switch.table.setup_instance.81 = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @WriteFiFoIPAC_IO, ptr @WriteFiFoIPAC_MIO, ptr @WriteFiFoIPAC_IND], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [17 x i64] [i64 15, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15]
@__sancov_gen_cov_switch_values.82 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.83 = internal global [6 x i64] [i64 4, i64 32, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.85 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.86 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 15]
@__sancov_gen_cov_switch_values.87 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 14, i64 15]
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 249, i32 1 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 37, i32 12 }
@___asan_gen_.100 = private unnamed_addr constant [9 x i8] c"irqloops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 38, i32 12 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"infineon_driver\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1143, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [10 x i8] c"card_lock\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [6 x i8] c"Cards\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 220, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 221, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1144, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant [13 x i8] c"infineon_ids\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 113, i32 29 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1078, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1089, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1095, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"inf_card_info\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 946, i32 31 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 949, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 950, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 956, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 957, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 963, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 964, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 970, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 971, i32 3 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 977, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 978, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 984, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 985, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 991, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 992, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 998, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 999, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1005, i32 3 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1006, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1012, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1013, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1020, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1027, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1034, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1040, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1041, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1047, i32 3 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1048, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 899, i32 44 }
@___asan_gen_.232 = private unnamed_addr constant [8 x i8] c"inf_cnt\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 36, i32 12 }
@___asan_gen_.235 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 909, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 932, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 583, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 488, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 670, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 682, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 700, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 712, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 601, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 610, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 617, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 620, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1140, i32 3 }
@___asan_gen_.328 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.335 = private constant [47 x i8] c"../drivers/isdn/hardware/mISDN/mISDNinfineon.c\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.335, i32 1155, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant [23 x i8] c"switch.table.inf_probe\00", align 1
@___asan_gen_.338 = private unnamed_addr constant [28 x i8] c"switch.table.setup_instance\00", align 1
@___asan_gen_.339 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.75\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.76\00", align 1
@___asan_gen_.341 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.77\00", align 1
@___asan_gen_.342 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.78\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.79\00", align 1
@___asan_gen_.344 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.80\00", align 1
@___asan_gen_.345 = private unnamed_addr constant [31 x i8] c"switch.table.setup_instance.81\00", align 1
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_debug463, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_irqloops465, ptr @__UNIQUE_ID_irqloopstype464, ptr @__UNIQUE_ID_license461, ptr @__UNIQUE_ID_version462, ptr @__exitcall_infineon_cleanup, ptr @__initcall__kmod_mISDNinfineon__467_1166_infineon_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_irqloops, ptr @inf_ctrl._entry, ptr @inf_ctrl._entry_ptr, ptr @inf_probe._entry, ptr @inf_probe._entry.11, ptr @inf_probe._entry.8, ptr @inf_probe._entry_ptr, ptr @inf_probe._entry_ptr.10, ptr @inf_probe._entry_ptr.13, ptr @infineon_cleanup, ptr @infineon_init._entry, ptr @infineon_init._entry_ptr, ptr @init_irq._entry, ptr @init_irq._entry.62, ptr @init_irq._entry.65, ptr @init_irq._entry.68, ptr @init_irq._entry_ptr, ptr @init_irq._entry_ptr.64, ptr @init_irq._entry_ptr.67, ptr @init_irq._entry_ptr.70, ptr @reset_inf._entry, ptr @reset_inf._entry_ptr, ptr @setup_instance._entry, ptr @setup_instance._entry_ptr, ptr @setup_io._entry, ptr @setup_io._entry.51, ptr @setup_io._entry.54, ptr @setup_io._entry.57, ptr @setup_io._entry_ptr, ptr @setup_io._entry_ptr.53, ptr @setup_io._entry_ptr.56, ptr @setup_io._entry_ptr.59, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @irqloops, ptr @infineon_driver, ptr @card_lock, ptr @Cards, ptr @.str.3, ptr @.str.4, ptr @infineon_ids, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @inf_card_info, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @inf_cnt, ptr @setup_instance.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.66, ptr @.str.69, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @switch.table.inf_probe, ptr @switch.table.setup_instance, ptr @switch.table.setup_instance.75, ptr @switch.table.setup_instance.76, ptr @switch.table.setup_instance.77, ptr @switch.table.setup_instance.78, ptr @switch.table.setup_instance.79, ptr @switch.table.setup_instance.80, ptr @switch.table.setup_instance.81], section "llvm.metadata"
@0 = internal global [92 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqloops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infineon_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Cards to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infineon_ids to i32), i32 480, i32 576, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_card_info to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @inf_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reset_inf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_io._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_io._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_io._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_io._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_irq._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_irq._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_irq._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infineon_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.inf_probe to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.setup_instance.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @infineon_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @infineon_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @infineon_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.2) #9
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @infineon_driver, ptr noundef null, ptr noundef nonnull @.str.1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_debug(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @card_lock) #6
  %card.08 = load ptr, ptr @Cards, align 4
  %cmp.not9 = icmp eq ptr %card.08, @Cards
  br i1 %cmp.not9, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %card.010 = phi ptr [ %card.0, %for.body.for.body_crit_edge ], [ %card.08, %if.then.for.body_crit_edge ]
  %0 = load i32, ptr @debug, align 4
  %debug.i = getelementptr inbounds %struct.inf_hw, ptr %card.010, i32 0, i32 11, i32 0, i32 0, i32 15
  %1 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %debug.i, align 4
  %debug2.i = getelementptr inbounds %struct.inf_hw, ptr %card.010, i32 0, i32 11, i32 1, i32 0, i32 0, i32 21
  %2 = ptrtoint ptr %debug2.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %0, ptr %debug2.i, align 8
  %debug7.i = getelementptr %struct.inf_hw, ptr %card.010, i32 0, i32 11, i32 1, i32 1, i32 0, i32 21
  %3 = ptrtoint ptr %debug7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %debug7.i, align 4
  %4 = ptrtoint ptr %card.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %card.0 = load ptr, ptr %card.010, align 4
  %cmp.not = icmp eq ptr %card.0, @Cards
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @card_lock) #6
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inf_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2360) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #9
  br label %cleanup52

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev2, align 8
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup52

if.end6:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %switch.tableidx = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 15
  br i1 %4, label %switch.lookup, label %do.end13

do.end13:                                         ; preds = %if.end6
  %ci = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %ci to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %ci, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %7, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end13.pci_name.exit_crit_edge

do.end13.pci_name.exit_crit_edge:                 ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end13.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %9, %if.end.i.i ], [ %7, %do.end13.pci_name.exit_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %retval.0.i.i) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup52

switch.lookup:                                    ; preds = %if.end6
  %switch.gep = getelementptr inbounds [15 x ptr], ptr @switch.table.inf_probe, i32 0, i32 %switch.tableidx
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %ci104 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %ci104 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %switch.load, ptr %ci104, align 4
  %full = getelementptr inbounds %struct.inf_cinfo, ptr %switch.load, i32 0, i32 1
  %12 = ptrtoint ptr %full to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %full, align 4
  %init_name.i.i95 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %14 = ptrtoint ptr %init_name.i.i95 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i95, align 8
  %tobool.not.i.i96 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i96, label %if.end.i.i98, label %switch.lookup.pci_name.exit100_crit_edge

switch.lookup.pci_name.exit100_crit_edge:         ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %pci_name.exit100

if.end.i.i98:                                     ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i97 = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %16 = ptrtoint ptr %dev.i97 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i97, align 4
  br label %pci_name.exit100

pci_name.exit100:                                 ; preds = %if.end.i.i98, %switch.lookup.pci_name.exit100_crit_edge
  %retval.0.i.i99 = phi ptr [ %17, %if.end.i.i98 ], [ %15, %switch.lookup.pci_name.exit100_crit_edge ]
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %13, ptr noundef %retval.0.i.i99) #9
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %irq25 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %irq25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq25, align 4
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %21 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call26 = tail call fastcc i32 @setup_instance(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else29, label %if.then28

if.then28:                                        ; preds = %pci_name.exit100
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup52

if.else29:                                        ; preds = %pci_name.exit100
  %23 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %24)
  %cmp = icmp eq i32 %24, 10
  br i1 %cmp, label %for.body.preheader, label %if.else29.cleanup52_crit_edge

if.else29.cleanup52_crit_edge:                    ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup52

for.body.preheader:                               ; preds = %if.else29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i102 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 2360) #10
  %tobool34.not = icmp eq ptr %call7.i.i102, null
  br i1 %tobool34.not, label %for.body.preheader.cleanup_crit_edge, label %if.end36

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %for.body.preheader
  %26 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq25, align 4
  %irq38 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102, i32 0, i32 4
  %28 = ptrtoint ptr %irq38 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %irq38, align 4
  %29 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev2, align 8
  %pdev40 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102, i32 0, i32 1
  %31 = ptrtoint ptr %pdev40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %pdev40, align 8
  %32 = ptrtoint ptr %ci104 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ci104, align 4
  %add.ptr = getelementptr %struct.inf_cinfo, ptr %33, i32 1
  %ci42 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102, i32 0, i32 2
  %34 = ptrtoint ptr %ci42 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %add.ptr, ptr %ci42, align 4
  %call43 = tail call fastcc i32 @setup_instance(ptr noundef nonnull %call7.i.i102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.else46, label %if.end36.if.then45_crit_edge

if.end36.if.then45_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.then45:                                        ; preds = %if.end36.2.if.then45_crit_edge, %if.end36.1.if.then45_crit_edge, %if.end36.if.then45_crit_edge
  %call43.lcssa = phi i32 [ %call43, %if.end36.if.then45_crit_edge ], [ %call43.1, %if.end36.1.if.then45_crit_edge ], [ %call43.2, %if.end36.2.if.then45_crit_edge ]
  %call7.i.i102.lcssa112 = phi ptr [ %call7.i.i102, %if.end36.if.then45_crit_edge ], [ %call7.i.i102.1, %if.end36.1.if.then45_crit_edge ], [ %call7.i.i102.2, %if.end36.2.if.then45_crit_edge ]
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i102.lcssa112) #6
  tail call fastcc void @release_card(ptr noundef nonnull %call7.i.i)
  br label %cleanup52

if.else46:                                        ; preds = %if.end36
  %arrayidx = getelementptr %struct.inf_hw, ptr %call7.i.i, i32 0, i32 12, i32 0
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call7.i.i102, ptr %arrayidx, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i102.1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 2360) #10
  %tobool34.not.1 = icmp eq ptr %call7.i.i102.1, null
  br i1 %tobool34.not.1, label %if.else46.cleanup_crit_edge, label %if.end36.1

if.else46.cleanup_crit_edge:                      ; preds = %if.else46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36.1:                                       ; preds = %if.else46
  %37 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %irq25, align 4
  %irq38.1 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102.1, i32 0, i32 4
  %39 = ptrtoint ptr %irq38.1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %irq38.1, align 4
  %40 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev2, align 8
  %pdev40.1 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102.1, i32 0, i32 1
  %42 = ptrtoint ptr %pdev40.1 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %pdev40.1, align 8
  %43 = ptrtoint ptr %ci104 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ci104, align 4
  %add.ptr.1 = getelementptr %struct.inf_cinfo, ptr %44, i32 2
  %ci42.1 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102.1, i32 0, i32 2
  %45 = ptrtoint ptr %ci42.1 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr.1, ptr %ci42.1, align 4
  %call43.1 = tail call fastcc i32 @setup_instance(ptr noundef nonnull %call7.i.i102.1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.1)
  %tobool44.not.1 = icmp eq i32 %call43.1, 0
  br i1 %tobool44.not.1, label %if.else46.1, label %if.end36.1.if.then45_crit_edge

if.end36.1.if.then45_crit_edge:                   ; preds = %if.end36.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.else46.1:                                      ; preds = %if.end36.1
  %arrayidx.1 = getelementptr %struct.inf_hw, ptr %call7.i.i, i32 0, i32 12, i32 1
  %46 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i102.1, ptr %arrayidx.1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i102.2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 2360) #10
  %tobool34.not.2 = icmp eq ptr %call7.i.i102.2, null
  br i1 %tobool34.not.2, label %if.else46.1.cleanup_crit_edge, label %if.end36.2

if.else46.1.cleanup_crit_edge:                    ; preds = %if.else46.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36.2:                                       ; preds = %if.else46.1
  %48 = ptrtoint ptr %irq25 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq25, align 4
  %irq38.2 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102.2, i32 0, i32 4
  %50 = ptrtoint ptr %irq38.2 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %irq38.2, align 4
  %51 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pdev2, align 8
  %pdev40.2 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102.2, i32 0, i32 1
  %53 = ptrtoint ptr %pdev40.2 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %pdev40.2, align 8
  %54 = ptrtoint ptr %ci104 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ci104, align 4
  %add.ptr.2 = getelementptr %struct.inf_cinfo, ptr %55, i32 3
  %ci42.2 = getelementptr inbounds %struct.inf_hw, ptr %call7.i.i102.2, i32 0, i32 2
  %56 = ptrtoint ptr %ci42.2 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %add.ptr.2, ptr %ci42.2, align 4
  %call43.2 = tail call fastcc i32 @setup_instance(ptr noundef nonnull %call7.i.i102.2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.2)
  %tobool44.not.2 = icmp eq i32 %call43.2, 0
  br i1 %tobool44.not.2, label %if.else46.2, label %if.end36.2.if.then45_crit_edge

if.end36.2.if.then45_crit_edge:                   ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then45

if.else46.2:                                      ; preds = %if.end36.2
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.2 = getelementptr %struct.inf_hw, ptr %call7.i.i, i32 0, i32 12, i32 2
  %57 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i102.2, ptr %arrayidx.2, align 8
  br label %cleanup52

cleanup:                                          ; preds = %if.else46.1.cleanup_crit_edge, %if.else46.cleanup_crit_edge, %for.body.preheader.cleanup_crit_edge
  tail call fastcc void @release_card(ptr noundef nonnull %call7.i.i)
  tail call void @pci_disable_device(ptr noundef %pdev) #6
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup, %if.else46.2, %if.then45, %if.else29.cleanup52_crit_edge, %if.then28, %pci_name.exit, %if.then5, %do.end
  %retval.1 = phi i32 [ %call3, %if.then5 ], [ -12, %cleanup ], [ -22, %pci_name.exit ], [ -12, %do.end ], [ %call26, %if.then28 ], [ 0, %if.else29.cleanup52_crit_edge ], [ %call43.lcssa, %if.then45 ], [ 0, %if.else46.2 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @inf_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @release_card(ptr noundef nonnull %1)
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @inf_remove.__UNIQUE_ID_ddebug466, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@inf_remove, %if.then5)) #6
          to label %if.end6 [label %if.then5], !srcloc !186

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @inf_remove.__UNIQUE_ID_ddebug466, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.71) #6
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %if.then
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @setup_instance(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 3
  %ci = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 2
  %0 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci, align 4
  %name1 = getelementptr inbounds %struct.inf_cinfo, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %name1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %name1, align 4
  %4 = load i32, ptr @inf_cnt, align 4
  %add = add i32 %4, 1
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 19, ptr noundef nonnull @.str.41, ptr noundef %3, i32 noundef %add)
  %call2 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #6
  %5 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %card, ptr noundef %5, ptr noundef nonnull @Cards) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %card, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @Cards, ptr %card, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %7 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %5, ptr %prev3.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %card, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call2) #6
  %9 = load i32, ptr @debug, align 4
  %debug.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 0, i32 15
  %10 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %debug.i, align 4
  %debug2.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 1, i32 0, i32 0, i32 21
  %11 = ptrtoint ptr %debug2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %9, ptr %debug2.i, align 8
  %debug7.i = getelementptr %struct.inf_hw, ptr %card, i32 0, i32 11, i32 1, i32 1, i32 0, i32 21
  %12 = ptrtoint ptr %debug7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %debug7.i, align 4
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11
  %name13 = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 3
  %13 = ptrtoint ptr %name13 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %name, ptr %name13, align 8
  %name17 = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 2
  %14 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %name, ptr %name17, align 8
  %owner = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 5
  %15 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %owner, align 4
  %lock = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 10
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.42, ptr noundef nonnull @setup_instance.__key, i16 noundef signext 3) #6
  %hwlock = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 4
  %16 = ptrtoint ptr %hwlock to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lock, ptr %hwlock, align 4
  %hwlock28 = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 4
  %17 = ptrtoint ptr %hwlock28 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %lock, ptr %hwlock28, align 8
  %ctrl = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 13
  %18 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @inf_ctrl, ptr %ctrl, align 4
  %19 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ci, align 4
  %cfg_mode.i = getelementptr inbounds %struct.inf_cinfo, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cfg_mode.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool.not.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i, label %list_add_tail.exit.if.end90.i_crit_edge, label %if.then.i

list_add_tail.exit.if.end90.i_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

if.then.i:                                        ; preds = %list_add_tail.exit
  %pdev.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 1
  %23 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev.i, align 8
  %cfg_bar.i = getelementptr inbounds %struct.inf_cinfo, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %cfg_bar.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cfg_bar.i, align 4
  %idxprom.i = zext i8 %26 to i32
  %arrayidx.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 %idxprom.i
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 8
  %cfg.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6
  %start2.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %29 = ptrtoint ptr %start2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %start2.i, align 4
  %30 = load i8, ptr %cfg_bar.i, align 4
  %idxprom7.i = zext i8 %30 to i32
  %end.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 %idxprom7.i, i32 1
  %31 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i = icmp eq i32 %32, 0
  br i1 %cmp.i, label %if.then.i.cond.end.i_crit_edge, label %cond.false.i

if.then.i.cond.end.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx8.i = getelementptr %struct.pci_dev, ptr %24, i32 0, i32 47, i32 %idxprom7.i
  %33 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx8.i, align 8
  %sub.i = add i32 %32, 1
  %add.i = sub i32 %sub.i, %34
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %add.i, %cond.false.i ], [ 0, %if.then.i.cond.end.i_crit_edge ]
  %size.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond.i, ptr %size.i, align 4
  %36 = ptrtoint ptr %cfg_mode.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %cfg_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %37)
  %cmp26.i = icmp eq i32 %37, 2
  br i1 %cmp26.i, label %if.then27.i, label %if.end44.i

if.then27.i:                                      ; preds = %cond.end.i
  %call.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %cond.i, ptr noundef %name, i32 noundef 0) #6
  %tobool32.not.i = icmp eq ptr %call.i, null
  br i1 %tobool32.not.i, label %if.then27.i.do.end.i_crit_edge, label %if.then27.i.if.end54.i_crit_edge

if.then27.i.if.end54.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.then27.i.do.end.i_crit_edge:                   ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

if.end44.i:                                       ; preds = %cond.end.i
  %call40.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %28, i32 noundef %cond.i, ptr noundef %name, i32 noundef 0) #6
  %tobool41.not.i = icmp eq ptr %call40.i, null
  br i1 %tobool41.not.i, label %if.end44.i.do.end.i_crit_edge, label %if.end44.i.if.end54.i_crit_edge

if.end44.i.if.end54.i_crit_edge:                  ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end54.i

if.end44.i.do.end.i_crit_edge:                    ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.end44.i.do.end.i_crit_edge, %if.then27.i.do.end.i_crit_edge
  %38 = ptrtoint ptr %start2.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %start2.i, align 4
  %40 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %size.i, align 4
  %call53.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %39, i32 noundef %41) #9
  br label %error_setup

if.end54.i:                                       ; preds = %if.end44.i.if.end54.i_crit_edge, %if.then27.i.if.end54.i_crit_edge
  %42 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ci, align 4
  %cfg_mode56.i = getelementptr inbounds %struct.inf_cinfo, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %cfg_mode56.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %cfg_mode56.i, align 4
  %46 = ptrtoint ptr %cfg.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %cfg.i, align 4
  %47 = load i32, ptr %cfg_mode56.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %cmp60.i = icmp eq i32 %47, 2
  br i1 %cmp60.i, label %if.then61.i, label %if.end54.i.if.end73.i_crit_edge

if.end54.i.if.end73.i_crit_edge:                  ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.then61.i:                                      ; preds = %if.end54.i
  %48 = ptrtoint ptr %start2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %start2.i, align 4
  %50 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size.i, align 4
  %call66.i = tail call ptr @ioremap(i32 noundef %49, i32 noundef %51) #6
  %p.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 3
  %52 = ptrtoint ptr %p.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call66.i, ptr %p.i, align 4
  %tobool70.not.i = icmp eq ptr %call66.i, null
  br i1 %tobool70.not.i, label %if.then61.i.error_setup_crit_edge, label %if.then61.i.if.end73.i_crit_edge

if.then61.i.if.end73.i_crit_edge:                 ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73.i

if.then61.i.error_setup_crit_edge:                ; preds = %if.then61.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_setup

if.end73.i:                                       ; preds = %if.then61.i.if.end73.i_crit_edge, %if.end54.i.if.end73.i_crit_edge
  %53 = load i32, ptr @debug, align 4
  %and.i = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool74.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool74.not.i, label %if.end73.i.if.end90.i_crit_edge, label %do.end78.i

if.end73.i.if.end90.i_crit_edge:                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end90.i

do.end78.i:                                       ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %start2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %start2.i, align 4
  %56 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %size.i, align 4
  %58 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ci, align 4
  %cfg_mode87.i = getelementptr inbounds %struct.inf_cinfo, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %cfg_mode87.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %cfg_mode87.i, align 4
  %call88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %name, i32 noundef %55, i32 noundef %57, i32 noundef %61) #9
  br label %if.end90.i

if.end90.i:                                       ; preds = %do.end78.i, %if.end73.i.if.end90.i_crit_edge, %list_add_tail.exit.if.end90.i_crit_edge
  %62 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ci, align 4
  %addr_mode.i = getelementptr inbounds %struct.inf_cinfo, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %addr_mode.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %addr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool92.not.i = icmp eq i32 %65, 0
  br i1 %tobool92.not.i, label %if.end90.i.if.end209.i_crit_edge, label %if.then93.i

if.end90.i.if.end209.i_crit_edge:                 ; preds = %if.end90.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209.i

if.then93.i:                                      ; preds = %if.end90.i
  %pdev94.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 1
  %66 = ptrtoint ptr %pdev94.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev94.i, align 8
  %addr_bar.i = getelementptr inbounds %struct.inf_cinfo, ptr %63, i32 0, i32 6
  %68 = ptrtoint ptr %addr_bar.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %addr_bar.i, align 1
  %idxprom97.i = zext i8 %69 to i32
  %arrayidx98.i = getelementptr %struct.pci_dev, ptr %67, i32 0, i32 47, i32 %idxprom97.i
  %70 = ptrtoint ptr %arrayidx98.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx98.i, align 8
  %addr.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %start100.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %72 = ptrtoint ptr %start100.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %start100.i, align 4
  %73 = load i8, ptr %addr_bar.i, align 1
  %idxprom105.i = zext i8 %73 to i32
  %end107.i = getelementptr %struct.pci_dev, ptr %67, i32 0, i32 47, i32 %idxprom105.i, i32 1
  %74 = ptrtoint ptr %end107.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %end107.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp108.i = icmp eq i32 %75, 0
  br i1 %cmp108.i, label %if.then93.i.cond.end127.i_crit_edge, label %cond.false110.i

if.then93.i.cond.end127.i_crit_edge:              ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end127.i

cond.false110.i:                                  ; preds = %if.then93.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx106.i = getelementptr %struct.pci_dev, ptr %67, i32 0, i32 47, i32 %idxprom105.i
  %76 = ptrtoint ptr %arrayidx106.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx106.i, align 8
  %sub125.i = add i32 %75, 1
  %add126.i = sub i32 %sub125.i, %77
  br label %cond.end127.i

cond.end127.i:                                    ; preds = %cond.false110.i, %if.then93.i.cond.end127.i_crit_edge
  %cond128.i = phi i32 [ %add126.i, %cond.false110.i ], [ 0, %if.then93.i.cond.end127.i_crit_edge ]
  %size130.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %size130.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %cond128.i, ptr %size130.i, align 4
  %79 = ptrtoint ptr %addr_mode.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %addr_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %80)
  %cmp133.i = icmp eq i32 %80, 2
  br i1 %cmp133.i, label %if.then134.i, label %if.end156.i

if.then134.i:                                     ; preds = %cond.end127.i
  %call141.i = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %71, i32 noundef %cond128.i, ptr noundef %name, i32 noundef 0) #6
  %tobool142.not.i = icmp eq ptr %call141.i, null
  br i1 %tobool142.not.i, label %if.then134.i.do.end161.i_crit_edge, label %if.then134.i.if.end170.i_crit_edge

if.then134.i.if.end170.i_crit_edge:               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170.i

if.then134.i.do.end161.i_crit_edge:               ; preds = %if.then134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161.i

if.end156.i:                                      ; preds = %cond.end127.i
  %call152.i = tail call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %71, i32 noundef %cond128.i, ptr noundef %name, i32 noundef 0) #6
  %tobool153.not.i = icmp eq ptr %call152.i, null
  br i1 %tobool153.not.i, label %if.end156.i.do.end161.i_crit_edge, label %if.end156.i.if.end170.i_crit_edge

if.end156.i.if.end170.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end170.i

if.end156.i.do.end161.i_crit_edge:                ; preds = %if.end156.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end161.i

do.end161.i:                                      ; preds = %if.end156.i.do.end161.i_crit_edge, %if.then134.i.do.end161.i_crit_edge
  %81 = ptrtoint ptr %start100.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %start100.i, align 4
  %83 = ptrtoint ptr %size130.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %size130.i, align 4
  %call169.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef %name, i32 noundef %82, i32 noundef %84) #9
  br label %error_setup

if.end170.i:                                      ; preds = %if.end156.i.if.end170.i_crit_edge, %if.then134.i.if.end170.i_crit_edge
  %85 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ci, align 4
  %addr_mode172.i = getelementptr inbounds %struct.inf_cinfo, ptr %86, i32 0, i32 4
  %87 = ptrtoint ptr %addr_mode172.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %addr_mode172.i, align 4
  %89 = ptrtoint ptr %addr.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %88, ptr %addr.i, align 4
  %90 = load i32, ptr %addr_mode172.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %90)
  %cmp177.i = icmp eq i32 %90, 2
  br i1 %cmp177.i, label %if.then178.i, label %if.end170.i.if.end191.i_crit_edge

if.end170.i.if.end191.i_crit_edge:                ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191.i

if.then178.i:                                     ; preds = %if.end170.i
  %91 = ptrtoint ptr %start100.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %start100.i, align 4
  %93 = ptrtoint ptr %size130.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %size130.i, align 4
  %call183.i = tail call ptr @ioremap(i32 noundef %92, i32 noundef %94) #6
  %p185.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 3
  %95 = ptrtoint ptr %p185.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call183.i, ptr %p185.i, align 4
  %tobool188.not.i = icmp eq ptr %call183.i, null
  br i1 %tobool188.not.i, label %if.then178.i.error_setup_crit_edge, label %if.then178.i.if.end191.i_crit_edge

if.then178.i.if.end191.i_crit_edge:               ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end191.i

if.then178.i.error_setup_crit_edge:               ; preds = %if.then178.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_setup

if.end191.i:                                      ; preds = %if.then178.i.if.end191.i_crit_edge, %if.end170.i.if.end191.i_crit_edge
  %96 = load i32, ptr @debug, align 4
  %and192.i = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and192.i)
  %tobool193.not.i = icmp eq i32 %and192.i, 0
  br i1 %tobool193.not.i, label %if.end191.i.if.end209.i_crit_edge, label %do.end197.i

if.end191.i.if.end209.i_crit_edge:                ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end209.i

do.end197.i:                                      ; preds = %if.end191.i
  call void @__sanitizer_cov_trace_pc() #8
  %97 = ptrtoint ptr %start100.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %start100.i, align 4
  %99 = ptrtoint ptr %size130.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %size130.i, align 4
  %101 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ci, align 4
  %addr_mode206.i = getelementptr inbounds %struct.inf_cinfo, ptr %102, i32 0, i32 4
  %103 = ptrtoint ptr %addr_mode206.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %addr_mode206.i, align 4
  %call207.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef %name, i32 noundef %98, i32 noundef %100, i32 noundef %104) #9
  br label %if.end209.i

if.end209.i:                                      ; preds = %do.end197.i, %if.end191.i.if.end209.i_crit_edge, %if.end90.i.if.end209.i_crit_edge
  %105 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %ci, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %106, align 4
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values)
  switch i32 %108, label %if.end209.i.error_setup_crit_edge [
    i32 1, label %if.end209.i.sw.bb.i_crit_edge
    i32 2, label %if.end209.i.sw.bb.i_crit_edge149
    i32 3, label %sw.bb238.i
    i32 4, label %sw.bb259.i
    i32 5, label %if.end209.i.sw.bb278.i_crit_edge
    i32 6, label %if.end209.i.sw.bb278.i_crit_edge150
    i32 7, label %if.end209.i.sw.bb341.i_crit_edge
    i32 8, label %if.end209.i.sw.bb341.i_crit_edge151
    i32 9, label %sw.bb377.i
    i32 10, label %sw.bb412.i
    i32 11, label %sw.bb450.i
    i32 12, label %sw.bb489.i
    i32 13, label %sw.bb528.i
    i32 14, label %sw.bb567.i
    i32 15, label %sw.bb592.i
  ]

if.end209.i.sw.bb341.i_crit_edge151:              ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb341.i

if.end209.i.sw.bb341.i_crit_edge:                 ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb341.i

if.end209.i.sw.bb278.i_crit_edge150:              ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb278.i

if.end209.i.sw.bb278.i_crit_edge:                 ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb278.i

if.end209.i.sw.bb.i_crit_edge149:                 ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end209.i.sw.bb.i_crit_edge:                    ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb.i

if.end209.i.error_setup_crit_edge:                ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_setup

sw.bb.i:                                          ; preds = %if.end209.i.sw.bb.i_crit_edge, %if.end209.i.sw.bb.i_crit_edge149
  %type.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %110 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 272, ptr %type.i, align 8
  %cfg211.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6
  %111 = ptrtoint ptr %cfg211.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cfg211.i, align 4
  %isac.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %113 = ptrtoint ptr %isac.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %isac.i, align 4
  %start215.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %114 = ptrtoint ptr %start215.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %start215.i, align 4
  %add216.i = add i32 %115, 12
  %a.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %116 = ptrtoint ptr %ale.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %add216.i, ptr %ale.i, align 4
  %add220.i = add i32 %115, 8
  %117 = ptrtoint ptr %a.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %add220.i, ptr %a.i, align 4
  %hscx.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %118 = ptrtoint ptr %hscx.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %112, ptr %hscx.i, align 8
  %add228.i = add i32 %115, 4
  %a230.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale231.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %119 = ptrtoint ptr %ale231.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %add228.i, ptr %ale231.i, align 4
  %120 = ptrtoint ptr %a230.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %115, ptr %a230.i, align 4
  br label %sw.epilog.i

sw.bb238.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type240.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %121 = ptrtoint ptr %type240.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 32, ptr %type240.i, align 8
  %off.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %122 = ptrtoint ptr %off.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 128, ptr %off.i, align 4
  %addr243.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %123 = ptrtoint ptr %addr243.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr243.i, align 4
  %isac245.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %125 = ptrtoint ptr %isac245.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %isac245.i, align 4
  %p248.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 3
  %126 = ptrtoint ptr %p248.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %p248.i, align 4
  %a250.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %128 = ptrtoint ptr %a250.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %127, ptr %a250.i, align 4
  %hscx253.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %129 = ptrtoint ptr %hscx253.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %124, ptr %hscx253.i, align 8
  %a258.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %130 = ptrtoint ptr %a258.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %127, ptr %a258.i, align 4
  br label %sw.epilog.i

sw.bb259.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type261.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %131 = ptrtoint ptr %type261.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 128, ptr %type261.i, align 8
  %addr262.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %132 = ptrtoint ptr %addr262.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %addr262.i, align 4
  %isac264.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %134 = ptrtoint ptr %isac264.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %isac264.i, align 4
  %p267.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 3
  %135 = ptrtoint ptr %p267.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %p267.i, align 4
  %a269.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %137 = ptrtoint ptr %a269.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %a269.i, align 4
  %hscx272.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %138 = ptrtoint ptr %hscx272.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %133, ptr %hscx272.i, align 8
  %a277.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %139 = ptrtoint ptr %a277.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %136, ptr %a277.i, align 4
  br label %sw.epilog.i

sw.bb278.i:                                       ; preds = %if.end209.i.sw.bb278.i_crit_edge, %if.end209.i.sw.bb278.i_crit_edge150
  %type280.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %140 = ptrtoint ptr %type280.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 32, ptr %type280.i, align 8
  %off283.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %141 = ptrtoint ptr %off283.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 128, ptr %off283.i, align 4
  %cfg284.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6
  %142 = ptrtoint ptr %cfg284.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %cfg284.i, align 4
  %isac286.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %144 = ptrtoint ptr %isac286.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %isac286.i, align 4
  %start289.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %145 = ptrtoint ptr %start289.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %start289.i, align 4
  %add290.i = add i32 %146, 192
  %a292.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale293.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %147 = ptrtoint ptr %ale293.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %add290.i, ptr %ale293.i, align 4
  %add296.i = add i32 %146, 200
  %148 = ptrtoint ptr %a292.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %add296.i, ptr %a292.i, align 4
  %hscx302.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %149 = ptrtoint ptr %hscx302.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %143, ptr %hscx302.i, align 8
  %a308.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale309.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %150 = ptrtoint ptr %ale309.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add290.i, ptr %ale309.i, align 4
  %151 = ptrtoint ptr %a308.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %add296.i, ptr %a308.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %152 = ptrtoint ptr %start289.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %start289.i, align 4
  %and321.i = and i32 %153, 1048575
  %add322.i = or i32 %and321.i, -18874368
  %154 = inttoptr i32 %add322.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 -1) #6, !srcloc !188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %156 = ptrtoint ptr %start289.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %start289.i, align 4
  %and329.i = and i32 %157, 1048575
  %add330.i = or i32 %and329.i, -18874368
  %158 = inttoptr i32 %add330.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 0) #6, !srcloc !188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %159(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %160 = ptrtoint ptr %start289.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %start289.i, align 4
  %add337.i = add i32 %161, 2
  %and338.i = and i32 %add337.i, 1048575
  %add339.i = or i32 %and338.i, -18874368
  %162 = inttoptr i32 %add339.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %162, i8 -35) #6, !srcloc !188
  br label %sw.epilog.i

sw.bb341.i:                                       ; preds = %if.end209.i.sw.bb341.i_crit_edge, %if.end209.i.sw.bb341.i_crit_edge151
  %type343.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %163 = ptrtoint ptr %type343.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 32, ptr %type343.i, align 8
  %off346.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %164 = ptrtoint ptr %off346.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 128, ptr %off346.i, align 4
  %addr347.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %start348.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %165 = ptrtoint ptr %start348.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %start348.i, align 4
  %isac349.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %a350.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale351.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %167 = ptrtoint ptr %ale351.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %ale351.i, align 4
  %add354.i = add i32 %166, 1
  %168 = ptrtoint ptr %a350.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 %add354.i, ptr %a350.i, align 4
  %169 = ptrtoint ptr %addr347.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %addr347.i, align 4
  %171 = ptrtoint ptr %isac349.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %170, ptr %isac349.i, align 4
  %hscx364.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %a365.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale366.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %172 = ptrtoint ptr %ale366.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %166, ptr %ale366.i, align 4
  %173 = ptrtoint ptr %a365.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 %add354.i, ptr %a365.i, align 4
  %174 = ptrtoint ptr %hscx364.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %170, ptr %hscx364.i, align 8
  br label %sw.epilog.i

sw.bb377.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type379.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %175 = ptrtoint ptr %type379.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 272, ptr %type379.i, align 8
  %addr380.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %176 = ptrtoint ptr %addr380.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %addr380.i, align 4
  %isac382.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %178 = ptrtoint ptr %isac382.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %isac382.i, align 4
  %start385.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %179 = ptrtoint ptr %start385.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %start385.i, align 4
  %add386.i = add i32 %180, 2
  %a388.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale389.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %181 = ptrtoint ptr %ale389.i to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %add386.i, ptr %ale389.i, align 4
  %182 = ptrtoint ptr %a388.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %180, ptr %a388.i, align 4
  %hscx398.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %183 = ptrtoint ptr %hscx398.i to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %177, ptr %hscx398.i, align 8
  %add402.i = add i32 %180, 3
  %a404.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale405.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %184 = ptrtoint ptr %ale405.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %add402.i, ptr %ale405.i, align 4
  %add408.i = add i32 %180, 1
  %185 = ptrtoint ptr %a404.i to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 %add408.i, ptr %a404.i, align 4
  br label %sw.epilog.i

sw.bb412.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type414.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %186 = ptrtoint ptr %type414.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 32, ptr %type414.i, align 8
  %off417.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %187 = ptrtoint ptr %off417.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 128, ptr %off417.i, align 4
  %addr418.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %start419.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %188 = ptrtoint ptr %start419.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %start419.i, align 4
  %isac420.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %a421.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale422.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %190 = ptrtoint ptr %ale422.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %189, ptr %ale422.i, align 4
  %add426.i = add i32 %189, 4
  %191 = ptrtoint ptr %a421.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %add426.i, ptr %a421.i, align 4
  %192 = ptrtoint ptr %addr418.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %addr418.i, align 4
  %194 = ptrtoint ptr %isac420.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %193, ptr %isac420.i, align 4
  %hscx437.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %a438.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale439.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %195 = ptrtoint ptr %ale439.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %189, ptr %ale439.i, align 4
  %196 = ptrtoint ptr %a438.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %add426.i, ptr %a438.i, align 4
  %197 = ptrtoint ptr %hscx437.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %193, ptr %hscx437.i, align 8
  br label %sw.epilog.i

sw.bb450.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type452.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %198 = ptrtoint ptr %type452.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 32, ptr %type452.i, align 8
  %off455.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %199 = ptrtoint ptr %off455.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 128, ptr %off455.i, align 4
  %addr456.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %start457.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %200 = ptrtoint ptr %start457.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %start457.i, align 4
  %add458.i = add i32 %201, 8
  %isac459.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %a460.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale461.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %202 = ptrtoint ptr %ale461.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %add458.i, ptr %ale461.i, align 4
  %add465.i = add i32 %201, 12
  %203 = ptrtoint ptr %a460.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 %add465.i, ptr %a460.i, align 4
  %204 = ptrtoint ptr %addr456.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %addr456.i, align 4
  %206 = ptrtoint ptr %isac459.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %205, ptr %isac459.i, align 4
  %hscx476.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %a477.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale478.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %207 = ptrtoint ptr %ale478.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %add458.i, ptr %ale478.i, align 4
  %208 = ptrtoint ptr %a477.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add465.i, ptr %a477.i, align 4
  %209 = ptrtoint ptr %hscx476.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %205, ptr %hscx476.i, align 8
  br label %sw.epilog.i

sw.bb489.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type491.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %210 = ptrtoint ptr %type491.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 32, ptr %type491.i, align 8
  %off494.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %211 = ptrtoint ptr %off494.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 128, ptr %off494.i, align 4
  %addr495.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %start496.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %212 = ptrtoint ptr %start496.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %start496.i, align 4
  %add497.i = add i32 %213, 16
  %isac498.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %a499.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale500.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %214 = ptrtoint ptr %ale500.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %add497.i, ptr %ale500.i, align 4
  %add504.i = add i32 %213, 20
  %215 = ptrtoint ptr %a499.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 %add504.i, ptr %a499.i, align 4
  %216 = ptrtoint ptr %addr495.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %addr495.i, align 4
  %218 = ptrtoint ptr %isac498.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %217, ptr %isac498.i, align 4
  %hscx515.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %a516.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale517.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %219 = ptrtoint ptr %ale517.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %add497.i, ptr %ale517.i, align 4
  %220 = ptrtoint ptr %a516.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %add504.i, ptr %a516.i, align 4
  %221 = ptrtoint ptr %hscx515.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 %217, ptr %hscx515.i, align 8
  br label %sw.epilog.i

sw.bb528.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type530.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %222 = ptrtoint ptr %type530.i to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 32, ptr %type530.i, align 8
  %off533.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %223 = ptrtoint ptr %off533.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 128, ptr %off533.i, align 4
  %addr534.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %start535.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %224 = ptrtoint ptr %start535.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %start535.i, align 4
  %add536.i = add i32 %225, 32
  %isac537.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %a538.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale539.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %226 = ptrtoint ptr %ale539.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %add536.i, ptr %ale539.i, align 4
  %add543.i = add i32 %225, 36
  %227 = ptrtoint ptr %a538.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %add543.i, ptr %a538.i, align 4
  %228 = ptrtoint ptr %addr534.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load i32, ptr %addr534.i, align 4
  %230 = ptrtoint ptr %isac537.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 %229, ptr %isac537.i, align 4
  %hscx554.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %a555.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale556.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %231 = ptrtoint ptr %ale556.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %add536.i, ptr %ale556.i, align 4
  %232 = ptrtoint ptr %a555.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %add543.i, ptr %a555.i, align 4
  %233 = ptrtoint ptr %hscx554.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %229, ptr %hscx554.i, align 8
  br label %sw.epilog.i

sw.bb567.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type569.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %234 = ptrtoint ptr %type569.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 272, ptr %type569.i, align 8
  %off572.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %235 = ptrtoint ptr %off572.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 128, ptr %off572.i, align 4
  %addr573.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %236 = ptrtoint ptr %addr573.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %addr573.i, align 4
  %isac575.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %238 = ptrtoint ptr %isac575.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %isac575.i, align 4
  %start578.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %239 = ptrtoint ptr %start578.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %start578.i, align 4
  %a580.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %241 = ptrtoint ptr %a580.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %a580.i, align 4
  %hscx584.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %242 = ptrtoint ptr %hscx584.i to i32
  call void @__asan_store4_noabort(i32 %242)
  store i32 %237, ptr %hscx584.i, align 8
  %a590.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %243 = ptrtoint ptr %a590.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store i32 %240, ptr %a590.i, align 4
  br label %sw.epilog.i

sw.bb592.i:                                       ; preds = %if.end209.i
  call void @__sanitizer_cov_trace_pc() #8
  %type594.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 6
  %244 = ptrtoint ptr %type594.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 32, ptr %type594.i, align 8
  %off597.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 2
  %245 = ptrtoint ptr %off597.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 128, ptr %off597.i, align 4
  %addr598.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7
  %246 = ptrtoint ptr %addr598.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %addr598.i, align 4
  %isac600.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %248 = ptrtoint ptr %isac600.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 %247, ptr %isac600.i, align 4
  %start603.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 7, i32 2
  %249 = ptrtoint ptr %start603.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %start603.i, align 4
  %a605.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1
  %ale606.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8, i32 1, i32 0, i32 1
  %251 = ptrtoint ptr %ale606.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %ale606.i, align 4
  %add609.i = add i32 %250, 4
  %252 = ptrtoint ptr %a605.i to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %add609.i, ptr %a605.i, align 4
  %hscx615.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9
  %253 = ptrtoint ptr %hscx615.i to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %247, ptr %hscx615.i, align 8
  %a621.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1
  %ale622.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 9, i32 1, i32 0, i32 1
  %254 = ptrtoint ptr %ale622.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %250, ptr %ale622.i, align 4
  %255 = ptrtoint ptr %a621.i to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 %add609.i, ptr %a621.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb592.i, %sw.bb567.i, %sw.bb528.i, %sw.bb489.i, %sw.bb450.i, %sw.bb412.i, %sw.bb377.i, %sw.bb341.i, %sw.bb278.i, %sw.bb259.i, %sw.bb238.i, %sw.bb.i
  %isac629.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 8
  %256 = ptrtoint ptr %isac629.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %isac629.i, align 4
  %switch.tableidx = add i32 %257, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %258 = icmp ult i32 %switch.tableidx, 3
  br i1 %258, label %switch.lookup, label %sw.epilog.i.error_setup_crit_edge

sw.epilog.i.error_setup_crit_edge:                ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_setup

switch.lookup:                                    ; preds = %sw.epilog.i
  %switch.gep = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance, i32 0, i32 %switch.tableidx
  %259 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %259)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %switch.gep135 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.75, i32 0, i32 %switch.tableidx
  %260 = ptrtoint ptr %switch.gep135 to i32
  call void @__asan_load4_noabort(i32 %260)
  %switch.load136 = load ptr, ptr %switch.gep135, align 4
  %switch.gep137 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.76, i32 0, i32 %switch.tableidx
  %261 = ptrtoint ptr %switch.gep137 to i32
  call void @__asan_load4_noabort(i32 %261)
  %switch.load138 = load ptr, ptr %switch.gep137, align 4
  %switch.gep139 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.77, i32 0, i32 %switch.tableidx
  %262 = ptrtoint ptr %switch.gep139 to i32
  call void @__asan_load4_noabort(i32 %262)
  %switch.load140 = load ptr, ptr %switch.gep139, align 4
  %switch.gep141 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.78, i32 0, i32 %switch.tableidx
  %263 = ptrtoint ptr %switch.gep141 to i32
  call void @__asan_load4_noabort(i32 %263)
  %switch.load142 = load ptr, ptr %switch.gep141, align 4
  %switch.gep143 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.79, i32 0, i32 %switch.tableidx
  %264 = ptrtoint ptr %switch.gep143 to i32
  call void @__asan_load4_noabort(i32 %264)
  %switch.load144 = load ptr, ptr %switch.gep143, align 4
  %switch.gep145 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.80, i32 0, i32 %switch.tableidx
  %265 = ptrtoint ptr %switch.gep145 to i32
  call void @__asan_load4_noabort(i32 %265)
  %switch.load146 = load ptr, ptr %switch.gep145, align 4
  %switch.gep147 = getelementptr inbounds [3 x ptr], ptr @switch.table.setup_instance.81, i32 0, i32 %switch.tableidx
  %266 = ptrtoint ptr %switch.gep147 to i32
  call void @__asan_load4_noabort(i32 %266)
  %switch.load148 = load ptr, ptr %switch.gep147, align 4
  %read_reg692.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 5
  %267 = ptrtoint ptr %read_reg692.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store ptr %switch.load, ptr %read_reg692.i, align 8
  %write_reg695.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 6
  %268 = ptrtoint ptr %write_reg695.i to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %switch.load136, ptr %write_reg695.i, align 4
  %read_fifo698.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 7
  %269 = ptrtoint ptr %read_fifo698.i to i32
  call void @__asan_store4_noabort(i32 %269)
  store ptr %switch.load138, ptr %read_fifo698.i, align 8
  %write_fifo701.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 8
  %270 = ptrtoint ptr %write_fifo701.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store ptr %switch.load140, ptr %write_fifo701.i, align 4
  %read_reg706.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 7
  %271 = ptrtoint ptr %read_reg706.i to i32
  call void @__asan_store4_noabort(i32 %271)
  store ptr %switch.load142, ptr %read_reg706.i, align 4
  %write_reg708.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 8
  %272 = ptrtoint ptr %write_reg708.i to i32
  call void @__asan_store4_noabort(i32 %272)
  store ptr %switch.load144, ptr %write_reg708.i, align 8
  %read_fifo710.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 9
  %273 = ptrtoint ptr %read_fifo710.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store ptr %switch.load146, ptr %read_fifo710.i, align 4
  %write_fifo712.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 10
  %274 = ptrtoint ptr %write_fifo712.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %switch.load148, ptr %write_fifo712.i, align 8
  %call32 = tail call i32 @mISDNipac_init(ptr noundef %ipac, ptr noundef %card) #6
  %Bprotocols = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 0, i32 0, i32 3
  %275 = ptrtoint ptr %Bprotocols to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %call32, ptr %Bprotocols, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp40 = icmp eq i32 %call32, 0
  br i1 %cmp40, label %switch.lookup.error_setup_crit_edge, label %if.end43

switch.lookup.error_setup_crit_edge:              ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %error_setup

if.end43:                                         ; preds = %switch.lookup
  %pdev = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 1
  %276 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %pdev, align 8
  %dev48 = getelementptr inbounds %struct.pci_dev, ptr %277, i32 0, i32 44
  %call51 = tail call i32 @mISDN_register_device(ptr noundef %ipac, ptr noundef %dev48, ptr noundef %name) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %if.end43.error_crit_edge

if.end43.error_crit_edge:                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

if.end54:                                         ; preds = %if.end43
  %278 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load ptr, ptr %ci, align 4
  %irqfunc.i = getelementptr inbounds %struct.inf_cinfo, ptr %279, i32 0, i32 7
  %280 = ptrtoint ptr %irqfunc.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %irqfunc.i, align 4
  %tobool.not.i122 = icmp eq ptr %281, null
  br i1 %tobool.not.i122, label %if.end54.if.end63_crit_edge, label %if.end.i

if.end54.if.end63_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end63

if.end.i:                                         ; preds = %if.end54
  %irq.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 4
  %282 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load i32, ptr %irq.i, align 4
  %call.i.i124 = tail call i32 @request_threaded_irq(i32 noundef %283, ptr noundef nonnull %281, ptr noundef null, i32 noundef 128, ptr noundef %name, ptr noundef %card) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i124)
  %tobool3.not.i = icmp eq i32 %call.i.i124, 0
  br i1 %tobool3.not.i, label %while.cond.preheader.i, label %do.end.i125

while.cond.preheader.i:                           ; preds = %if.end.i
  %init.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 12
  %irqcnt.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 5
  %call15.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @reset_inf(ptr noundef %card) #6
  %284 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %init.i, align 8
  %call21.i = tail call i32 %285(ptr noundef %ipac) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %tobool22.not.i = icmp eq i32 %call21.i, 0
  br i1 %tobool22.not.i, label %if.end32.i, label %while.cond.preheader.i.if.then23.i_crit_edge

while.cond.preheader.i.if.then23.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

do.end.i125:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %286 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %irq.i, align 4
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.60, ptr noundef %name, i32 noundef %287) #9
  br label %if.end63

if.then23.i:                                      ; preds = %do.end51.1.i.if.then23.i_crit_edge, %do.end51.i.if.then23.i_crit_edge, %while.cond.preheader.i.if.then23.i_crit_edge
  %call15.lcssa.i = phi i32 [ %call15.i, %while.cond.preheader.i.if.then23.i_crit_edge ], [ %call15.1.i, %do.end51.i.if.then23.i_crit_edge ], [ %call15.2.i, %do.end51.1.i.if.then23.i_crit_edge ]
  %call21.lcssa.i = phi i32 [ %call21.i, %while.cond.preheader.i.if.then23.i_crit_edge ], [ %call21.1.i, %do.end51.i.if.then23.i_crit_edge ], [ %call21.2.i, %do.end51.1.i.if.then23.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15.lcssa.i) #6
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %name, i32 noundef %call21.lcssa.i) #9
  br label %while.end.i

if.end32.i:                                       ; preds = %while.cond.preheader.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15.i) #6
  %call34.i = tail call i32 @msleep_interruptible(i32 noundef 10) #6
  %288 = load i32, ptr @debug, align 4
  %and.i126 = and i32 %288, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i126)
  %tobool35.not.i = icmp eq i32 %and.i126, 0
  br i1 %tobool35.not.i, label %if.end32.i.if.end45.i_crit_edge, label %do.end39.i

if.end32.i.if.end45.i_crit_edge:                  ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.i

do.end39.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  %289 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %irq.i, align 4
  %291 = ptrtoint ptr %irqcnt.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %irqcnt.i, align 8
  %call44.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %290, i32 noundef %292) #9
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end39.i, %if.end32.i.if.end45.i_crit_edge
  %293 = ptrtoint ptr %irqcnt.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %irqcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %294)
  %tobool47.not.i = icmp eq i32 %294, 0
  br i1 %tobool47.not.i, label %do.end51.i, label %if.end45.i.if.then57_crit_edge

if.end45.i.if.then57_crit_edge:                   ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

do.end51.i:                                       ; preds = %if.end45.i
  %295 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load i32, ptr %irq.i, align 4
  %call56.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %296, i32 noundef 1) #9
  %call15.1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @reset_inf(ptr noundef %card) #6
  %297 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %init.i, align 8
  %call21.1.i = tail call i32 %298(ptr noundef %ipac) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.1.i)
  %tobool22.not.1.i = icmp eq i32 %call21.1.i, 0
  br i1 %tobool22.not.1.i, label %if.end32.1.i, label %do.end51.i.if.then23.i_crit_edge

do.end51.i.if.then23.i_crit_edge:                 ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

if.end32.1.i:                                     ; preds = %do.end51.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15.1.i) #6
  %call34.1.i = tail call i32 @msleep_interruptible(i32 noundef 10) #6
  %299 = load i32, ptr @debug, align 4
  %and.1.i = and i32 %299, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool35.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool35.not.1.i, label %if.end32.1.i.if.end45.1.i_crit_edge, label %do.end39.1.i

if.end32.1.i.if.end45.1.i_crit_edge:              ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.1.i

do.end39.1.i:                                     ; preds = %if.end32.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %300 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %irq.i, align 4
  %302 = ptrtoint ptr %irqcnt.i to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %irqcnt.i, align 8
  %call44.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %301, i32 noundef %303) #9
  br label %if.end45.1.i

if.end45.1.i:                                     ; preds = %do.end39.1.i, %if.end32.1.i.if.end45.1.i_crit_edge
  %304 = ptrtoint ptr %irqcnt.i to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %irqcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool47.not.1.i = icmp eq i32 %305, 0
  br i1 %tobool47.not.1.i, label %do.end51.1.i, label %if.end45.1.i.if.then57_crit_edge

if.end45.1.i.if.then57_crit_edge:                 ; preds = %if.end45.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

do.end51.1.i:                                     ; preds = %if.end45.1.i
  %306 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load i32, ptr %irq.i, align 4
  %call56.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %307, i32 noundef 2) #9
  %call15.2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  tail call fastcc void @reset_inf(ptr noundef %card) #6
  %308 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %init.i, align 8
  %call21.2.i = tail call i32 %309(ptr noundef %ipac) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.2.i)
  %tobool22.not.2.i = icmp eq i32 %call21.2.i, 0
  br i1 %tobool22.not.2.i, label %if.end32.2.i, label %do.end51.1.i.if.then23.i_crit_edge

do.end51.1.i.if.then23.i_crit_edge:               ; preds = %do.end51.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then23.i

if.end32.2.i:                                     ; preds = %do.end51.1.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call15.2.i) #6
  %call34.2.i = tail call i32 @msleep_interruptible(i32 noundef 10) #6
  %310 = load i32, ptr @debug, align 4
  %and.2.i = and i32 %310, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool35.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool35.not.2.i, label %if.end32.2.i.if.end45.2.i_crit_edge, label %do.end39.2.i

if.end32.2.i.if.end45.2.i_crit_edge:              ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45.2.i

do.end39.2.i:                                     ; preds = %if.end32.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %311 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %irq.i, align 4
  %313 = ptrtoint ptr %irqcnt.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %irqcnt.i, align 8
  %call44.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef %name, i32 noundef %312, i32 noundef %314) #9
  br label %if.end45.2.i

if.end45.2.i:                                     ; preds = %do.end39.2.i, %if.end32.2.i.if.end45.2.i_crit_edge
  %315 = ptrtoint ptr %irqcnt.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load i32, ptr %irqcnt.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %316)
  %tobool47.not.2.i = icmp eq i32 %316, 0
  br i1 %tobool47.not.2.i, label %do.end51.2.i, label %if.end45.2.i.if.then57_crit_edge

if.end45.2.i.if.then57_crit_edge:                 ; preds = %if.end45.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then57

do.end51.2.i:                                     ; preds = %if.end45.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %317 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load i32, ptr %irq.i, align 4
  %call56.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef %name, i32 noundef %318, i32 noundef 3) #9
  br label %while.end.i

while.end.i:                                      ; preds = %do.end51.2.i, %if.then23.i
  %319 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %irq.i, align 4
  %call59.i = tail call ptr @free_irq(i32 noundef %320, ptr noundef %card) #6
  br label %if.end63

if.then57:                                        ; preds = %if.end45.2.i.if.then57_crit_edge, %if.end45.1.i.if.then57_crit_edge, %if.end45.i.if.then57_crit_edge
  %321 = load i32, ptr @inf_cnt, align 4
  %inc = add i32 %321, 1
  store i32 %inc, ptr @inf_cnt, align 4
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %inc) #9
  br label %cleanup

if.end63:                                         ; preds = %while.end.i, %do.end.i125, %if.end54.if.end63_crit_edge
  %retval.0.i127 = phi i32 [ %call.i.i124, %do.end.i125 ], [ -5, %while.end.i ], [ -22, %if.end54.if.end63_crit_edge ]
  tail call void @mISDN_unregister_device(ptr noundef %ipac) #6
  br label %error

error:                                            ; preds = %if.end63, %if.end43.error_crit_edge
  %err.0 = phi i32 [ %call51, %if.end43.error_crit_edge ], [ %retval.0.i127, %if.end63 ]
  %release = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 11
  %322 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %release, align 4
  tail call void %323(ptr noundef %ipac) #6
  br label %error_setup

error_setup:                                      ; preds = %error, %switch.lookup.error_setup_crit_edge, %sw.epilog.i.error_setup_crit_edge, %if.end209.i.error_setup_crit_edge, %if.then178.i.error_setup_crit_edge, %do.end161.i, %if.then61.i.error_setup_crit_edge, %do.end.i
  %err.1 = phi i32 [ 0, %switch.lookup.error_setup_crit_edge ], [ %err.0, %error ], [ -22, %sw.epilog.i.error_setup_crit_edge ], [ -22, %if.end209.i.error_setup_crit_edge ], [ -12, %if.then178.i.error_setup_crit_edge ], [ -12, %if.then61.i.error_setup_crit_edge ], [ -16, %do.end161.i ], [ -16, %do.end.i ]
  tail call fastcc void @release_io(ptr noundef %card)
  %call76 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #6
  %call.i.i128 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %card) #6
  br i1 %call.i.i128, label %if.end.i.i129, label %error_setup.list_del.exit_crit_edge

error_setup.list_del.exit_crit_edge:              ; preds = %error_setup
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i129:                                    ; preds = %error_setup
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %324 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %prev.i.i, align 4
  %326 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %card, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %327, i32 0, i32 1
  %328 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %328)
  store ptr %325, ptr %prev1.i.i.i, align 4
  %329 = ptrtoint ptr %325 to i32
  call void @__asan_store4_noabort(i32 %329)
  store volatile ptr %327, ptr %325, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i129, %error_setup.list_del.exit_crit_edge
  %330 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %330)
  store ptr inttoptr (i32 256 to ptr), ptr %card, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %331 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call76) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.then57
  %retval.0 = phi i32 [ %err.1, %list_del.exit ], [ 0, %if.then57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_card(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 10
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %ci.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 2
  %0 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ci.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.82)
  switch i32 %3, label %entry.disable_hwirq.exit_crit_edge [
    i32 3, label %entry.do.body.i_crit_edge
    i32 4, label %entry.do.body.i_crit_edge58
    i32 5, label %entry.do.body2.i_crit_edge
    i32 6, label %entry.do.body2.i_crit_edge59
    i32 7, label %do.body8.i
    i32 8, label %do.body18.i
    i32 9, label %sw.bb27.i
    i32 10, label %sw.bb45.i
    i32 14, label %entry.do.body67.i_crit_edge
    i32 15, label %entry.do.body67.i_crit_edge60
  ]

entry.do.body67.i_crit_edge60:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67.i

entry.do.body67.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body67.i

entry.do.body2.i_crit_edge59:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i

entry.do.body2.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i

entry.do.body.i_crit_edge58:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.do.body.i_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

entry.disable_hwirq.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %disable_hwirq.exit

do.body.i:                                        ; preds = %entry.do.body.i_crit_edge, %entry.do.body.i_crit_edge58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %p.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 3
  %5 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %p.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #6, !srcloc !192
  br label %disable_hwirq.exit

do.body2.i:                                       ; preds = %entry.do.body2.i_crit_edge, %entry.do.body2.i_crit_edge59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %start.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %7 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start.i, align 4
  %add.i = add i32 %8, 5
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %9 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #6, !srcloc !188
  br label %disable_hwirq.exit

do.body8.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  tail call void @arm_heavy_mb() #6
  %start12.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %10 = ptrtoint ptr %start12.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %start12.i, align 4
  %add13.i = add i32 %11, 76
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %12 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %12, i8 1) #6, !srcloc !188
  br label %disable_hwirq.exit

do.body18.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  tail call void @arm_heavy_mb() #6
  %start22.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %13 = ptrtoint ptr %start22.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %start22.i, align 4
  %add23.i = add i32 %14, 76
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %15 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 3) #6, !srcloc !188
  br label %disable_hwirq.exit

sw.bb27.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %start29.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %16 = ptrtoint ptr %start29.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start29.i, align 4
  %add30.i = add i32 %17, 56
  %and31.i = and i32 %add30.i, 1048575
  %add32.i = or i32 %and31.i, -18874368
  %18 = inttoptr i32 %add32.i to ptr
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %18) #6, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  %and35.i = and i32 %19, 65280
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %start29.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %start29.i, align 4
  %add41.i = add i32 %21, 56
  %and42.i = and i32 %add41.i, 1048575
  %add43.i = or i32 %and42.i, -18874368
  %22 = inttoptr i32 %add43.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %22, i32 %and35.i) #6, !srcloc !192
  br label %disable_hwirq.exit

sw.bb45.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %start48.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %23 = ptrtoint ptr %start48.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start48.i, align 4
  %add49.i = add i32 %24, 76
  %and50.i = and i32 %add49.i, 1048575
  %add51.i = or i32 %and50.i, -18874368
  %25 = inttoptr i32 %add51.i to ptr
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %25) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  %27 = and i16 %26, -16641
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %start48.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %start48.i, align 4
  %add62.i = add i32 %29, 76
  %and63.i = and i32 %add62.i, 1048575
  %add64.i = or i32 %and63.i, -18874368
  %30 = inttoptr i32 %add64.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %30, i16 %27) #6, !srcloc !202
  br label %disable_hwirq.exit

do.body67.i:                                      ; preds = %entry.do.body67.i_crit_edge, %entry.do.body67.i_crit_edge60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  tail call void @arm_heavy_mb() #6
  %start71.i = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 6, i32 2
  %31 = ptrtoint ptr %start71.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %start71.i, align 4
  %add72.i = add i32 %32, 76
  %and73.i = and i32 %add72.i, 1048575
  %add74.i = or i32 %and73.i, -18874368
  %33 = inttoptr i32 %add74.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 0) #6, !srcloc !188
  br label %disable_hwirq.exit

disable_hwirq.exit:                               ; preds = %do.body67.i, %sw.bb45.i, %sw.bb27.i, %do.body18.i, %do.body8.i, %do.body2.i, %do.body.i, %entry.disable_hwirq.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #6
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11
  %release = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 11, i32 0, i32 10
  %34 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %release, align 4
  tail call void %35(ptr noundef %ipac) #6
  %irq = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 4
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %call8 = tail call ptr @free_irq(i32 noundef %37, ptr noundef %card) #6
  tail call void @mISDN_unregister_device(ptr noundef %ipac) #6
  tail call fastcc void @release_io(ptr noundef %card)
  %call17 = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %card) #6
  br i1 %call.i.i, label %if.end.i.i, label %disable_hwirq.exit.list_del.exit_crit_edge

disable_hwirq.exit.list_del.exit_crit_edge:       ; preds = %disable_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %disable_hwirq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %card, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %disable_hwirq.exit.list_del.exit_crit_edge
  %44 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 256 to ptr), ptr %card, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %card, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call17) #6
  %46 = ptrtoint ptr %ci.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ci.i, align 4
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %47, align 4
  %50 = zext i32 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %50, ptr @__sancov_gen_cov_switch_values.83)
  switch i32 %49, label %list_del.exit.sw.default_crit_edge [
    i32 11, label %list_del.exit.sw.epilog_crit_edge
    i32 12, label %list_del.exit.sw.epilog_crit_edge61
    i32 13, label %list_del.exit.sw.epilog_crit_edge62
    i32 10, label %for.body.preheader
  ]

list_del.exit.sw.epilog_crit_edge62:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

list_del.exit.sw.epilog_crit_edge61:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

list_del.exit.sw.epilog_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

list_del.exit.sw.default_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

for.body.preheader:                               ; preds = %list_del.exit
  %arrayidx = getelementptr %struct.inf_hw, ptr %card, i32 0, i32 12, i32 0
  %51 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %52, null
  br i1 %tobool.not, label %for.body.preheader.if.end_crit_edge, label %if.then

for.body.preheader.if.end_crit_edge:              ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @release_card(ptr noundef nonnull %52)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.preheader.if.end_crit_edge
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr null, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.inf_hw, ptr %card, i32 0, i32 12, i32 1
  %54 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %55, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @release_card(ptr noundef nonnull %55)
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %56 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.inf_hw, ptr %card, i32 0, i32 12, i32 2
  %57 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %58, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @release_card(ptr noundef nonnull %58)
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %59 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %arrayidx.2, align 4
  br label %sw.default

sw.default:                                       ; preds = %if.end.2, %list_del.exit.sw.default_crit_edge
  %pdev = getelementptr inbounds %struct.inf_hw, ptr %card, i32 0, i32 1
  %60 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pdev, align 8
  tail call void @pci_disable_device(ptr noundef %61) #6
  %62 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %pdev, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %63, i32 0, i32 44, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %list_del.exit.sw.epilog_crit_edge, %list_del.exit.sw.epilog_crit_edge61, %list_del.exit.sw.epilog_crit_edge62
  tail call void @kfree(ptr noundef %card) #6
  %65 = load i32, ptr @inf_cnt, align 4
  %dec = add i32 %65, -1
  store i32 %dec, ptr @inf_cnt, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diva_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %start = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %add = add i32 %1, 16
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %4 = and i8 %3, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqcnt = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 5
  %5 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %irqcnt, align 8
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %7 = load i32, ptr @irqloops, align 4
  %call5 = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @diva20x_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %p = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  %3 = and i8 %2, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqcnt = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 5
  %4 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %irqcnt, align 8
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %6 = load i32, ptr @irqloops, align 4
  %call3 = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %6) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %8, i8 2) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tiger_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %start = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %add = add i32 %1, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  %4 = and i8 %3, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqcnt = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 5
  %5 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %irqcnt, align 8
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %7 = load i32, ptr @irqloops, align 4
  %call5 = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @elsa_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %start = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %add = add i32 %1, 76
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  %4 = and i8 %3, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %irqcnt = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 5
  %5 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %6, 1
  store i32 %inc, ptr %irqcnt, align 8
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %7 = load i32, ptr @irqloops, align 4
  %call5 = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %7) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @niccy_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %start = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 6, i32 2
  %0 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %start, align 4
  %add = add i32 %1, 56
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %2) #6, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  %4 = and i32 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %5 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %start, align 4
  %add7 = add i32 %6, 56
  %and8 = and i32 %add7, 1048575
  %add9 = or i32 %and8, -18874368
  %7 = inttoptr i32 %add9 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %7, i32 %3) #6, !srcloc !192
  %irqcnt = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 5
  %8 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %9, 1
  store i32 %inc, ptr %irqcnt, align 8
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %10 = load i32, ptr @irqloops, align 4
  %call11 = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.body ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipac_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %read_reg = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11, i32 7
  %0 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %read_reg, align 4
  %call = tail call zeroext i8 %1(ptr noundef %dev_id, i8 noundef zeroext -63) #6
  %2 = and i8 %call, 63
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %irqcnt = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 5
  %3 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %irqcnt, align 8
  %inc = add i32 %4, 1
  store i32 %inc, ptr %irqcnt, align 8
  %5 = load i32, ptr @irqloops, align 4
  %call3 = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gazel_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 10
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %ipac = getelementptr inbounds %struct.inf_hw, ptr %dev_id, i32 0, i32 11
  %0 = load i32, ptr @irqloops, align 4
  %call = tail call i32 @mISDNipac_irq(ptr noundef %ipac, i32 noundef %0) #6
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNipac_irq(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @inf_ctrl(ptr noundef %hw, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 35330, i32 %cmd)
  %cond = icmp eq i32 %cmd, 35330
  br i1 %cond, label %sw.bb, label %do.end

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @reset_inf(ptr noundef %hw)
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, ptr noundef %name, ptr noundef nonnull @.str.46, i32 noundef %cmd, i32 noundef %arg) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb
  %ret.0 = phi i32 [ 0, %sw.bb ], [ -22, %do.end ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNipac_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_io(ptr nocapture noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %1, label %if.else [
    i32 0, label %entry.if.end18_crit_edge
    i32 2, label %if.then3
  ]

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.then3:                                         ; preds = %entry
  %start = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %3 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %start, align 4
  %size = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %size, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %4, i32 noundef %6) #6
  %p = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 3
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %tobool7.not = icmp eq ptr %8, null
  br i1 %tobool7.not, label %if.then3.if.end15_crit_edge, label %if.then8

if.then3.if.end15_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end15

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %8) #6
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %start12 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %start12 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %start12, align 4
  %size14 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 1
  %11 = ptrtoint ptr %size14 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %size14, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %10, i32 noundef %12) #6
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then8, %if.then3.if.end15_crit_edge
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %cfg, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end15, %entry.if.end18_crit_edge
  %addr = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 7
  %14 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %addr, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.85)
  switch i32 %15, label %if.else37 [
    i32 0, label %if.end18.if.end45_crit_edge
    i32 2, label %if.then25
  ]

if.end18.if.end45_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then25:                                        ; preds = %if.end18
  %start27 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 7, i32 2
  %17 = ptrtoint ptr %start27 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %start27, align 4
  %size29 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 7, i32 1
  %19 = ptrtoint ptr %size29 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %size29, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %18, i32 noundef %20) #6
  %p31 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 7, i32 3
  %21 = ptrtoint ptr %p31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %p31, align 4
  %tobool32.not = icmp eq ptr %22, null
  br i1 %tobool32.not, label %if.then25.if.end42_crit_edge, label %if.then33

if.then25.if.end42_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end42

if.then33:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @iounmap(ptr noundef nonnull %22) #6
  br label %if.end42

if.else37:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %start39 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 7, i32 2
  %23 = ptrtoint ptr %start39 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %start39, align 4
  %size41 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %size41 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %size41, align 4
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %24, i32 noundef %26) #6
  br label %if.end42

if.end42:                                         ; preds = %if.else37, %if.then33, %if.then25.if.end42_crit_edge
  %27 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %addr, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end42, %if.end18.if.end45_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_inf(ptr noundef %hw) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  %and = and i32 %0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %name = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 3
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef %name) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %ci = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 2
  %1 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ci, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.86)
  switch i32 %4, label %if.end.cleanup_crit_edge [
    i32 1, label %if.end.do.body1_crit_edge
    i32 2, label %if.end.do.body1_crit_edge308
    i32 3, label %do.body42
    i32 4, label %do.body59
    i32 5, label %if.end.sw.bb77_crit_edge
    i32 6, label %if.end.sw.bb77_crit_edge309
    i32 7, label %if.end.sw.bb82_crit_edge
    i32 8, label %if.end.sw.bb82_crit_edge310
    i32 9, label %if.end.sw.epilog_crit_edge
    i32 10, label %sw.bb89
    i32 14, label %sw.bb141
    i32 15, label %sw.bb189
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.sw.bb82_crit_edge310:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb82

if.end.sw.bb82_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb82

if.end.sw.bb77_crit_edge309:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

if.end.sw.bb77_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb77

if.end.do.body1_crit_edge308:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

if.end.do.body1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body1

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body1:                                         ; preds = %if.end.do.body1_crit_edge, %if.end.do.body1_crit_edge308
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %start = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %6 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %start, align 4
  %add = add i32 %7, 16
  %and4 = and i32 %add, 1048575
  %add5 = or i32 %and4, -18874368
  %8 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 0) #6, !srcloc !188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %11(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %19 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %start, align 4
  %add13 = add i32 %20, 16
  %and14 = and i32 %add13, 1048575
  %add15 = or i32 %and14, -18874368
  %21 = inttoptr i32 %add15 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 8) #6, !srcloc !188
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %start, align 4
  %add28 = add i32 %33, 105
  %and29 = and i32 %add28, 1048575
  %add30 = or i32 %and29, -18874368
  %34 = inttoptr i32 %add30 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 9) #6, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %35 = ptrtoint ptr %start to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %start, align 4
  %add37 = add i32 %36, 16
  %and38 = and i32 %add37, 1048575
  %add39 = or i32 %and38, -18874368
  %37 = inttoptr i32 %add39 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 24) #6, !srcloc !188
  br label %sw.epilog

do.body42:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  tail call void @arm_heavy_mb() #6
  %p = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 3
  %38 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %p, align 4
  %add.ptr = getelementptr i8, ptr %39, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 5) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %41 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %p, align 4
  %add.ptr51 = getelementptr i8, ptr %42, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr51, i32 4) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %43 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %43(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %45 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %45(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %46(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 214748000) #6
  br label %sw.epilog

do.body59:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  tail call void @arm_heavy_mb() #6
  %p63 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 3
  %53 = ptrtoint ptr %p63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %p63, align 4
  %add.ptr64 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr64, i32 5) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %55(i32 noundef 214748000) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %56 = ptrtoint ptr %p63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %p63, align 4
  %add.ptr70 = getelementptr i8, ptr %57, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 6) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %60(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %61(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %62(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %63 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %63(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %64 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %64(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %66(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %67 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %67(i32 noundef 214748000) #6
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end.sw.bb77_crit_edge, %if.end.sw.bb77_crit_edge309
  %write_reg.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 8
  %68 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write_reg.i, align 8
  tail call void %69(ptr noundef %hw, i8 noundef zeroext -55, i8 noundef zeroext 32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %70 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %70(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %71(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %72(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %73 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %73(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %74(i32 noundef 214748000) #6
  %75 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %write_reg.i, align 8
  tail call void %76(ptr noundef %hw, i8 noundef zeroext -55, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %77 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %77(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %78 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %78(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %79(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %80(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %81(i32 noundef 214748000) #6
  %82 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %write_reg.i, align 8
  %conf.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 14
  %84 = ptrtoint ptr %conf.i to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %conf.i, align 8
  tail call void %83(ptr noundef %hw, i8 noundef zeroext -64, i8 noundef zeroext %85) #6
  %86 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %write_reg.i, align 8
  tail call void %87(ptr noundef %hw, i8 noundef zeroext -63, i8 noundef zeroext -64) #6
  %88 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %write_reg.i, align 8
  tail call void %89(ptr noundef %hw, i8 noundef zeroext -61, i8 noundef zeroext -1) #6
  %90 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write_reg.i, align 8
  tail call void %91(ptr noundef %hw, i8 noundef zeroext -60, i8 noundef zeroext 0) #6
  %92 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %write_reg.i, align 8
  tail call void %93(ptr noundef %hw, i8 noundef zeroext -54, i8 noundef zeroext 18) #6
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end.sw.bb82_crit_edge, %if.end.sw.bb82_crit_edge310
  %write_reg.i290 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 8
  %94 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %write_reg.i290, align 8
  tail call void %95(ptr noundef %hw, i8 noundef zeroext -55, i8 noundef zeroext 32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %96(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %97 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %97(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %98 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %98(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %99(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %100(i32 noundef 214748000) #6
  %101 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write_reg.i290, align 8
  tail call void %102(ptr noundef %hw, i8 noundef zeroext -55, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %103 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %103(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %104(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %105(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %106(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %107(i32 noundef 214748000) #6
  %108 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %write_reg.i290, align 8
  %conf.i291 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 14
  %110 = ptrtoint ptr %conf.i291 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %conf.i291, align 8
  tail call void %109(ptr noundef %hw, i8 noundef zeroext -64, i8 noundef zeroext %111) #6
  %112 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %write_reg.i290, align 8
  tail call void %113(ptr noundef %hw, i8 noundef zeroext -63, i8 noundef zeroext -64) #6
  %114 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %write_reg.i290, align 8
  tail call void %115(ptr noundef %hw, i8 noundef zeroext -61, i8 noundef zeroext 0) #6
  %116 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write_reg.i290, align 8
  tail call void %117(ptr noundef %hw, i8 noundef zeroext -60, i8 noundef zeroext 60) #6
  %118 = ptrtoint ptr %write_reg.i290 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %write_reg.i290, align 8
  tail call void %119(ptr noundef %hw, i8 noundef zeroext -59, i8 noundef zeroext -1) #6
  br label %sw.epilog

sw.bb89:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %start91 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %120 = ptrtoint ptr %start91 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %start91, align 4
  %add92 = add i32 %121, 80
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %122 = inttoptr i32 %add94 to ptr
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %122) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  %124 = and i16 %123, -1025
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %125 = ptrtoint ptr %start91 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %start91, align 4
  %add105 = add i32 %126, 80
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %127 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %127, i16 %124) #6, !srcloc !202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %128(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %129 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %129(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %130(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %131 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %131(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %132(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %133 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %133(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %134(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %135(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %136(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %137(i32 noundef 214748000) #6
  %138 = ptrtoint ptr %start91 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %start91, align 4
  %add118 = add i32 %139, 80
  %and119 = and i32 %add118, 1048575
  %add120 = or i32 %and119, -18874368
  %140 = inttoptr i32 %add120 to ptr
  %141 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %140) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  %142 = or i16 %141, 1024
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  tail call void @arm_heavy_mb() #6
  %143 = ptrtoint ptr %start91 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %start91, align 4
  %add131 = add i32 %144, 80
  %and132 = and i32 %add131, 1048575
  %add133 = or i32 %and132, -18874368
  %145 = inttoptr i32 %add133 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %145, i16 %142) #6, !srcloc !202
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %146(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %147(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %148 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %148(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %149(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %150 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %150(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %151 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %151(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %152(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %153(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %154(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %155 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %155(i32 noundef 214748000) #6
  br label %sw.epilog

sw.bb141:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %start144 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %156 = ptrtoint ptr %start144 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %start144, align 4
  %add145 = add i32 %157, 80
  %and146 = and i32 %add145, 1048575
  %add147 = or i32 %and146, -18874368
  %158 = inttoptr i32 %add147 to ptr
  %159 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %158) #6, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  %160 = or i32 %159, 67108928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %start144 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %start144, align 4
  %add157 = add i32 %162, 80
  %and158 = and i32 %add157, 1048575
  %add159 = or i32 %and158, -18874368
  %163 = inttoptr i32 %add159 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %163, i32 %160) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %164(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %165 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %165(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %166(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %167(i32 noundef 214748000) #6
  %168 = and i32 %159, -67108929
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %169 = ptrtoint ptr %start144 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %start144, align 4
  %add173 = add i32 %170, 80
  %and174 = and i32 %add173, 1048575
  %add175 = or i32 %and174, -18874368
  %171 = inttoptr i32 %add175 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %171, i32 %168) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %172 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %172(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %173(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %174 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %174(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %175(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %176 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %176(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %177(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %178 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %178(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %179 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %179(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %180(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %181 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %181(i32 noundef 214748000) #6
  %adf2 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 0, i32 25
  %182 = ptrtoint ptr %adf2 to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 -121, ptr %adf2, align 1
  %slot = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 1, i32 0, i32 4
  %183 = ptrtoint ptr %slot to i32
  call void @__asan_store1_noabort(i32 %183)
  store i8 31, ptr %slot, align 2
  %slot188 = getelementptr %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 1, i32 1, i32 4
  %184 = ptrtoint ptr %slot188 to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 35, ptr %slot188, align 2
  br label %sw.epilog

sw.bb189:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %start192 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %185 = ptrtoint ptr %start192 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %start192, align 4
  %add193 = add i32 %186, 80
  %and194 = and i32 %add193, 1048575
  %add195 = or i32 %and194, -18874368
  %187 = inttoptr i32 %add195 to ptr
  %188 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %187) #6, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  %189 = or i32 %188, 67108928
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %190 = ptrtoint ptr %start192 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %start192, align 4
  %add205 = add i32 %191, 80
  %and206 = and i32 %add205, 1048575
  %add207 = or i32 %and206, -18874368
  %192 = inttoptr i32 %add207 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %192, i32 %189) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %193 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %193(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %194 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %194(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %195 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %195(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %196 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %196(i32 noundef 214748000) #6
  %197 = and i32 %188, -67108929
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %198 = ptrtoint ptr %start192 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %start192, align 4
  %add221 = add i32 %199, 80
  %and222 = and i32 %add221, 1048575
  %add223 = or i32 %and222, -18874368
  %200 = inttoptr i32 %add223 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %200, i32 %197) #6, !srcloc !192
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %201 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %201(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %202 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %202(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %203 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %203(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %204(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %205 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %205(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %206 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %206(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %207(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %208 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %208(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %209 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %209(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %210 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %210(i32 noundef 214748000) #6
  %write_reg.i292 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 8
  %211 = ptrtoint ptr %write_reg.i292 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %write_reg.i292, align 8
  tail call void %212(ptr noundef %hw, i8 noundef zeroext -55, i8 noundef zeroext 32) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %213(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %214(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %215 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %215(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %216 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %216(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %217 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %217(i32 noundef 214748000) #6
  %218 = ptrtoint ptr %write_reg.i292 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %write_reg.i292, align 8
  tail call void %219(ptr noundef %hw, i8 noundef zeroext -55, i8 noundef zeroext 0) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %220(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %221 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %221(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %222(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %223 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %223(i32 noundef 214748000) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %224 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %224(i32 noundef 214748000) #6
  %225 = ptrtoint ptr %write_reg.i292 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %write_reg.i292, align 8
  %conf.i293 = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 11, i32 14
  %227 = ptrtoint ptr %conf.i293 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %conf.i293, align 8
  tail call void %226(ptr noundef %hw, i8 noundef zeroext -64, i8 noundef zeroext %228) #6
  %229 = ptrtoint ptr %write_reg.i292 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %write_reg.i292, align 8
  tail call void %230(ptr noundef %hw, i8 noundef zeroext -63, i8 noundef zeroext -64) #6
  %231 = ptrtoint ptr %write_reg.i292 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %write_reg.i292, align 8
  tail call void %232(ptr noundef %hw, i8 noundef zeroext -61, i8 noundef zeroext -1) #6
  %233 = ptrtoint ptr %write_reg.i292 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %write_reg.i292, align 8
  tail call void %234(ptr noundef %hw, i8 noundef zeroext -60, i8 noundef zeroext 0) #6
  %235 = ptrtoint ptr %conf.i293 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 1, ptr %conf.i293, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb189, %sw.bb141, %sw.bb89, %sw.bb82, %sw.bb77, %do.body59, %do.body42, %do.body1, %if.end.sw.epilog_crit_edge
  %236 = ptrtoint ptr %ci to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %ci, align 4
  %238 = ptrtoint ptr %237 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %237, align 4
  %240 = zext i32 %239 to i64
  call void @__sanitizer_cov_trace_switch(i64 %240, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %239, label %sw.epilog.cleanup_crit_edge [
    i32 3, label %sw.epilog.do.body.i_crit_edge
    i32 4, label %sw.epilog.do.body.i_crit_edge311
    i32 5, label %sw.epilog.do.body2.i_crit_edge
    i32 6, label %sw.epilog.do.body2.i_crit_edge312
    i32 7, label %do.body8.i
    i32 8, label %do.body18.i
    i32 9, label %sw.bb27.i
    i32 10, label %sw.bb44.i
    i32 14, label %do.body66.i
    i32 15, label %do.body76.i
  ]

sw.epilog.do.body2.i_crit_edge312:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i

sw.epilog.do.body2.i_crit_edge:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body2.i

sw.epilog.do.body.i_crit_edge311:                 ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.epilog.do.body.i_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i:                                        ; preds = %sw.epilog.do.body.i_crit_edge, %sw.epilog.do.body.i_crit_edge311
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void @arm_heavy_mb() #6
  %p.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 3
  %241 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %p.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %242, i32 512) #6, !srcloc !192
  br label %cleanup

do.body2.i:                                       ; preds = %sw.epilog.do.body2.i_crit_edge, %sw.epilog.do.body2.i_crit_edge312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %start.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %243 = ptrtoint ptr %start.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %start.i, align 4
  %add.i = add i32 %244, 5
  %and.i = and i32 %add.i, 1048575
  %add6.i = or i32 %and.i, -18874368
  %245 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %245, i8 2) #6, !srcloc !188
  br label %cleanup

do.body8.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %start12.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %246 = ptrtoint ptr %start12.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %start12.i, align 4
  %add13.i = add i32 %247, 76
  %and14.i = and i32 %add13.i, 1048575
  %add15.i = or i32 %and14.i, -18874368
  %248 = inttoptr i32 %add15.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %248, i8 65) #6, !srcloc !188
  br label %cleanup

do.body18.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  tail call void @arm_heavy_mb() #6
  %start22.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %249 = ptrtoint ptr %start22.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %start22.i, align 4
  %add23.i = add i32 %250, 76
  %and24.i = and i32 %add23.i, 1048575
  %add25.i = or i32 %and24.i, -18874368
  %251 = inttoptr i32 %add25.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %251, i8 67) #6, !srcloc !188
  br label %cleanup

sw.bb27.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %start29.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %252 = ptrtoint ptr %start29.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %start29.i, align 4
  %add30.i = add i32 %253, 56
  %and31.i = and i32 %add30.i, 1048575
  %add32.i = or i32 %and31.i, -18874368
  %254 = inttoptr i32 %add32.i to ptr
  %255 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %254) #6, !srcloc !196
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  %256 = or i32 %255, 2031616
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  tail call void @arm_heavy_mb() #6
  %257 = ptrtoint ptr %start29.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %start29.i, align 4
  %add40.i = add i32 %258, 56
  %and41.i = and i32 %add40.i, 1048575
  %add42.i = or i32 %and41.i, -18874368
  %259 = inttoptr i32 %add42.i to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %259, i32 %256) #6, !srcloc !192
  br label %cleanup

sw.bb44.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %start47.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %260 = ptrtoint ptr %start47.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %start47.i, align 4
  %add48.i = add i32 %261, 76
  %and49.i = and i32 %add48.i, 1048575
  %add50.i = or i32 %and49.i, -18874368
  %262 = inttoptr i32 %add50.i to ptr
  %263 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %262) #6, !srcloc !199
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  %264 = or i16 %263, 16640
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  tail call void @arm_heavy_mb() #6
  %265 = ptrtoint ptr %start47.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %start47.i, align 4
  %add61.i = add i32 %266, 76
  %and62.i = and i32 %add61.i, 1048575
  %add63.i = or i32 %and62.i, -18874368
  %267 = inttoptr i32 %add63.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %267, i16 %264) #6, !srcloc !202
  br label %cleanup

do.body66.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %start70.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %268 = ptrtoint ptr %start70.i to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load i32, ptr %start70.i, align 4
  %add71.i = add i32 %269, 76
  %and72.i = and i32 %add71.i, 1048575
  %add73.i = or i32 %and72.i, -18874368
  %270 = inttoptr i32 %add73.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %270, i8 73) #6, !srcloc !188
  br label %cleanup

do.body76.i:                                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %start80.i = getelementptr inbounds %struct.inf_hw, ptr %hw, i32 0, i32 6, i32 2
  %271 = ptrtoint ptr %start80.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %start80.i, align 4
  %add81.i = add i32 %272, 76
  %and82.i = and i32 %add81.i, 1048575
  %add83.i = or i32 %and82.i, -18874368
  %273 = inttoptr i32 %add83.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %273, i8 67) #6, !srcloc !188
  br label %cleanup

cleanup:                                          ; preds = %do.body76.i, %do.body66.i, %sw.bb44.i, %sw.bb27.i, %do.body18.i, %do.body8.i, %do.body2.i, %do.body.i, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr nocapture noundef writeonly %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not2 = icmp eq i32 %size, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %conv = zext i8 %off to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dp.addr.04 = phi ptr [ %dp, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %size.addr.03 = phi i32 [ %size, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %size.addr.03, -1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  %incdec.ptr = getelementptr i8, ptr %dp.addr.04, i32 1
  %3 = ptrtoint ptr %dp.addr.04 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %dp.addr.04, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr nocapture noundef readonly %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not1 = icmp eq i32 %size, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %conv = zext i8 %off to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %size.addr.03 = phi i32 [ %size, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %dp.addr.02 = phi ptr [ %dp, %do.body.lr.ph ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %dec = add i32 %size.addr.03, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %incdec.ptr = getelementptr i8, ptr %dp.addr.02, i32 1
  %0 = ptrtoint ptr %dp.addr.02 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp.addr.02, align 1
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 %conv
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %1) #6, !srcloc !188
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.while.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadIPAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  ret i8 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteIPAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %val) #6, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoIPAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr nocapture noundef writeonly %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not2 = icmp eq i32 %size, 0
  br i1 %tobool.not2, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %conv = zext i8 %off to i32
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %dp.addr.04 = phi ptr [ %dp, %while.body.lr.ph ], [ %incdec.ptr, %while.body.while.body_crit_edge ]
  %size.addr.03 = phi i32 [ %size, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %size.addr.03, -1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 4
  %add.ptr = getelementptr i32, ptr %1, i32 %conv
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  %incdec.ptr = getelementptr i8, ptr %dp.addr.04, i32 1
  %3 = ptrtoint ptr %dp.addr.04 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %2, ptr %dp.addr.04, align 1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoIPAC_MIO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr nocapture noundef readonly %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %tobool.not1 = icmp eq i32 %size, 0
  br i1 %tobool.not1, label %entry.while.end_crit_edge, label %do.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

do.body.lr.ph:                                    ; preds = %entry
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %conv = zext i8 %off to i32
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %size.addr.03 = phi i32 [ %size, %do.body.lr.ph ], [ %dec, %do.body.do.body_crit_edge ]
  %dp.addr.02 = phi ptr [ %dp, %do.body.lr.ph ], [ %incdec.ptr, %do.body.do.body_crit_edge ]
  %dec = add i32 %size.addr.03, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void @arm_heavy_mb() #6
  %incdec.ptr = getelementptr i8, ptr %dp.addr.02, i32 1
  %0 = ptrtoint ptr %dp.addr.02 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dp.addr.02, align 1
  %2 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %a, align 4
  %add.ptr = getelementptr i32, ptr %3, i32 %conv
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %1) #6, !srcloc !188
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.body.while.end_crit_edge, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body.while.end_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %do.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and3 = and i32 %4, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and6 = and i32 %4, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %val) #6, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and3 = and i32 %4, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and3 = and i32 %4, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadIPAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and3 = and i32 %4, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteIPAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @arm_heavy_mb() #6
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and6 = and i32 %4, 1048575
  %add7 = or i32 %and6, -18874368
  %5 = inttoptr i32 %add7 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %val) #6, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoIPAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and3 = and i32 %4, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoIPAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !259
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %ale = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #6, !srcloc !188
  %3 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %a, align 4
  %and3 = and i32 %4, 1048575
  %add4 = or i32 %and3, -18874368
  %5 = inttoptr i32 %add4 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !260
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !261
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %val) #6, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %2, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 8, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %2, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadIPAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %2) #6, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !262
  ret i8 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteIPAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !263
  tail call void @arm_heavy_mb() #6
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %val) #6, !srcloc !188
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoIPAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %2, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoIPAC_IO(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %a = getelementptr inbounds %struct.inf_hw, ptr %p, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %a, align 4
  %conv = zext i8 %off to i32
  %add = add i32 %1, %conv
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %2, ptr noundef %dp, i32 noundef %size) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 92)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !18, !20, !22, !24, !26, !27, !28, !30, !31, !33, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !117, !119, !120, !121, !122, !124, !126, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176}
!llvm.module.flags = !{!177, !178, !179, !180, !181, !182, !183, !184}
!llvm.ident = !{!185}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 247, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 248, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version462, !6, !"__UNIQUE_ID_version462", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 249, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__param_debug, !12, !"__param_debug", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 250, i32 1}
!13 = !{ptr @__UNIQUE_ID_debug463, !14, !"__UNIQUE_ID_debug463", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 251, i32 1}
!15 = !{ptr @__param_irqloops, !16, !"__param_irqloops", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 252, i32 1}
!17 = !{ptr @__UNIQUE_ID_irqloopstype464, !16, !"__UNIQUE_ID_irqloopstype464", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_irqloops465, !19, !"__UNIQUE_ID_irqloops465", i1 false, i1 false}
!19 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 253, i32 1}
!20 = !{ptr @__initcall__kmod_mISDNinfineon__467_1166_infineon_init6, !21, !"__initcall__kmod_mISDNinfineon__467_1166_infineon_init6", i1 false, i1 false}
!21 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1166, i32 1}
!22 = !{ptr @__exitcall_infineon_cleanup, !23, !"__exitcall_infineon_cleanup", i1 false, i1 false}
!23 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1167, i32 1}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 37, i32 12}
!26 = !{ptr @__param_str_debug, !12, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @__param_ops_debug, !12, !"__param_ops_debug", i1 false, i1 false}
!28 = !{ptr @.str.3, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 221, i32 8}
!30 = !{ptr @card_lock, !29, !"card_lock", i1 false, i1 false}
!31 = !{ptr @Cards, !32, !"Cards", i1 false, i1 false}
!32 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 220, i32 8}
!33 = !{ptr @__param_str_irqloops, !16, !"__param_str_irqloops", i1 false, i1 false}
!34 = !{ptr @irqloops, !35, !"irqloops", i1 false, i1 false}
!35 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 38, i32 12}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1144, i32 10}
!38 = !{ptr @infineon_driver, !39, !"infineon_driver", i1 false, i1 false}
!39 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1143, i32 26}
!40 = !{ptr @infineon_ids, !41, !"infineon_ids", i1 false, i1 false}
!41 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 113, i32 29}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1078, i32 3}
!44 = !{ptr @.str.6, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.7, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @inf_probe._entry, !43, !"_entry", i1 false, i1 false}
!47 = !{ptr @inf_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1089, i32 3}
!50 = !{ptr @inf_probe._entry.8, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @inf_probe._entry_ptr.10, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1095, i32 3}
!54 = !{ptr @inf_probe._entry.11, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @inf_probe._entry_ptr.13, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 949, i32 3}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 950, i32 3}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 956, i32 3}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 957, i32 3}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 963, i32 3}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 964, i32 3}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 970, i32 3}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 971, i32 3}
!72 = !{ptr @.str.22, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 977, i32 3}
!74 = !{ptr @.str.23, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 978, i32 3}
!76 = !{ptr @.str.24, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 984, i32 3}
!78 = !{ptr @.str.25, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 985, i32 3}
!80 = !{ptr @.str.26, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 991, i32 3}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 992, i32 3}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 998, i32 3}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 999, i32 3}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1005, i32 3}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1006, i32 3}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1012, i32 3}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1013, i32 3}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1020, i32 3}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1027, i32 3}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1034, i32 3}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1040, i32 3}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1041, i32 3}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1047, i32 3}
!108 = !{ptr @.str.40, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1048, i32 3}
!110 = !{ptr @inf_card_info, !111, !"inf_card_info", i1 false, i1 false}
!111 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 946, i32 31}
!112 = !{ptr @.str.41, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 899, i32 44}
!114 = !{ptr @setup_instance.__key, !115, !"__key", i1 false, i1 false}
!115 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 909, i32 2}
!116 = !{ptr @.str.42, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @.str.43, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 932, i32 3}
!119 = !{ptr @.str.44, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @setup_instance._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @setup_instance._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @inf_cnt, !123, !"inf_cnt", i1 false, i1 false}
!123 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 36, i32 12}
!124 = !{ptr @.str.45, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 583, i32 3}
!126 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @inf_ctrl._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @inf_ctrl._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.47, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 488, i32 3}
!131 = !{ptr @.str.48, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @reset_inf._entry, !130, !"_entry", i1 false, i1 false}
!133 = !{ptr @reset_inf._entry_ptr, !130, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.49, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 670, i32 4}
!136 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @setup_io._entry, !135, !"_entry", i1 false, i1 false}
!138 = !{ptr @setup_io._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.52, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 682, i32 4}
!141 = !{ptr @setup_io._entry.51, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @setup_io._entry_ptr.53, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.55, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 700, i32 4}
!145 = !{ptr @setup_io._entry.54, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @setup_io._entry_ptr.56, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.58, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 712, i32 4}
!149 = !{ptr @setup_io._entry.57, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @setup_io._entry_ptr.59, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.60, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 601, i32 3}
!153 = !{ptr @.str.61, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @init_irq._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @init_irq._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.63, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 610, i32 4}
!158 = !{ptr @init_irq._entry.62, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @init_irq._entry_ptr.64, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.66, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 617, i32 4}
!162 = !{ptr @init_irq._entry.65, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @init_irq._entry_ptr.67, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.69, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 620, i32 4}
!166 = !{ptr @init_irq._entry.68, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @init_irq._entry_ptr.70, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.71, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1140, i32 3}
!170 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @inf_remove.__UNIQUE_ID_ddebug466, !169, !"__UNIQUE_ID_ddebug466", i1 false, i1 false}
!172 = !{ptr @.str.73, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/isdn/hardware/mISDN/mISDNinfineon.c", i32 1155, i32 2}
!174 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @infineon_init._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @infineon_init._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{i32 1, !"wchar_size", i32 2}
!178 = !{i32 1, !"min_enum_size", i32 4}
!179 = !{i32 8, !"branch-target-enforcement", i32 0}
!180 = !{i32 8, !"sign-return-address", i32 0}
!181 = !{i32 8, !"sign-return-address-all", i32 0}
!182 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!183 = !{i32 7, !"uwtable", i32 1}
!184 = !{i32 7, !"frame-pointer", i32 2}
!185 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!186 = !{i64 2148742551, i64 2148742556, i64 2148742569, i64 2148742613, i64 2148742647, i64 2148742668}
!187 = !{i64 2157294694}
!188 = !{i64 4223162}
!189 = !{i64 2157296333}
!190 = !{i64 2157297989}
!191 = !{i64 2157243243}
!192 = !{i64 4223359}
!193 = !{i64 2157243633}
!194 = !{i64 2157244004}
!195 = !{i64 2157244375}
!196 = !{i64 4223777}
!197 = !{i64 2157245224}
!198 = !{i64 2157245500}
!199 = !{i64 4222939}
!200 = !{i64 2157246444}
!201 = !{i64 2157246714}
!202 = !{i64 4222739}
!203 = !{i64 2157247168}
!204 = !{i64 4223557}
!205 = !{i64 2157235955}
!206 = !{i64 2157236176}
!207 = !{i64 2157236393}
!208 = !{i64 2157236755}
!209 = !{i64 2157237076}
!210 = !{i64 2157237796}
!211 = !{i64 2157238072}
!212 = !{i64 2157251666}
!213 = !{i64 2157253335}
!214 = !{i64 2157254991}
!215 = !{i64 2157255374}
!216 = !{i64 2157255768}
!217 = !{i64 2157257526}
!218 = !{i64 2157259279}
!219 = !{i64 2157261061}
!220 = !{i64 2157263338}
!221 = !{i64 2157263608}
!222 = !{i64 2157265846}
!223 = !{i64 2157266116}
!224 = !{i64 2157268354}
!225 = !{i64 2157268637}
!226 = !{i64 2157270437}
!227 = !{i64 2157272679}
!228 = !{i64 2157272962}
!229 = !{i64 2157274762}
!230 = !{i64 2157238530}
!231 = !{i64 2157238955}
!232 = !{i64 2157239326}
!233 = !{i64 2157239697}
!234 = !{i64 2157240546}
!235 = !{i64 2157240822}
!236 = !{i64 2157241766}
!237 = !{i64 2157242036}
!238 = !{i64 2157242522}
!239 = !{i64 2157242905}
!240 = !{i64 2157232841}
!241 = !{i64 2157233082}
!242 = !{i64 2157233423}
!243 = !{i64 2157233670}
!244 = !{i64 2157234742}
!245 = !{i64 2157234983}
!246 = !{i64 2157235324}
!247 = !{i64 2157235571}
!248 = !{i64 2157226377}
!249 = !{i64 2157226806}
!250 = !{i64 2157227040}
!251 = !{i64 2157227389}
!252 = !{i64 2157227755}
!253 = !{i64 2157228292}
!254 = !{i64 2157229622}
!255 = !{i64 2157230051}
!256 = !{i64 2157230285}
!257 = !{i64 2157230634}
!258 = !{i64 2157231000}
!259 = !{i64 2157231537}
!260 = !{i64 2157222821}
!261 = !{i64 2157223061}
!262 = !{i64 2157224572}
!263 = !{i64 2157224812}
