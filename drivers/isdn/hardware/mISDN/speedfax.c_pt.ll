; ModuleID = '/llk/IR_all_yes/drivers/isdn/hardware/mISDN/speedfax.c_pt.bc'
source_filename = "../drivers/isdn/hardware/mISDN/speedfax.c"
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sfax_hw = type { %struct.list_head, ptr, [20 x i8], i32, i32, i32, %struct._ioport, %struct._ioport, i8, %struct.spinlock, %struct.isac_hw, %struct.isar_hw }
%struct._ioport = type { i32, i32 }
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
%struct.isar_hw = type { [2 x %struct.isar_ch], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, [256 x i8], [256 x i8] }
%struct.isar_ch = type { %struct.bchannel, ptr, %struct.timer_list, i8, i8, i8, i8, i8, i8, i8, i8, i8, [16 x i8] }
%struct.bchannel = type { %struct.mISDNchannel, i32, i32, %struct.work_struct, i32, ptr, i32, %struct.timer_list, [4 x i8], ptr, i16, i16, i16, i16, i16, i16, ptr, ptr, %struct.sk_buff_head, i32, i32, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.145, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.145 = type { ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.mISDN_ctrl_req = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__UNIQUE_ID_author459 = internal constant [29 x i8] c"speedfax.author=Karsten Keil\00", section ".modinfo", align 1
@__UNIQUE_ID_file460 = internal constant [51 x i8] c"speedfax.file=drivers/isdn/hardware/mISDN/speedfax\00", section ".modinfo", align 1
@__UNIQUE_ID_license461 = internal constant [24 x i8] c"speedfax.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_version462 = internal constant [21 x i8] c"speedfax.version=2.0\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"speedfax\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.2 }, section "__modver", align 4
@__UNIQUE_ID_firmware463 = internal constant [32 x i8] c"speedfax.firmware=isdn/ISAR.BIN\00", section ".modinfo", align 1
@__param_str_debug = internal constant [15 x i8] c"speedfax.debug\00", align 1
@__param_ops_debug = internal constant %struct.kernel_param_ops { i32 0, ptr @set_debug, ptr @param_get_uint, ptr null }, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @__param_ops_debug, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debug464 = internal constant [40 x i8] c"speedfax.parm=debug:Speedfax debug mask\00", section ".modinfo", align 1
@__param_str_irqloops = internal constant [18 x i8] c"speedfax.irqloops\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@irqloops = internal global { i32, [28 x i8] } { i32 4, [28 x i8] zeroinitializer }, align 32
@__param_irqloops = internal constant %struct.kernel_param { ptr @__param_str_irqloops, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.124 { ptr @irqloops } }, section "__param", align 4
@__UNIQUE_ID_irqloopstype465 = internal constant [32 x i8] c"speedfax.parmtype=irqloops:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_irqloops466 = internal constant [61 x i8] c"speedfax.parm=irqloops:Speedfax maximal irqloops (default 4)\00", section ".modinfo", align 1
@sfaxpci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @.str.4, ptr @sfaxpci_ids, ptr @sfaxpci_probe, ptr @sfax_remove_pci, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__initcall__kmod_speedfax__473_518_Speedfax_init6 = internal global ptr @Speedfax_init, section ".initcall6.init", align 4
@__exitcall_Speedfax_cleanup = internal global ptr @Speedfax_cleanup, section ".exitcall.exit", align 4
@card_lock = internal global { %struct.rwlock_t, [52 x i8] } { %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@Cards = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @Cards, ptr @Cards }, [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"card_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"speedfax+ pci\00", [18 x i8] zeroinitializer }, align 32
@sfaxpci_ids = internal global { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 57689, i32 2, i32 81, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @.str.5 to i32), i32 0 }, %struct.pci_device_id { i32 57689, i32 2, i32 84, i32 1, i32 0, i32 0, i32 ptrtoint (ptr @.str.6 to i32), i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Pyramid Speedfax + PCI\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Sedlbauer Speedfax + PCI\00", [39 x i8] zeroinitializer }, align 32
@sfaxpci_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.9, i32 448, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016No memory for Speedfax+ PCI\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sfaxpci_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/isdn/hardware/mISDN/speedfax.c\00", [57 x i8] zeroinitializer }, align 32
@sfaxpci_probe._entry_ptr = internal global ptr @sfaxpci_probe._entry, section ".printk_index", align 4
@sfaxpci_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 459, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\015mISDN: Speedfax found adapter %s at %s\0A\00", [54 x i8] zeroinitializer }, align 32
@sfaxpci_probe._entry_ptr.12 = internal global ptr @sfaxpci_probe._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Speedfax.%d\00", [20 x i8] zeroinitializer }, align 32
@sfax_cnt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@setup_instance.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&card->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"isdn/ISAR.BIN\00", [18 x i8] zeroinitializer }, align 32
@setup_instance._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.9, i32 384, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: firmware request failed %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_instance\00", [17 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr = internal global ptr @setup_instance._entry, section ".printk_index", align 4
@setup_instance._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.9, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015%s: got firmware %zu bytes\0A\00", [34 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr.20 = internal global ptr @setup_instance._entry.18, section ".printk_index", align 4
@setup_instance._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.9, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\015SpeedFax %d cards installed\0A\00", [33 x i8] zeroinitializer }, align 32
@setup_instance._entry_ptr.23 = internal global ptr @setup_instance._entry.21, section ".printk_index", align 4
@ioport_resource = external dso_local global %struct.resource, align 4
@sfax_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.9, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s unknown command %x %lx\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sfax_ctrl\00", [22 x i8] zeroinitializer }, align 32
@sfax_ctrl._entry_ptr = internal global ptr @sfax_ctrl._entry, section ".printk_index", align 4
@reset_speedfax.__UNIQUE_ID_ddebug468 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.9, ptr @.str.27, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reset_speedfax\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: resetting card\0A\00", [44 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sfax_dctrl.__UNIQUE_ID_ddebug469 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.9, ptr @.str.29, i8 0, i8 61, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sfax_dctrl\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: cmd:%x %p\0A\00", [17 x i8] zeroinitializer }, align 32
@sfax_dctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.28, ptr @.str.9, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: cannot get module\0A\00", [39 x i8] zeroinitializer }, align 32
@sfax_dctrl._entry_ptr = internal global ptr @sfax_dctrl._entry, section ".printk_index", align 4
@sfax_dctrl.__UNIQUE_ID_ddebug470 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.9, ptr @.str.31, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: dev(%d) close from %p\0A\00", [37 x i8] zeroinitializer }, align 32
@sfax_dctrl.__UNIQUE_ID_ddebug471 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.9, ptr @.str.32, i8 0, i8 66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: unknown command %x\0A\00", [40 x i8] zeroinitializer }, align 32
@channel_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.9, i32 228, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\016%s: unknown Op %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"channel_ctrl\00", [19 x i8] zeroinitializer }, align 32
@channel_ctrl._entry_ptr = internal global ptr @channel_ctrl._entry, section ".printk_index", align 4
@setup_speedfax._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.9, i32 318, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016mISDN: %s config port %x-%x already in use\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"setup_speedfax\00", [17 x i8] zeroinitializer }, align 32
@setup_speedfax._entry_ptr = internal global ptr @setup_speedfax._entry, section ".printk_index", align 4
@init_card._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.9, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: couldn't get interrupt %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"init_card\00", [22 x i8] zeroinitializer }, align 32
@init_card._entry_ptr = internal global ptr @init_card._entry, section ".printk_index", align 4
@init_card._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.9, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: ISAC init failed with %d\0A\00", [32 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.41 = internal global ptr @init_card._entry.39, section ".printk_index", align 4
@init_card._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.9, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015%s: IRQ %d count %d\0A\00", [41 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.44 = internal global ptr @init_card._entry.42, section ".printk_index", align 4
@init_card._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.38, ptr @.str.9, i32 302, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: IRQ(%d) got no requests during init %d\0A\00", [50 x i8] zeroinitializer }, align 32
@init_card._entry_ptr.47 = internal global ptr @init_card._entry.45, section ".printk_index", align 4
@speedfax_irq.__UNIQUE_ID_ddebug467 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.48, ptr @.str.9, ptr @.str.49, i8 0, i8 34, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"speedfax_irq\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: %d irqloops cpu%d\0A\00", [41 x i8] zeroinitializer }, align 32
@speedfax_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.9, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\015%s: %d IRQ LOOP cpu%d\0A\00", [39 x i8] zeroinitializer }, align 32
@speedfax_irq._entry_ptr = internal global ptr @speedfax_irq._entry, section ".printk_index", align 4
@sfax_remove_pci.__UNIQUE_ID_ddebug472 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.51, ptr @.str.9, ptr @.str.52, i8 0, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sfax_remove_pci\00", [16 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: drvdata already removed\0A\00", [35 x i8] zeroinitializer }, align 32
@Speedfax_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.9, i32 507, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\015Sedlbauer Speedfax+ Driver Rev. %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Speedfax_init\00", [18 x i8] zeroinitializer }, align 32
@Speedfax_init._entry_ptr = internal global ptr @Speedfax_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 35330, i64 37378, i64 37634]
@__sancov_gen_cov_switch_values.55 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 512, i64 768]
@__sancov_gen_cov_switch_values.56 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2048]
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 101, i32 1 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 54, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [9 x i8] c"irqloops\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 55, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"sfaxpci_driver\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 494, i32 26 }
@___asan_gen_.75 = private unnamed_addr constant [10 x i8] c"card_lock\00", align 1
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"Cards\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 72, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 73, i32 8 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 495, i32 10 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"sfaxpci_ids\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 481, i32 29 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 484, i32 26 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 488, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 448, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 458, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 368, i32 44 }
@___asan_gen_.117 = private unnamed_addr constant [9 x i8] c"sfax_cnt\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 53, i32 12 }
@___asan_gen_.120 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 373, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 381, i32 36 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 383, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 388, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 419, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 199, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 165, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 244, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 255, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 258, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 266, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 228, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 317, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 280, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 288, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 298, i32 4 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 301, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 136, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 139, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 478, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.252 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.253 = private constant [42 x i8] c"../drivers/isdn/hardware/mISDN/speedfax.c\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.253, i32 506, i32 2 }
@llvm.compiler.used = appending global [95 x ptr] [ptr @Speedfax_cleanup, ptr @Speedfax_init._entry, ptr @Speedfax_init._entry_ptr, ptr @__UNIQUE_ID_author459, ptr @__UNIQUE_ID_debug464, ptr @__UNIQUE_ID_file460, ptr @__UNIQUE_ID_firmware463, ptr @__UNIQUE_ID_irqloops466, ptr @__UNIQUE_ID_irqloopstype465, ptr @__UNIQUE_ID_license461, ptr @__UNIQUE_ID_version462, ptr @__exitcall_Speedfax_cleanup, ptr @__initcall__kmod_speedfax__473_518_Speedfax_init6, ptr @__modver_attr, ptr @__param_debug, ptr @__param_irqloops, ptr @channel_ctrl._entry, ptr @channel_ctrl._entry_ptr, ptr @init_card._entry, ptr @init_card._entry.39, ptr @init_card._entry.42, ptr @init_card._entry.45, ptr @init_card._entry_ptr, ptr @init_card._entry_ptr.41, ptr @init_card._entry_ptr.44, ptr @init_card._entry_ptr.47, ptr @setup_instance._entry, ptr @setup_instance._entry.18, ptr @setup_instance._entry.21, ptr @setup_instance._entry_ptr, ptr @setup_instance._entry_ptr.20, ptr @setup_instance._entry_ptr.23, ptr @setup_speedfax._entry, ptr @setup_speedfax._entry_ptr, ptr @sfax_ctrl._entry, ptr @sfax_ctrl._entry_ptr, ptr @sfax_dctrl._entry, ptr @sfax_dctrl._entry_ptr, ptr @sfaxpci_probe._entry, ptr @sfaxpci_probe._entry.10, ptr @sfaxpci_probe._entry_ptr, ptr @sfaxpci_probe._entry_ptr.12, ptr @speedfax_irq._entry, ptr @speedfax_irq._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @debug, ptr @irqloops, ptr @sfaxpci_driver, ptr @card_lock, ptr @Cards, ptr @.str.3, ptr @.str.4, ptr @sfaxpci_ids, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @sfax_cnt, ptr @setup_instance.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqloops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfaxpci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @card_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Cards to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfaxpci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfaxpci_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfaxpci_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfax_cnt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_instance._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfax_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sfax_dctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @channel_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @setup_speedfax._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_card._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @speedfax_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Speedfax_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @Speedfax_cleanup() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pci_unregister_driver(ptr noundef nonnull @sfaxpci_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @Speedfax_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.2) #12
  %call1 = tail call i32 @__pci_register_driver(ptr noundef nonnull @sfaxpci_driver, ptr noundef null, ptr noundef nonnull @.str.1) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_debug(ptr noundef %val, ptr noundef %kp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @param_set_uint(ptr noundef %val, ptr noundef %kp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  tail call void @_raw_read_lock(ptr noundef nonnull @card_lock) #9
  %card.08 = load ptr, ptr @Cards, align 4
  %cmp.not9 = icmp eq ptr %card.08, @Cards
  br i1 %cmp.not9, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then.for.body_crit_edge
  %card.010 = phi ptr [ %card.0, %for.body.for.body_crit_edge ], [ %card.08, %if.then.for.body_crit_edge ]
  %0 = load i32, ptr @debug, align 4
  %debug.i = getelementptr inbounds %struct.sfax_hw, ptr %card.010, i32 0, i32 10, i32 0, i32 15
  %1 = ptrtoint ptr %debug.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %debug.i, align 4
  %debug1.i = getelementptr inbounds %struct.sfax_hw, ptr %card.010, i32 0, i32 11, i32 0, i32 0, i32 0, i32 21
  %2 = ptrtoint ptr %debug1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %0, ptr %debug1.i, align 8
  %debug6.i = getelementptr %struct.sfax_hw, ptr %card.010, i32 0, i32 11, i32 0, i32 1, i32 0, i32 21
  %3 = ptrtoint ptr %debug6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %0, ptr %debug6.i, align 4
  %4 = ptrtoint ptr %card.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %card.0 = load ptr, ptr %card.010, align 4
  %cmp.not = icmp eq ptr %card.0, @Cards
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @card_lock) #9
  br label %if.end

if.end:                                           ; preds = %for.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_get_uint(ptr noundef, ptr noundef) #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @param_set_uint(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfaxpci_probe(ptr noundef %pdev, ptr nocapture noundef readonly %ent) #2 align 64 {
entry:
  %firmware.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2848) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev2, align 8
  %call3 = tail call i32 @pci_enable_device(ptr noundef %pdev) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end9, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

do.end9:                                          ; preds = %if.end
  %driver_data = getelementptr inbounds %struct.pci_device_id, ptr %ent, i32 0, i32 6
  %2 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %driver_data, align 4
  %4 = inttoptr i32 %3 to ptr
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 3
  %5 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end9.pci_name.exit_crit_edge

do.end9.pci_name.exit_crit_edge:                  ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end9.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %8, %if.end.i.i ], [ %6, %do.end9.pci_name.exit_crit_edge ]
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %4, ptr noundef %retval.0.i.i) #12
  %resource = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 47
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %resource, align 8
  %cfg = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %cfg, align 8
  %irq = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 46
  %12 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq, align 4
  %irq13 = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %irq13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %irq13, align 8
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %firmware.i) #9
  %16 = ptrtoint ptr %firmware.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -1 to ptr), ptr %firmware.i, align 4, !annotation !157
  %name.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 2
  %17 = load i32, ptr @sfax_cnt, align 4
  %add.i = add i32 %17, 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name.i, i32 noundef 19, ptr noundef nonnull @.str.13, i32 noundef %add.i) #9
  %call1.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %18 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %18, ptr noundef nonnull @Cards) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %pci_name.exit.list_add_tail.exit.i_crit_edge

pci_name.exit.list_add_tail.exit.i_crit_edge:     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %pci_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @Cards, i32 0, i32 1), align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @Cards, ptr %call7.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %18, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %pci_name.exit.list_add_tail.exit.i_crit_edge
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call1.i) #9
  %22 = load i32, ptr @debug, align 4
  %debug.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 15
  %23 = ptrtoint ptr %debug.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %debug.i.i, align 4
  %debug1.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 21
  %24 = ptrtoint ptr %debug1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %debug1.i.i, align 8
  %debug6.i.i = getelementptr %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1, i32 0, i32 21
  %25 = ptrtoint ptr %debug6.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %22, ptr %debug6.i.i, align 4
  %lock.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 9
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @setup_instance.__key, i16 noundef signext 3) #9
  %isac.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10
  %hwlock.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %hwlock.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %lock.i, ptr %hwlock.i, align 4
  %isar.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11
  %hwlock16.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 2
  %27 = ptrtoint ptr %hwlock16.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %lock.i, ptr %hwlock16.i, align 4
  %ctrl.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 9
  %28 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sfax_ctrl, ptr %ctrl.i, align 8
  %name21.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 3
  %29 = ptrtoint ptr %name21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %name.i, ptr %name21.i, align 8
  %name25.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 3
  %30 = ptrtoint ptr %name25.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %name.i, ptr %name25.i, align 8
  %owner.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 4
  %31 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %owner.i, align 4
  %32 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pdev2, align 8
  %dev.i35 = getelementptr inbounds %struct.pci_dev, ptr %33, i32 0, i32 44
  %call27.i = call i32 @request_firmware(ptr noundef nonnull %firmware.i, ptr noundef nonnull @.str.15, ptr noundef %dev.i35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %do.end32.i, label %if.end.i

do.end32.i:                                       ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %call36.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name.i, i32 noundef %call27.i) #12
  br label %error_fw.i

if.end.i:                                         ; preds = %list_add_tail.exit.i
  %34 = load i32, ptr @debug, align 4
  %and.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end45.i_crit_edge, label %do.end40.i

if.end.i.if.end45.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45.i

do.end40.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %firmware.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %call44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %name.i, i32 noundef %38) #12
  br label %if.end45.i

if.end45.i:                                       ; preds = %do.end40.i, %if.end.i.if.end45.i_crit_edge
  %call47.i = call i32 @mISDNisac_init(ptr noundef %isac.i, ptr noundef nonnull %call7.i.i) #9
  %ctrl50.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 0, i32 9
  %39 = ptrtoint ptr %ctrl50.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @sfax_dctrl, ptr %ctrl50.i, align 8
  %call52.i = call i32 @mISDNisar_init(ptr noundef %isar.i, ptr noundef nonnull %call7.i.i) #9
  %Bprotocols.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 3
  %40 = ptrtoint ptr %Bprotocols.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call52.i, ptr %Bprotocols.i, align 4
  %channelmap.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 5
  %bchannels.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 0, i32 0, i32 6
  %41 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %channelmap.i, align 4
  %conv1.i.i = or i8 %42, 2
  store i8 %conv1.i.i, ptr %channelmap.i, align 4
  %43 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bchannels.i, align 4
  %call.i.i196.i = call zeroext i1 @__list_add_valid(ptr noundef %isar.i, ptr noundef %bchannels.i, ptr noundef %44) #9
  br i1 %call.i.i196.i, label %if.end.i.i198.i, label %if.end45.i.list_add.exit.i_crit_edge

if.end45.i.list_add.exit.i_crit_edge:             ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.i

if.end.i.i198.i:                                  ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %isar.i, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %isar.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %44, ptr %isar.i, align 8
  %prev3.i.i197.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i197.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %bchannels.i, ptr %prev3.i.i197.i, align 4
  %48 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %isar.i, ptr %bchannels.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i198.i, %if.end45.i.list_add.exit.i_crit_edge
  %49 = ptrtoint ptr %channelmap.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %channelmap.i, align 4
  %conv1.i.1.i = or i8 %50, 4
  store i8 %conv1.i.1.i, ptr %channelmap.i, align 4
  %arrayidx.1.i = getelementptr %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1
  %51 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bchannels.i, align 4
  %call.i.i196.1.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx.1.i, ptr noundef %bchannels.i, ptr noundef %52) #9
  br i1 %call.i.i196.1.i, label %if.end.i.i198.1.i, label %list_add.exit.i.list_add.exit.1.i_crit_edge

list_add.exit.i.list_add.exit.1.i_crit_edge:      ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit.1.i

if.end.i.i198.1.i:                                ; preds = %list_add.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i.1.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.1.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %arrayidx.1.i, ptr %prev1.i.i.1.i, align 4
  %54 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %52, ptr %arrayidx.1.i, align 4
  %prev3.i.i197.1.i = getelementptr %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 0, i32 1, i32 0, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i197.1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %bchannels.i, ptr %prev3.i.i197.1.i, align 8
  %56 = ptrtoint ptr %bchannels.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %arrayidx.1.i, ptr %bchannels.i, align 4
  br label %list_add.exit.1.i

list_add.exit.1.i:                                ; preds = %if.end.i.i198.1.i, %list_add.exit.i.list_add.exit.1.i_crit_edge
  %57 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %cfg, align 8
  %call.i.i = call ptr @__request_region(ptr noundef nonnull @ioport_resource, i32 noundef %58, i32 noundef 256, ptr noundef %name.i, i32 noundef 0) #9
  %tobool.not.i.i36 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i36, label %setup_speedfax.exit.i, label %if.end72.i

setup_speedfax.exit.i:                            ; preds = %list_add.exit.1.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cfg, align 8
  %add.i.i = add i32 %60, 255
  %call5.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %name.i, i32 noundef %60, i32 noundef %add.i.i) #12
  br label %error_setup.i

if.end72.i:                                       ; preds = %list_add.exit.1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !158
  call void @arm_heavy_mb() #9
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg, align 8
  %and.i199.i = and i32 %62, 1048575
  %add10.i.i = or i32 %and.i199.i, -18874368
  %63 = inttoptr i32 %add10.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 -1) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !160
  call void @arm_heavy_mb() #9
  %64 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cfg, align 8
  %and16.i.i = and i32 %65, 1048575
  %add17.i.i = or i32 %and16.i.i, -18874368
  %66 = inttoptr i32 %add17.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 0) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !161
  call void @arm_heavy_mb() #9
  %67 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cfg, align 8
  %add23.i.i = add i32 %68, 2
  %and24.i.i = and i32 %add23.i.i, 1048575
  %add25.i.i = or i32 %and24.i.i, -18874368
  %69 = inttoptr i32 %add25.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 -35) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !162
  call void @arm_heavy_mb() #9
  %70 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %cfg, align 8
  %add31.i.i = add i32 %71, 5
  %and32.i.i = and i32 %add31.i.i, 1048575
  %add33.i.i = or i32 %and32.i.i, -18874368
  %72 = inttoptr i32 %add33.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 0) #9, !srcloc !159
  %type.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 1
  %73 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 16, ptr %type.i.i, align 8
  %74 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cfg, align 8
  %add36.i.i = add i32 %75, 200
  %p_isac.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 6
  %ale.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 6, i32 1
  %76 = ptrtoint ptr %ale.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %add36.i.i, ptr %ale.i.i, align 8
  %add38.i.i = add i32 %75, 208
  %77 = ptrtoint ptr %p_isac.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %add38.i.i, ptr %p_isac.i.i, align 4
  %p_isar.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 7
  %ale42.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 7, i32 1
  %78 = ptrtoint ptr %ale42.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add36.i.i, ptr %ale42.i.i, align 8
  %add44.i.i = add i32 %75, 224
  %79 = ptrtoint ptr %p_isar.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %add44.i.i, ptr %p_isar.i.i, align 4
  %read_reg.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 5
  %80 = ptrtoint ptr %read_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @ReadISAC_IND, ptr %read_reg.i.i, align 8
  %write_reg.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 6
  %81 = ptrtoint ptr %write_reg.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @WriteISAC_IND, ptr %write_reg.i.i, align 4
  %read_fifo.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 7
  %82 = ptrtoint ptr %read_fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ReadFiFoISAC_IND, ptr %read_fifo.i.i, align 8
  %write_fifo.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 8
  %83 = ptrtoint ptr %write_fifo.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @WriteFiFoISAC_IND, ptr %write_fifo.i.i, align 4
  %read_reg55.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 5
  %84 = ptrtoint ptr %read_reg55.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @ReadISAR_IND, ptr %read_reg55.i.i, align 8
  %write_reg57.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 6
  %85 = ptrtoint ptr %write_reg57.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @WriteISAR_IND, ptr %write_reg57.i.i, align 4
  %read_fifo59.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 7
  %86 = ptrtoint ptr %read_fifo59.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @ReadFiFoISAR_IND, ptr %read_fifo59.i.i, align 8
  %write_fifo61.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 8
  %87 = ptrtoint ptr %write_fifo61.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @WriteFiFoISAR_IND, ptr %write_fifo61.i.i, align 4
  %call68.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  call fastcc void @reset_speedfax(ptr noundef nonnull %call7.i.i) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %88 = ptrtoint ptr %ale.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %ale.i.i, align 8
  %and.i.i.i.i = and i32 %89, 1048575
  %add.i.i.i.i = or i32 %and.i.i.i.i, -18874368
  %90 = inttoptr i32 %add.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 32) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %p_isac.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %p_isac.i.i, align 4
  %and5.i.i.i.i = and i32 %92, 1048575
  %add6.i.i.i.i = or i32 %and5.i.i.i.i, -18874368
  %93 = inttoptr i32 %add6.i.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 -1) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @arm_heavy_mb() #9
  %94 = ptrtoint ptr %ale42.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ale42.i.i, align 8
  %and.i5.i.i.i = and i32 %95, 1048575
  %add.i6.i.i.i = or i32 %and.i5.i.i.i, -18874368
  %96 = inttoptr i32 %add.i6.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 117) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @arm_heavy_mb() #9
  %97 = ptrtoint ptr %p_isar.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %p_isar.i.i, align 4
  %and5.i7.i.i.i = and i32 %98, 1048575
  %add6.i8.i.i.i = or i32 %and5.i7.i.i.i, -18874368
  %99 = inttoptr i32 %add6.i8.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 0) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  call void @arm_heavy_mb() #9
  %100 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cfg, align 8
  %add.i.i.i = add i32 %101, 5
  %and.i.i.i = and i32 %add.i.i.i, 1048575
  %add1.i.i.i = or i32 %and.i.i.i, -18874368
  %102 = inttoptr i32 %add1.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 0) #9, !srcloc !159
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call68.i.i) #9
  %init.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 11
  %103 = ptrtoint ptr %init.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %init.i, align 8
  %call75.i = call i32 %104(ptr noundef %isar.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.end78.i, label %if.end72.i.error.i_crit_edge

if.end72.i.error.i_crit_edge:                     ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end78.i:                                       ; preds = %if.end72.i
  %105 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %pdev2, align 8
  %dev83.i = getelementptr inbounds %struct.pci_dev, ptr %106, i32 0, i32 44
  %call86.i = call i32 @mISDN_register_device(ptr noundef %isac.i, ptr noundef %dev83.i, ptr noundef %name.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i)
  %tobool87.not.i = icmp eq i32 %call86.i, 0
  br i1 %tobool87.not.i, label %if.end89.i, label %if.end78.i.error.i_crit_edge

if.end78.i.error.i_crit_edge:                     ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error.i

if.end89.i:                                       ; preds = %if.end78.i
  %107 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %irq13, align 8
  %call.i.i201.i = call i32 @request_threaded_irq(i32 noundef %108, ptr noundef nonnull @speedfax_irq, ptr noundef null, i32 noundef 128, ptr noundef %name.i, ptr noundef nonnull %call7.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i201.i)
  %tobool.not.i202.i = icmp eq i32 %call.i.i201.i, 0
  br i1 %tobool.not.i202.i, label %while.cond.preheader.i.i, label %do.end.i204.i

while.cond.preheader.i.i:                         ; preds = %if.end89.i
  %init.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 11
  %irqcnt.i.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 4
  br label %do.body7.i.i

do.end.i204.i:                                    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #11
  %109 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %irq13, align 8
  %call4.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %name.i, i32 noundef %110) #12
  br label %error_init.i

do.body7.i.i:                                     ; preds = %do.end46.i.i.do.body7.i.i_crit_edge, %while.cond.preheader.i.i
  %dec88.i.i = phi i32 [ 2, %while.cond.preheader.i.i ], [ %dec.i.i, %do.end46.i.i.do.body7.i.i_crit_edge ]
  %cnt.087.i.i = phi i32 [ 3, %while.cond.preheader.i.i ], [ %dec88.i.i, %do.end46.i.i.do.body7.i.i_crit_edge ]
  %call10.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %111 = ptrtoint ptr %init.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %init.i.i, align 8
  %call16.i.i = call i32 %112(ptr noundef %isac.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.end27.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %do.body7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i.i) #9
  %call26.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %name.i, i32 noundef %call16.i.i) #12
  br label %while.end.i.i

if.end27.i.i:                                     ; preds = %do.body7.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %113 = ptrtoint ptr %ale.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ale.i.i, align 8
  %and.i.i.i205.i = and i32 %114, 1048575
  %add.i.i.i206.i = or i32 %and.i.i.i205.i, -18874368
  %115 = inttoptr i32 %add.i.i.i206.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 32) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %116 = ptrtoint ptr %p_isac.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %p_isac.i.i, align 4
  %and5.i.i.i207.i = and i32 %117, 1048575
  %add6.i.i.i208.i = or i32 %and5.i.i.i207.i, -18874368
  %118 = inttoptr i32 %add6.i.i.i208.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %118, i8 0) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  call void @arm_heavy_mb() #9
  %119 = ptrtoint ptr %ale42.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %ale42.i.i, align 8
  %and.i5.i.i209.i = and i32 %120, 1048575
  %add.i6.i.i210.i = or i32 %and.i5.i.i209.i, -18874368
  %121 = inttoptr i32 %add.i6.i.i210.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 117) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  call void @arm_heavy_mb() #9
  %122 = ptrtoint ptr %p_isar.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %p_isar.i.i, align 4
  %and5.i7.i.i211.i = and i32 %123, 1048575
  %add6.i8.i.i212.i = or i32 %and5.i7.i.i211.i, -18874368
  %124 = inttoptr i32 %add6.i8.i.i212.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 4) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !168
  call void @arm_heavy_mb() #9
  %125 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %cfg, align 8
  %add.i.i213.i = add i32 %126, 5
  %and.i.i214.i = and i32 %add.i.i213.i, 1048575
  %add1.i.i215.i = or i32 %and.i.i214.i, -18874368
  %127 = inttoptr i32 %add1.i.i215.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 2) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  call void @arm_heavy_mb() #9
  %128 = ptrtoint ptr %ale.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ale.i.i, align 8
  %and.i82.i.i = and i32 %129, 1048575
  %add.i83.i.i = or i32 %and.i82.i.i, -18874368
  %130 = inttoptr i32 %add.i83.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %130, i8 33) #9, !srcloc !159
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  call void @arm_heavy_mb() #9
  %131 = ptrtoint ptr %p_isac.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %p_isac.i.i, align 4
  %and5.i.i.i = and i32 %132, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %133 = inttoptr i32 %add6.i.i.i to ptr
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 65) #9, !srcloc !159
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i.i) #9
  %call29.i.i = call i32 @msleep_interruptible(i32 noundef 10) #9
  %134 = load i32, ptr @debug, align 4
  %and.i216.i = and i32 %134, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i216.i)
  %tobool30.not.i.i = icmp eq i32 %and.i216.i, 0
  br i1 %tobool30.not.i.i, label %if.end27.i.i.if.end40.i.i_crit_edge, label %do.end34.i.i

if.end27.i.i.if.end40.i.i_crit_edge:              ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40.i.i

do.end34.i.i:                                     ; preds = %if.end27.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %135 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %irq13, align 8
  %137 = ptrtoint ptr %irqcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %irqcnt.i.i, align 4
  %call39.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef %name.i, i32 noundef %136, i32 noundef %138) #12
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %do.end34.i.i, %if.end27.i.i.if.end40.i.i_crit_edge
  %139 = ptrtoint ptr %irqcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %irqcnt.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool42.not.i.i = icmp eq i32 %140, 0
  br i1 %tobool42.not.i.i, label %do.end46.i.i, label %if.end93.i

do.end46.i.i:                                     ; preds = %if.end40.i.i
  %141 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %irq13, align 8
  %sub.i.i = sub nuw nsw i32 4, %cnt.087.i.i
  %call51.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %name.i, i32 noundef %142, i32 noundef %sub.i.i) #12
  %dec.i.i = add nsw i32 %dec88.i.i, -1
  %tobool5.not.i.i = icmp eq i32 %dec88.i.i, 0
  br i1 %tobool5.not.i.i, label %do.end46.i.i.while.end.i.i_crit_edge, label %do.end46.i.i.do.body7.i.i_crit_edge

do.end46.i.i.do.body7.i.i_crit_edge:              ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7.i.i

do.end46.i.i.while.end.i.i_crit_edge:             ; preds = %do.end46.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %do.end46.i.i.while.end.i.i_crit_edge, %if.then18.i.i
  %143 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %irq13, align 8
  %call54.i.i = call ptr @free_irq(i32 noundef %144, ptr noundef %call7.i.i) #9
  br label %error_init.i

if.end93.i:                                       ; preds = %if.end40.i.i
  %firmware95.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 13
  %145 = ptrtoint ptr %firmware95.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %firmware95.i, align 8
  %147 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %firmware.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %148, i32 0, i32 1
  %149 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %data.i, align 4
  %151 = ptrtoint ptr %148 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %148, align 4
  %call98.i = call i32 %146(ptr noundef %isar.i, ptr noundef %150, i32 noundef %152) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98.i)
  %tobool99.not.i = icmp eq i32 %call98.i, 0
  br i1 %tobool99.not.i, label %setup_instance.exit.thread, label %if.end107.i

setup_instance.exit.thread:                       ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  %153 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %154) #9
  %155 = load i32, ptr @sfax_cnt, align 4
  %inc101.i = add i32 %155, 1
  store i32 %inc101.i, ptr @sfax_cnt, align 4
  %call106.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %inc101.i) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #9
  br label %cleanup

if.end107.i:                                      ; preds = %if.end93.i
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @disable_hwirq(ptr noundef %call7.i.i) #9
  %156 = ptrtoint ptr %irq13 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %irq13, align 8
  %call108.i = call ptr @free_irq(i32 noundef %157, ptr noundef %call7.i.i) #9
  br label %error_init.i

error_init.i:                                     ; preds = %if.end107.i, %while.end.i.i, %do.end.i204.i
  %err.0.i = phi i32 [ %call98.i, %if.end107.i ], [ -5, %while.end.i.i ], [ %call.i.i201.i, %do.end.i204.i ]
  call void @mISDN_unregister_device(ptr noundef %isac.i) #9
  br label %error.i

error.i:                                          ; preds = %error_init.i, %if.end78.i.error.i_crit_edge, %if.end72.i.error.i_crit_edge
  %err.1.i = phi i32 [ %call75.i, %if.end72.i.error.i_crit_edge ], [ %call86.i, %if.end78.i.error.i_crit_edge ], [ %err.0.i, %error_init.i ]
  %158 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %cfg, align 8
  call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %159, i32 noundef 256) #9
  br label %error_setup.i

error_setup.i:                                    ; preds = %error.i, %setup_speedfax.exit.i
  %err.2.i = phi i32 [ -5, %setup_speedfax.exit.i ], [ %err.1.i, %error.i ]
  %release.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 10, i32 10
  %160 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %release.i, align 4
  call void %161(ptr noundef %isac.i) #9
  %release115.i = getelementptr inbounds %struct.sfax_hw, ptr %call7.i.i, i32 0, i32 11, i32 10
  %162 = ptrtoint ptr %release115.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %release115.i, align 4
  call void %163(ptr noundef %isar.i) #9
  %164 = ptrtoint ptr %firmware.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %firmware.i, align 4
  call void @release_firmware(ptr noundef %165) #9
  br label %error_fw.i

error_fw.i:                                       ; preds = %error_setup.i, %do.end32.i
  %err.3.i = phi i32 [ %call27.i, %do.end32.i ], [ %err.2.i, %error_setup.i ]
  %166 = ptrtoint ptr %pdev2 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %pdev2, align 8
  call void @pci_disable_device(ptr noundef %167) #9
  %call124.i = call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %call.i.i218.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %call7.i.i) #9
  br i1 %call.i.i218.i, label %if.end.i.i219.i, label %error_fw.i.if.then16_crit_edge

error_fw.i.if.then16_crit_edge:                   ; preds = %error_fw.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then16

if.end.i.i219.i:                                  ; preds = %error_fw.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %prev.i.i.i, align 4
  %170 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %call7.i.i, align 8
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %171, i32 0, i32 1
  %172 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %169, ptr %prev1.i.i.i.i, align 4
  %173 = ptrtoint ptr %169 to i32
  call void @__asan_store4_noabort(i32 %173)
  store volatile ptr %171, ptr %169, align 4
  br label %if.then16

if.then16:                                        ; preds = %if.end.i.i219.i, %error_fw.i.if.then16_crit_edge
  %174 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr inttoptr (i32 256 to ptr), ptr %call7.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call124.i) #9
  call void @kfree(ptr noundef %call7.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %firmware.i) #9
  %176 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %setup_instance.exit.thread, %if.then5, %do.end
  %retval.0 = phi i32 [ %call3, %if.then5 ], [ -12, %do.end ], [ %err.3.i, %if.then16 ], [ 0, %setup_instance.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sfax_remove_pci(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.pci_dev, ptr %pdev, i32 0, i32 44, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.then

if.then:                                          ; preds = %entry
  %lock.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 9
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %p_isac.i.i.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 6
  %ale.i.i.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %ale.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ale.i.i.i, align 4
  %and.i.i.i = and i32 %3, 1048575
  %add.i.i.i = or i32 %and.i.i.i, -18874368
  %4 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 32) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %5 = ptrtoint ptr %p_isac.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p_isac.i.i.i, align 4
  %and5.i.i.i = and i32 %6, 1048575
  %add6.i.i.i = or i32 %and5.i.i.i, -18874368
  %7 = inttoptr i32 %add6.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 -1) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %p_isar.i.i.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 7
  %ale.i4.i.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %ale.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ale.i4.i.i, align 4
  %and.i5.i.i = and i32 %9, 1048575
  %add.i6.i.i = or i32 %and.i5.i.i, -18874368
  %10 = inttoptr i32 %add.i6.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 117) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %p_isar.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_isar.i.i.i, align 4
  %and5.i7.i.i = and i32 %12, 1048575
  %add6.i8.i.i = or i32 %and5.i7.i.i, -18874368
  %13 = inttoptr i32 %add6.i8.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 0) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %cfg.i.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cfg.i.i, align 8
  %add.i.i = add i32 %15, 5
  %and.i.i = and i32 %add.i.i, 1048575
  %add1.i.i = or i32 %and.i.i, -18874368
  %16 = inttoptr i32 %add1.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %16, i8 0) #9, !srcloc !159
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #9
  %isac.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10
  %release.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10, i32 10
  %17 = ptrtoint ptr %release.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %release.i, align 4
  tail call void %18(ptr noundef %isac.i) #9
  %irq.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 3
  %19 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq.i, align 8
  %call7.i = tail call ptr @free_irq(i32 noundef %20, ptr noundef nonnull %1) #9
  %isar.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 11
  %release8.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 11, i32 10
  %21 = ptrtoint ptr %release8.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %release8.i, align 4
  tail call void %22(ptr noundef %isar.i) #9
  tail call void @mISDN_unregister_device(ptr noundef %isac.i) #9
  %23 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg.i.i, align 8
  tail call void @__release_region(ptr noundef nonnull @ioport_resource, i32 noundef %24, i32 noundef 256) #9
  %pdev.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pdev.i, align 8
  tail call void @pci_disable_device(ptr noundef %26) #9
  %27 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44, i32 8
  %29 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %driver_data.i.i.i, align 4
  %call18.i = tail call i32 @_raw_write_lock_irqsave(ptr noundef nonnull @card_lock) #9
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.release_card.exit_crit_edge

if.then.release_card.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_card.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %release_card.exit

release_card.exit:                                ; preds = %if.end.i.i.i, %if.then.release_card.exit_crit_edge
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_write_unlock_irqrestore(ptr noundef nonnull @card_lock, i32 noundef %call18.i) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  %38 = load i32, ptr @sfax_cnt, align 4
  %dec.i = add i32 %38, -1
  store i32 %dec.i, ptr @sfax_cnt, align 4
  br label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfax_remove_pci.__UNIQUE_ID_ddebug472, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfax_remove_pci, %if.then5)) #9
          to label %if.end6 [label %if.then5], !srcloc !169

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sfax_remove_pci.__UNIQUE_ID_ddebug472, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51) #9
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %do.body, %release_card.exit
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_enable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_write_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfax_ctrl(ptr noundef %sf, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.end42 [
    i32 35330, label %sw.bb
    i32 37634, label %sw.bb1
    i32 37378, label %sw.bb15
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @reset_speedfax(ptr noundef %sf)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %and = and i32 %arg, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %sw.bb1.if.end_crit_edge, label %if.then

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #11
  %aux_data = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %1 = ptrtoint ptr %aux_data to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %aux_data, align 4
  %3 = and i8 %2, -9
  store i8 %3, ptr %aux_data, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb1.if.end_crit_edge
  %and4 = and i32 %arg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.do.body_crit_edge, label %if.then6

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %aux_data7 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %4 = ptrtoint ptr %aux_data7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aux_data7, align 4
  %6 = and i8 %5, -17
  store i8 %6, ptr %aux_data7, align 4
  br label %do.body

do.body:                                          ; preds = %if.then6, %if.end.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !170
  tail call void @arm_heavy_mb() #9
  %aux_data12 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %7 = ptrtoint ptr %aux_data12 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %aux_data12, align 4
  %cfg = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 5
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg, align 8
  %add = add i32 %10, 3
  %and13 = and i32 %add, 1048575
  %add14 = or i32 %and13, -18874368
  %11 = inttoptr i32 %add14 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 %8) #9, !srcloc !159
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %and16 = and i32 %arg, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %sw.bb15.if.end22_crit_edge, label %if.then18

sw.bb15.if.end22_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then18:                                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  %aux_data19 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %12 = ptrtoint ptr %aux_data19 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %aux_data19, align 4
  %14 = or i8 %13, 8
  store i8 %14, ptr %aux_data19, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %sw.bb15.if.end22_crit_edge
  %and23 = and i32 %arg, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.do.body31_crit_edge, label %if.then25

if.end22.do.body31_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body31

if.then25:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  %aux_data26 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %15 = ptrtoint ptr %aux_data26 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %aux_data26, align 4
  %17 = or i8 %16, 16
  store i8 %17, ptr %aux_data26, align 4
  br label %do.body31

do.body31:                                        ; preds = %if.then25, %if.end22.do.body31_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !171
  tail call void @arm_heavy_mb() #9
  %aux_data34 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %18 = ptrtoint ptr %aux_data34 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %aux_data34, align 4
  %cfg35 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 5
  %20 = ptrtoint ptr %cfg35 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cfg35, align 8
  %add36 = add i32 %21, 3
  %and37 = and i32 %add36, 1048575
  %add38 = or i32 %and37, -18874368
  %22 = inttoptr i32 %add38 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %22, i8 %19) #9, !srcloc !159
  br label %sw.epilog

do.end42:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 2
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %name, ptr noundef nonnull @.str.25, i32 noundef %cmd, i32 noundef %arg) #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end42, %do.body31, %do.body, %sw.bb
  %ret.0 = phi i32 [ -22, %do.end42 ], [ 0, %do.body31 ], [ 0, %do.body ], [ 0, %sw.bb ]
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNisac_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sfax_dctrl(ptr nocapture noundef readonly %ch, i32 noundef %cmd, ptr noundef %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.dchannel, ptr %ch, i32 0, i32 6
  %0 = ptrtoint ptr %hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hw, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfax_dctrl.__UNIQUE_ID_ddebug469, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfax_dctrl, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sfax_dctrl.__UNIQUE_ID_ddebug469, ptr noundef nonnull @.str.29, ptr noundef %name, i32 noundef %cmd, ptr noundef %arg) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %cmd, label %do.body49 [
    i32 256, label %sw.bb
    i32 512, label %do.body28
    i32 768, label %sw.bb47
  ]

sw.bb:                                            ; preds = %do.end
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %isac = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10
  %open = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10, i32 13
  %5 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %open, align 8
  %call9 = tail call i32 %6(ptr noundef %isac, ptr noundef %arg) #9
  br label %if.end13

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %isar = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 11
  %open10 = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 11, i32 12
  %7 = ptrtoint ptr %open10 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %open10, align 4
  %call12 = tail call i32 %8(ptr noundef %isar, ptr noundef %arg) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else, %if.then7
  %err.0 = phi i32 [ %call9, %if.then7 ], [ %call12, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool14.not = icmp eq i32 %err.0, 0
  br i1 %tobool14.not, label %if.end16, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end16:                                         ; preds = %if.end13
  %call17 = tail call zeroext i1 @try_module_get(ptr noundef null) #9
  br i1 %call17, label %if.end16.cleanup_crit_edge, label %do.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  %name23 = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 2
  %call25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %name23) #12
  br label %cleanup

do.body28:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfax_dctrl.__UNIQUE_ID_ddebug470, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfax_dctrl, %if.then40)) #9
          to label %do.end46 [label %if.then40], !srcloc !169

if.then40:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #11
  %name41 = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 2
  %id = getelementptr inbounds %struct.mISDNdevice, ptr %ch, i32 0, i32 1
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %11 = tail call ptr @llvm.returnaddress(i32 0)
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sfax_dctrl.__UNIQUE_ID_ddebug470, ptr noundef nonnull @.str.31, ptr noundef %name41, i32 noundef %10, ptr noundef %11) #9
  br label %do.end46

do.end46:                                         ; preds = %if.then40, %do.body28
  tail call void @module_put(ptr noundef null) #9
  br label %cleanup

sw.bb47:                                          ; preds = %do.end
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %13, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb2.i
    i32 2048, label %sw.bb7.i
  ]

sw.bb.i:                                          ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2049, ptr %arg, align 4
  br label %cleanup

sw.bb2.i:                                         ; preds = %sw.bb47
  %channel.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 1
  %16 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channel.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %18 = icmp ugt i32 %17, 3
  br i1 %18, label %sw.bb2.i.cleanup_crit_edge, label %if.end.i

sw.bb2.i.cleanup_crit_edge:                       ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #11
  %isac.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10
  %ctrl.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10, i32 12
  %19 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl.i, align 4
  %call.i = tail call i32 %20(ptr noundef %isac.i, i32 noundef 38146, i32 noundef %17) #9
  br label %cleanup

sw.bb7.i:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %isac8.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10
  %ctrl9.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 10, i32 12
  %21 = ptrtoint ptr %ctrl9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl9.i, align 4
  %p1.i = getelementptr inbounds %struct.mISDN_ctrl_req, ptr %arg, i32 0, i32 2
  %23 = ptrtoint ptr %p1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p1.i, align 4
  %call11.i = tail call i32 %22(ptr noundef %isac8.i, i32 noundef 39424, i32 noundef %24) #9
  br label %cleanup

do.end.i:                                         ; preds = %sw.bb47
  call void @__sanitizer_cov_trace_pc() #11
  %name.i = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 2
  %call13.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %name.i, i32 noundef %13) #12
  br label %cleanup

do.body49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sfax_dctrl.__UNIQUE_ID_ddebug471, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sfax_dctrl, %if.then61)) #9
          to label %cleanup [label %if.then61], !srcloc !169

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #11
  %name62 = getelementptr inbounds %struct.sfax_hw, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sfax_dctrl.__UNIQUE_ID_ddebug471, ptr noundef nonnull @.str.32, ptr noundef %name62, i32 noundef %cmd) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then61, %do.body49, %do.end.i, %sw.bb7.i, %if.end.i, %sw.bb2.i.cleanup_crit_edge, %sw.bb.i, %do.end46, %do.end21, %if.end16.cleanup_crit_edge, %if.end13.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then61 ], [ 0, %do.end46 ], [ %err.0, %if.end13.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ 0, %do.end21 ], [ -22, %do.end.i ], [ %call11.i, %sw.bb7.i ], [ %call.i, %if.end.i ], [ 0, %sw.bb.i ], [ -22, %sw.bb2.i.cleanup_crit_edge ], [ -22, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNisar_init(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDN_register_device(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @disable_hwirq(ptr nocapture noundef readonly %sf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %p_isac.i = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 6
  %ale.i = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale.i, align 4
  %and.i = and i32 %1, 1048575
  %add.i = or i32 %and.i, -18874368
  %2 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 32) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %p_isac.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isac.i, align 4
  %and5.i = and i32 %4, 1048575
  %add6.i = or i32 %and5.i, -18874368
  %5 = inttoptr i32 %add6.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 -1) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %p_isar.i = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 7
  %ale.i4 = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 7, i32 1
  %6 = ptrtoint ptr %ale.i4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ale.i4, align 4
  %and.i5 = and i32 %7, 1048575
  %add.i6 = or i32 %and.i5, -18874368
  %8 = inttoptr i32 %add.i6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 117) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %9 = ptrtoint ptr %p_isar.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %p_isar.i, align 4
  %and5.i7 = and i32 %10, 1048575
  %add6.i8 = or i32 %and5.i7, -18874368
  %11 = inttoptr i32 %add6.i8 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 0) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !167
  tail call void @arm_heavy_mb() #9
  %cfg = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 5
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %cfg, align 8
  %add = add i32 %13, 5
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %14 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 0) #9, !srcloc !159
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDN_unregister_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_disable_device(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_speedfax(ptr noundef %sf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @reset_speedfax.__UNIQUE_ID_ddebug468, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@reset_speedfax, %if.then)) #9
          to label %do.body3 [label %if.then], !srcloc !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 2
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @reset_speedfax.__UNIQUE_ID_ddebug468, ptr noundef nonnull @.str.27, ptr noundef %name) #9
  br label %do.body3

do.body3:                                         ; preds = %if.then, %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  tail call void @arm_heavy_mb() #9
  %cfg = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 5
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cfg, align 8
  %and = and i32 %1, 1048575
  %add5 = or i32 %and, -18874368
  %2 = inttoptr i32 %add5 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 1) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg, align 8
  %add10 = add i32 %4, 3
  %and11 = and i32 %add10, 1048575
  %add12 = or i32 %and11, -18874368
  %5 = inttoptr i32 %add12 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 1) #9, !srcloc !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 214748000) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !174
  tail call void @arm_heavy_mb() #9
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cfg, align 8
  %and18 = and i32 %8, 1048575
  %add19 = or i32 %and18, -18874368
  %9 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 0) #9, !srcloc !159
  %aux_data = getelementptr inbounds %struct.sfax_hw, ptr %sf, i32 0, i32 8
  %10 = ptrtoint ptr %aux_data to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 24, ptr %aux_data, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !175
  tail call void @arm_heavy_mb() #9
  %11 = ptrtoint ptr %aux_data to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aux_data, align 4
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg, align 8
  %add25 = add i32 %14, 3
  %and26 = and i32 %add25, 1048575
  %add27 = or i32 %and26, -18874368
  %15 = inttoptr i32 %add27 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %12) #9, !srcloc !159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %p_isac = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  %3 = ptrtoint ptr %p_isac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isac, align 4
  %and2 = and i32 %4, 1048575
  %add3 = or i32 %and2, -18874368
  %5 = inttoptr i32 %add3 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !163
  tail call void @arm_heavy_mb() #9
  %p_isac = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !164
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %p_isac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isac, align 4
  %and5 = and i32 %4, 1048575
  %add6 = or i32 %and5, -18874368
  %5 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %val) #9, !srcloc !159
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !179
  tail call void @arm_heavy_mb() #9
  %p_isac = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  %3 = ptrtoint ptr %p_isac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isac, align 4
  %and2 = and i32 %4, 1048575
  %add3 = or i32 %and2, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAC_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !180
  tail call void @arm_heavy_mb() #9
  %p_isac = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 6, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  %3 = ptrtoint ptr %p_isac to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isac, align 4
  %and2 = and i32 %4, 1048575
  %add3 = or i32 %and2, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @ReadISAR_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %p_isar = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  %3 = ptrtoint ptr %p_isar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isar, align 4
  %and2 = and i32 %4, 1048575
  %add3 = or i32 %and2, -18874368
  %5 = inttoptr i32 %add3 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #9, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  ret i8 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteISAR_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !165
  tail call void @arm_heavy_mb() #9
  %p_isar = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !166
  tail call void @arm_heavy_mb() #9
  %3 = ptrtoint ptr %p_isar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isar, align 4
  %and5 = and i32 %4, 1048575
  %add6 = or i32 %and5, -18874368
  %5 = inttoptr i32 %add6 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 %val) #9, !srcloc !159
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ReadFiFoISAR_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !183
  tail call void @arm_heavy_mb() #9
  %p_isar = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  %3 = ptrtoint ptr %p_isar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isar, align 4
  %and2 = and i32 %4, 1048575
  %add3 = or i32 %and2, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void @__raw_readsb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @WriteFiFoISAR_IND(ptr nocapture noundef readonly %p, i8 noundef zeroext %off, ptr noundef %dp, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !184
  tail call void @arm_heavy_mb() #9
  %p_isar = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7
  %ale = getelementptr inbounds %struct.sfax_hw, ptr %p, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %ale to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ale, align 4
  %and = and i32 %1, 1048575
  %add = or i32 %and, -18874368
  %2 = inttoptr i32 %add to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 %off) #9, !srcloc !159
  %3 = ptrtoint ptr %p_isar to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %p_isar, align 4
  %and2 = and i32 %4, 1048575
  %add3 = or i32 %and2, -18874368
  %5 = inttoptr i32 %add3 to ptr
  tail call void @__raw_writesb(ptr noundef nonnull %5, ptr noundef %dp, i32 noundef %size) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesb(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @speedfax_irq(i32 noundef %intno, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @irqloops, align 4
  %lock = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %cfg = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 5
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cfg, align 8
  %add = add i32 %2, 7
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %3 = inttoptr i32 %add1 to ptr
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %3) #9, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !185
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %irqcnt = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 4
  %6 = ptrtoint ptr %irqcnt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irqcnt, align 4
  %inc = add i32 %7, 1
  store i32 %inc, ptr %irqcnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %p_isar.i = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 7
  %ale.i = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 7, i32 1
  %8 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ale.i, align 4
  %and.i = and i32 %9, 1048575
  %add.i = or i32 %and.i, -18874368
  %10 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 117) #9, !srcloc !159
  %11 = ptrtoint ptr %p_isar.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %p_isar.i, align 4
  %and2.i = and i32 %12, 1048575
  %add3.i = or i32 %and2.i, -18874368
  %13 = inttoptr i32 %add3.i to ptr
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %13) #9, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %isar = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 11
  %p_isac.i = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 6
  %ale.i69 = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 6, i32 1
  %isac = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 10
  br label %Start_ISAR

Start_ISAR:                                       ; preds = %land.lhs.true.Start_ISAR_crit_edge, %if.end
  %cnt.0 = phi i32 [ %0, %if.end ], [ %dec, %land.lhs.true.Start_ISAR_crit_edge ]
  %val.0 = phi i8 [ %14, %if.end ], [ %29, %land.lhs.true.Start_ISAR_crit_edge ]
  %15 = and i8 %val.0, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool8.not = icmp eq i8 %15, 0
  br i1 %tobool8.not, label %Start_ISAR.if.end10_crit_edge, label %if.then9

Start_ISAR.if.end10_crit_edge:                    ; preds = %Start_ISAR
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

if.then9:                                         ; preds = %Start_ISAR
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mISDNisar_irq(ptr noundef %isar) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %Start_ISAR.if.end10_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !176
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %ale.i69 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ale.i69, align 4
  %and.i70 = and i32 %17, 1048575
  %add.i71 = or i32 %and.i70, -18874368
  %18 = inttoptr i32 %add.i71 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 32) #9, !srcloc !159
  %19 = ptrtoint ptr %p_isac.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %p_isac.i, align 4
  %and2.i72 = and i32 %20, 1048575
  %add3.i73 = or i32 %and2.i72, -18874368
  %21 = inttoptr i32 %add3.i73 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #9, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !178
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %call14 = tail call i32 @mISDNisac_irq(ptr noundef %isac, i8 noundef zeroext %22) #9
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !181
  tail call void @arm_heavy_mb() #9
  %23 = ptrtoint ptr %ale.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ale.i, align 4
  %and.i76 = and i32 %24, 1048575
  %add.i77 = or i32 %and.i76, -18874368
  %25 = inttoptr i32 %add.i77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 117) #9, !srcloc !159
  %26 = ptrtoint ptr %p_isar.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %p_isar.i, align 4
  %and2.i78 = and i32 %27, 1048575
  %add3.i79 = or i32 %and2.i78, -18874368
  %28 = inttoptr i32 %add3.i79 to ptr
  %29 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %28) #9, !srcloc !177
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !182
  %30 = and i8 %29, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool19.not = icmp eq i8 %30, 0
  br i1 %tobool19.not, label %if.end22, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end15
  %dec = add i32 %cnt.0, -1
  %tobool20.not = icmp eq i32 %cnt.0, 0
  br i1 %tobool20.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.Start_ISAR_crit_edge

land.lhs.true.Start_ISAR_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %Start_ISAR

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end15
  %31 = load i32, ptr @irqloops, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %cnt.0, i32 %31)
  %cmp = icmp ult i32 %cnt.0, %31
  br i1 %cmp, label %do.body, label %if.end22.if.end33_crit_edge

if.end22.if.end33_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33

do.body:                                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @speedfax_irq.__UNIQUE_ID_ddebug467, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@speedfax_irq, %if.then30)) #9
          to label %if.end33 [label %if.then30], !srcloc !169

if.then30:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %name = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 2
  %32 = load i32, ptr @irqloops, align 4
  %sub = sub i32 %32, %cnt.0
  %33 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i80 = and i32 %33, -16384
  %34 = inttoptr i32 %and.i80 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @speedfax_irq.__UNIQUE_ID_ddebug467, ptr noundef nonnull @.str.49, ptr noundef %name, i32 noundef %sub, i32 noundef %36) #9
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %do.body, %if.end22.if.end33_crit_edge
  %37 = load i32, ptr @irqloops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool34.not = icmp ne i32 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %tobool36.not = icmp eq i32 %cnt.0, 0
  %or.cond = select i1 %tobool34.not, i1 %tobool36.not, i1 false
  br i1 %or.cond, label %do.end40, label %if.end33.cleanup_crit_edge

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end40:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  %name42 = getelementptr inbounds %struct.sfax_hw, ptr %dev_id, i32 0, i32 2
  %38 = tail call i32 @llvm.read_register.i32(metadata !147) #9
  %and.i81 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i81 to ptr
  %cpu45 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %cpu45 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu45, align 4
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef %name42, i32 noundef %37, i32 noundef %41) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end40, %if.end33.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %do.end40 ], [ 1, %if.end33.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msleep_interruptible(i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mISDNisar_irq(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mISDNisac_irq(ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #0 section ".spinlock.text"

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !22, !24, !26, !28, !29, !30, !32, !33, !35, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !80, !82, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !102, !103, !105, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146}
!llvm.named.register.sp = !{!147}
!llvm.module.flags = !{!148, !149, !150, !151, !152, !153, !154, !155}
!llvm.ident = !{!156}

!0 = !{ptr @__UNIQUE_ID_author459, !1, !"__UNIQUE_ID_author459", i1 false, i1 false}
!1 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 99, i32 1}
!2 = !{ptr @__UNIQUE_ID_file460, !3, !"__UNIQUE_ID_file460", i1 false, i1 false}
!3 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 100, i32 1}
!4 = !{ptr @__UNIQUE_ID_license461, !3, !"__UNIQUE_ID_license461", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_version462, !6, !"__UNIQUE_ID_version462", i1 false, i1 false}
!6 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 101, i32 1}
!7 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @__modver_attr, !6, !"__modver_attr", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_firmware463, !12, !"__UNIQUE_ID_firmware463", i1 false, i1 false}
!12 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 102, i32 1}
!13 = !{ptr @__param_debug, !14, !"__param_debug", i1 false, i1 false}
!14 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 103, i32 1}
!15 = !{ptr @__UNIQUE_ID_debug464, !16, !"__UNIQUE_ID_debug464", i1 false, i1 false}
!16 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 104, i32 1}
!17 = !{ptr @__param_irqloops, !18, !"__param_irqloops", i1 false, i1 false}
!18 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 105, i32 1}
!19 = !{ptr @__UNIQUE_ID_irqloopstype465, !18, !"__UNIQUE_ID_irqloopstype465", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_irqloops466, !21, !"__UNIQUE_ID_irqloops466", i1 false, i1 false}
!21 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 106, i32 1}
!22 = !{ptr @__initcall__kmod_speedfax__473_518_Speedfax_init6, !23, !"__initcall__kmod_speedfax__473_518_Speedfax_init6", i1 false, i1 false}
!23 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 518, i32 1}
!24 = !{ptr @__exitcall_Speedfax_cleanup, !25, !"__exitcall_Speedfax_cleanup", i1 false, i1 false}
!25 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 519, i32 1}
!26 = !{ptr @debug, !27, !"debug", i1 false, i1 false}
!27 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 54, i32 12}
!28 = !{ptr @__param_str_debug, !14, !"__param_str_debug", i1 false, i1 false}
!29 = !{ptr @__param_ops_debug, !14, !"__param_ops_debug", i1 false, i1 false}
!30 = !{ptr @.str.3, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 73, i32 8}
!32 = !{ptr @card_lock, !31, !"card_lock", i1 false, i1 false}
!33 = !{ptr @Cards, !34, !"Cards", i1 false, i1 false}
!34 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 72, i32 8}
!35 = !{ptr @__param_str_irqloops, !18, !"__param_str_irqloops", i1 false, i1 false}
!36 = !{ptr @irqloops, !37, !"irqloops", i1 false, i1 false}
!37 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 55, i32 12}
!38 = !{ptr @.str.4, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 495, i32 10}
!40 = !{ptr @sfaxpci_driver, !41, !"sfaxpci_driver", i1 false, i1 false}
!41 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 494, i32 26}
!42 = !{ptr @.str.5, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 484, i32 26}
!44 = !{ptr @.str.6, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 488, i32 26}
!46 = !{ptr @sfaxpci_ids, !47, !"sfaxpci_ids", i1 false, i1 false}
!47 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 481, i32 29}
!48 = !{ptr @.str.7, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 448, i32 3}
!50 = !{ptr @.str.8, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.9, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sfaxpci_probe._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @sfaxpci_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 458, i32 2}
!56 = !{ptr @sfaxpci_probe._entry.10, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sfaxpci_probe._entry_ptr.12, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.13, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 368, i32 44}
!60 = !{ptr @setup_instance.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 373, i32 2}
!62 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.15, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 381, i32 36}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 383, i32 3}
!67 = !{ptr @.str.17, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @setup_instance._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @setup_instance._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 388, i32 3}
!72 = !{ptr @setup_instance._entry.18, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @setup_instance._entry_ptr.20, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 419, i32 3}
!76 = !{ptr @setup_instance._entry.21, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @setup_instance._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @sfax_cnt, !79, !"sfax_cnt", i1 false, i1 false}
!79 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 53, i32 12}
!80 = !{ptr @.str.24, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 199, i32 3}
!82 = !{ptr @.str.25, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sfax_ctrl._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @sfax_ctrl._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 165, i32 2}
!87 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @reset_speedfax.__UNIQUE_ID_ddebug468, !86, !"__UNIQUE_ID_ddebug468", i1 false, i1 false}
!89 = !{ptr @.str.28, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 244, i32 2}
!91 = !{ptr @.str.29, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @sfax_dctrl.__UNIQUE_ID_ddebug469, !90, !"__UNIQUE_ID_ddebug469", i1 false, i1 false}
!93 = !{ptr @.str.30, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 255, i32 4}
!95 = !{ptr @sfax_dctrl._entry, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @sfax_dctrl._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 258, i32 3}
!99 = !{ptr @sfax_dctrl.__UNIQUE_ID_ddebug470, !98, !"__UNIQUE_ID_ddebug470", i1 false, i1 false}
!100 = !{ptr @.str.32, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 266, i32 3}
!102 = !{ptr @sfax_dctrl.__UNIQUE_ID_ddebug471, !101, !"__UNIQUE_ID_ddebug471", i1 false, i1 false}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 228, i32 3}
!105 = !{ptr @.str.34, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @channel_ctrl._entry, !104, !"_entry", i1 false, i1 false}
!107 = !{ptr @channel_ctrl._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 317, i32 3}
!110 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @setup_speedfax._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @setup_speedfax._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 280, i32 3}
!115 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @init_card._entry, !114, !"_entry", i1 false, i1 false}
!117 = !{ptr @init_card._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 288, i32 4}
!120 = !{ptr @init_card._entry.39, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @init_card._entry_ptr.41, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 298, i32 4}
!124 = !{ptr @init_card._entry.42, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @init_card._entry_ptr.44, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 301, i32 4}
!128 = !{ptr @init_card._entry.45, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @init_card._entry_ptr.47, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.48, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 136, i32 3}
!132 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @speedfax_irq.__UNIQUE_ID_ddebug467, !131, !"__UNIQUE_ID_ddebug467", i1 false, i1 false}
!134 = !{ptr @.str.50, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 139, i32 3}
!136 = !{ptr @speedfax_irq._entry, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @speedfax_irq._entry_ptr, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 478, i32 3}
!140 = !{ptr @.str.52, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @sfax_remove_pci.__UNIQUE_ID_ddebug472, !139, !"__UNIQUE_ID_ddebug472", i1 false, i1 false}
!142 = !{ptr @.str.53, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/isdn/hardware/mISDN/speedfax.c", i32 506, i32 2}
!144 = !{ptr @.str.54, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @Speedfax_init._entry, !143, !"_entry", i1 false, i1 false}
!146 = !{ptr @Speedfax_init._entry_ptr, !143, !"_entry_ptr", i1 false, i1 false}
!147 = !{!"sp"}
!148 = !{i32 1, !"wchar_size", i32 2}
!149 = !{i32 1, !"min_enum_size", i32 4}
!150 = !{i32 8, !"branch-target-enforcement", i32 0}
!151 = !{i32 8, !"sign-return-address", i32 0}
!152 = !{i32 8, !"sign-return-address-all", i32 0}
!153 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!154 = !{i32 7, !"uwtable", i32 1}
!155 = !{i32 7, !"frame-pointer", i32 2}
!156 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!157 = !{!"auto-init"}
!158 = !{i64 2157256459}
!159 = !{i64 4208373}
!160 = !{i64 2157256781}
!161 = !{i64 2157257118}
!162 = !{i64 2157257459}
!163 = !{i64 2157216276}
!164 = !{i64 2157216619}
!165 = !{i64 2157219453}
!166 = !{i64 2157219796}
!167 = !{i64 2157226108}
!168 = !{i64 2157225757}
!169 = !{i64 2148727762, i64 2148727767, i64 2148727780, i64 2148727824, i64 2148727858, i64 2148727879}
!170 = !{i64 2157232763}
!171 = !{i64 2157233132}
!172 = !{i64 2157228690}
!173 = !{i64 2157229068}
!174 = !{i64 2157230705}
!175 = !{i64 2157231099}
!176 = !{i64 2157215625}
!177 = !{i64 4208768}
!178 = !{i64 2157216045}
!179 = !{i64 2157216979}
!180 = !{i64 2157217504}
!181 = !{i64 2157218802}
!182 = !{i64 2157219222}
!183 = !{i64 2157220156}
!184 = !{i64 2157220681}
!185 = !{i64 2157221266}
