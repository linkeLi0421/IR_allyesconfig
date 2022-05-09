; ModuleID = '/llk/IR_all_yes/drivers/usb/host/ehci-pci.c_pt.bc'
source_filename = "../drivers/usb/host/ehci-pci.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ehci_driver_overrides = type { i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pci_device_id = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_devmap = type { [4 x i32] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.72, i32 }
%union.anon.72 = type { ptr }
%struct.ehci_regs = type { i32, i32, i32, i32, i32, i32, i32, [2 x i32], i32, [6 x i32], i32, %union.anon.73, %union.anon.75, [2 x i32], i32 }
%union.anon.73 = type { [15 x i32] }
%union.anon.75 = type { %struct.anon.76 }
%struct.anon.76 = type { i32, [15 x i32] }
%struct.ehci_caps = type { i32, i32, i32, [8 x i8] }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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

@__initcall__kmod_ehci_pci__243_423_ehci_pci_init6 = internal global ptr @ehci_pci_init, section ".initcall6.init", align 4
@ehci_pci_driver = internal global { %struct.pci_driver, [36 x i8] } { %struct.pci_driver { %struct.list_head zeroinitializer, ptr @hcd_name, ptr @pci_ids, ptr @ehci_pci_probe, ptr @ehci_pci_remove, ptr null, ptr null, ptr @usb_hcd_pci_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @usb_hcd_pci_pm_ops, ptr null, ptr null }, %struct.pci_dynids zeroinitializer }, [36 x i8] zeroinitializer }, align 32
@__exitcall_ehci_pci_cleanup = internal global ptr @ehci_pci_cleanup, section ".exitcall.exit", align 4
@__UNIQUE_ID_description244 = internal constant [46 x i8] c"ehci_pci.description=EHCI PCI platform driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author245 = internal constant [31 x i8] c"ehci_pci.author=David Brownell\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [27 x i8] c"ehci_pci.author=Alan Stern\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [40 x i8] c"ehci_pci.file=drivers/usb/host/ehci-pci\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [21 x i8] c"ehci_pci.license=GPL\00", section ".modinfo", align 1
@ehci_pci_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: EHCI PCI platform driver\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ehci_pci_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/ehci-pci.c\00", [36 x i8] zeroinitializer }, align 32
@ehci_pci_init._entry_ptr = internal global ptr @ehci_pci_init._entry, section ".printk_index", align 4
@hcd_name = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ehci-pci\00", [23 x i8] zeroinitializer }, align 32
@ehci_pci_hc_driver = internal global %struct.hc_driver zeroinitializer, section ".data..read_mostly", align 4
@pci_overrides = internal constant %struct.ehci_driver_overrides { i32 0, ptr @ehci_pci_setup, ptr null }, section ".init.rodata", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ehci_pci\00", [23 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 113, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unsupported big endian Toshiba quirk\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ehci_pci_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr = internal global ptr @ehci_pci_setup._entry, section ".printk_index", align 4
@ehci_pci_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.5, ptr @.str.2, i32 129, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"can't enable NVidia workaround for >2GB RAM\0A\00", [51 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.10 = internal global ptr @ehci_pci_setup._entry.8, section ".printk_index", align 4
@ehci_pci_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.5, ptr @.str.2, i32 155, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ignoring AMD8111 (errata)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.14 = internal global ptr @ehci_pci_setup._entry.11, section ".printk_index", align 4
@ehci_pci_setup._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 169, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"applying AMD SB700/SB800/Hudson-2/3 EHCI dummy qh workaround\0A\00", [34 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.17 = internal global ptr @ehci_pci_setup._entry.15, section ".printk_index", align 4
@ehci_pci_setup._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 200, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.19 = internal global ptr @ehci_pci_setup._entry.18, section ".printk_index", align 4
@ehci_pci_setup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 208, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"applying AMD SB600/SB700 USB freeze workaround\0A\00", [48 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.22 = internal global ptr @ehci_pci_setup._entry.20, section ".printk_index", align 4
@ehci_pci_setup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.2, i32 215, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"applying MosChip frame-index workaround\0A\00", [55 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.25 = internal global ptr @ehci_pci_setup._entry.23, section ".printk_index", align 4
@ehci_pci_setup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.2, i32 221, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"applying Synopsys HC workaround\0A\00", [63 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.28 = internal global ptr @ehci_pci_setup._entry.26, section ".printk_index", align 4
@ehci_pci_setup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.2, i32 241, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"debug port %d%s\0A\00", [47 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.31 = internal global ptr @ehci_pci_setup._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" IN USE\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@ehci_pci_setup._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.5, ptr @.str.2, i32 266, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"disable ppcd for nvidia mcp89\0A\00", [33 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.36 = internal global ptr @ehci_pci_setup._entry.34, section ".printk_index", align 4
@ehci_pci_setup.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.5, ptr @.str.2, ptr @.str.37, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"bogus port configuration: cc=%d x pcc=%d < ports=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.5, ptr @.str.2, i32 316, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Enabling legacy PCI PM\0A\00", [40 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.40 = internal global ptr @ehci_pci_setup._entry.38, section ".printk_index", align 4
@ehci_pci_setup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.5, ptr @.str.2, i32 323, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"selective suspend/wakeup unavailable\0A\00", [58 x i8] zeroinitializer }, align 32
@ehci_pci_setup._entry_ptr.43 = internal global ptr @ehci_pci_setup._entry.41, section ".printk_index", align 4
@ehci_pci_reinit.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.44, ptr @.str.2, ptr @.str.45, i8 0, i8 17, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ehci_pci_reinit\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MWI active\0A\00", [20 x i8] zeroinitializer }, align 32
@pci_ids = internal constant { [3 x %struct.pci_device_id], [32 x i8] } { [3 x %struct.pci_device_id] [%struct.pci_device_id { i32 -1, i32 -1, i32 -1, i32 -1, i32 787232, i32 -1, i32 0, i32 0 }, %struct.pci_device_id { i32 4170, i32 52224, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@usb_hcd_pci_pm_ops = external dso_local constant %struct.dev_pm_ops, align 4
@bypass_pci_id_table = internal constant { [4 x %struct.pci_device_id], [32 x i8] } { [4 x %struct.pci_device_id] [%struct.pci_device_id { i32 32902, i32 2065, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 2089, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id { i32 32902, i32 57350, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0 }, %struct.pci_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 16, i64 4098, i64 4130, i64 4143, i64 4318, i64 4358, i64 6446, i64 6629, i64 32902, i64 38672]
@__sancov_gen_cov_switch_values.46 = internal global [7 x i64] [i64 5, i64 16, i64 60, i64 91, i64 104, i64 216, i64 232]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 16, i64 29795, i64 30728]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 16, i64 17286, i64 17302]
@__sancov_gen_cov_switch_values.49 = internal global [6 x i64] [i64 4, i64 16, i64 4130, i64 4147, i64 4318, i64 32902]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 16, i64 4170, i64 6629]
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"ehci_pci_driver\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 393, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 413, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"hcd_name\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 19, i32 19 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 421, i32 9 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 112, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 128, i32 5 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 155, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 169, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 200, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 208, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 215, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 221, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 239, i32 4 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 266, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 278, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 316, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 323, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 71, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [8 x i8] c"pci_ids\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 382, i32 35 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"bypass_pci_id_table\00", align 1
@___asan_gen_.172 = private constant [31 x i8] c"../drivers/usb/host/ehci-pci.c\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.172, i32 37, i32 35 }
@llvm.compiler.used = appending global [62 x ptr] [ptr @__UNIQUE_ID_author245, ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_ehci_pci_cleanup, ptr @__initcall__kmod_ehci_pci__243_423_ehci_pci_init6, ptr @ehci_pci_cleanup, ptr @ehci_pci_init._entry, ptr @ehci_pci_init._entry_ptr, ptr @ehci_pci_setup._entry, ptr @ehci_pci_setup._entry.11, ptr @ehci_pci_setup._entry.15, ptr @ehci_pci_setup._entry.18, ptr @ehci_pci_setup._entry.20, ptr @ehci_pci_setup._entry.23, ptr @ehci_pci_setup._entry.26, ptr @ehci_pci_setup._entry.29, ptr @ehci_pci_setup._entry.34, ptr @ehci_pci_setup._entry.38, ptr @ehci_pci_setup._entry.41, ptr @ehci_pci_setup._entry.8, ptr @ehci_pci_setup._entry_ptr, ptr @ehci_pci_setup._entry_ptr.10, ptr @ehci_pci_setup._entry_ptr.14, ptr @ehci_pci_setup._entry_ptr.17, ptr @ehci_pci_setup._entry_ptr.19, ptr @ehci_pci_setup._entry_ptr.22, ptr @ehci_pci_setup._entry_ptr.25, ptr @ehci_pci_setup._entry_ptr.28, ptr @ehci_pci_setup._entry_ptr.31, ptr @ehci_pci_setup._entry_ptr.36, ptr @ehci_pci_setup._entry_ptr.40, ptr @ehci_pci_setup._entry_ptr.43, ptr @ehci_pci_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @hcd_name, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.16, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @pci_ids, ptr @bypass_pci_id_table], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hcd_name to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ehci_pci_setup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pci_ids to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bypass_pci_id_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_pci_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @hcd_name) #9
  tail call void @ehci_init_driver(ptr noundef nonnull @ehci_pci_hc_driver, ptr noundef nonnull @pci_overrides) #6
  store ptr @ehci_suspend, ptr getelementptr inbounds (%struct.hc_driver, ptr @ehci_pci_hc_driver, i32 0, i32 7), align 4
  store ptr @ehci_pci_resume, ptr getelementptr inbounds (%struct.hc_driver, ptr @ehci_pci_hc_driver, i32 0, i32 8), align 4
  %call2 = tail call i32 @__pci_register_driver(ptr noundef nonnull @ehci_pci_driver, ptr noundef null, ptr noundef nonnull @.str.3) #6
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ehci_pci_cleanup() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @pci_unregister_driver(ptr noundef nonnull @ehci_pci_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ehci_init_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_suspend(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_pci_resume(ptr noundef %hcd, i1 noundef zeroext %hibernated) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %call1 = tail call i32 @ehci_resume(ptr noundef %hcd, i1 noundef zeroext %hibernated) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %call.i = tail call i32 @pci_set_mwi(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.then.if.end8.i_crit_edge

if.then.if.end8.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_pci_reinit.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_pci_resume, %if.then6.i)) #6
          to label %if.end8.i [label %if.then6.i], !srcloc !102

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_pci_reinit.__UNIQUE_ID_ddebug241, ptr noundef %3, ptr noundef nonnull @.str.45) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %do.body.i, %if.then.if.end8.i_crit_edge
  %vendor.i.i = getelementptr i8, ptr %1, i32 -104
  %4 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vendor.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %5)
  %cmp.i.i = icmp eq i16 %5, -32634
  br i1 %cmp.i.i, label %is_intel_quark_x1000.exit.i, label %if.end8.i.if.end_crit_edge

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

is_intel_quark_x1000.exit.i:                      ; preds = %if.end8.i
  %device.i.i = getelementptr i8, ptr %1, i32 -102
  %6 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2361, i16 %7)
  %cmp3.i.i = icmp eq i16 %7, 2361
  br i1 %cmp3.i.i, label %if.then10.i, label %is_intel_quark_x1000.exit.i.if.end_crit_edge

is_intel_quark_x1000.exit.i.if.end_crit_edge:     ; preds = %is_intel_quark_x1000.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then10.i:                                      ; preds = %is_intel_quark_x1000.exit.i
  %imx28_write_fix.i.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %imx28_write_fix.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i.i = load i32, ptr %imx28_write_fix.i.i, align 4
  %9 = and i32 %bf.load.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then10.i.if.end_crit_edge

if.then10.i.if.end_crit_edge:                     ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.body.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 8
  %hostpc.i = getelementptr inbounds %struct.ehci_regs, ptr %11, i32 0, i32 12, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hostpc.i, i32 2130738944) #6, !srcloc !104
  br label %if.end

if.end:                                           ; preds = %do.body.i.i, %if.then10.i.if.end_crit_edge, %is_intel_quark_x1000.exit.i.if.end_crit_edge, %if.end8.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pci_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_pci_setup(ptr noundef %hcd) #3 align 64 {
entry:
  %temp = alloca i32, align 4
  %tmp93 = alloca i8, align 1
  %tmp139 = alloca i8, align 1
  %port_wake = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %temp) #6
  %2 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %temp, align 4, !annotation !105
  %regs = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 16
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %caps = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 18
  %5 = ptrtoint ptr %caps to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %caps, align 4
  %vendor = getelementptr i8, ptr %1, i32 -104
  %6 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %vendor, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %entry.sw.epilog178_crit_edge [
    i16 4143, label %sw.bb
    i16 4318, label %sw.bb7
    i16 -32634, label %sw.bb28
    i16 6446, label %sw.bb38
    i16 4130, label %sw.bb49
    i16 4358, label %sw.bb83
    i16 4098, label %sw.bb103
    i16 -26864, label %do.end155
    i16 6629, label %sw.bb162
  ]

entry.sw.epilog178_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

sw.bb:                                            ; preds = %entry
  %device = getelementptr i8, ptr %1, i32 -102
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %device, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 437, i16 %10)
  %cmp = icmp eq i16 %10, 437
  br i1 %cmp, label %do.end, label %sw.bb.sw.epilog178_crit_edge

sw.bb.sw.epilog178_crit_edge:                     ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.4) #9
  br label %sw.epilog178

sw.bb7:                                           ; preds = %entry
  %device8 = getelementptr i8, ptr %1, i32 -102
  %13 = ptrtoint ptr %device8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %device8, align 2
  %15 = zext i16 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.46)
  switch i16 %14, label %sw.bb7.sw.epilog178_crit_edge [
    i16 60, label %sw.bb7.sw.bb10_crit_edge
    i16 91, label %sw.bb7.sw.bb10_crit_edge445
    i16 216, label %sw.bb7.sw.bb10_crit_edge446
    i16 232, label %sw.bb7.sw.bb10_crit_edge447
    i16 104, label %sw.bb22
  ]

sw.bb7.sw.bb10_crit_edge447:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb7.sw.bb10_crit_edge446:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb7.sw.bb10_crit_edge445:                      ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb7.sw.bb10_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb10

sw.bb7.sw.epilog178_crit_edge:                    ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

sw.bb10:                                          ; preds = %sw.bb7.sw.bb10_crit_edge, %sw.bb7.sw.bb10_crit_edge445, %sw.bb7.sw.bb10_crit_edge446, %sw.bb7.sw.bb10_crit_edge447
  %call11 = tail call i32 @dma_set_coherent_mask(ptr noundef %1, i64 noundef 2147483647) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end17, label %sw.bb10.sw.epilog178_crit_edge

sw.bb10.sw.epilog178_crit_edge:                   ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

do.end17:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.9) #9
  br label %sw.epilog178

sw.bb22:                                          ; preds = %sw.bb7
  %revision = getelementptr i8, ptr %1, i32 -92
  %18 = ptrtoint ptr %revision to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -92, i8 %19)
  %cmp24 = icmp ult i8 %19, -92
  br i1 %cmp24, label %if.then26, label %sw.bb22.sw.epilog178_crit_edge

sw.bb22.sw.epilog178_crit_edge:                   ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

if.then26:                                        ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #8
  %no_selective_suspend = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %20 = ptrtoint ptr %no_selective_suspend to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load = load i32, ptr %no_selective_suspend, align 4
  %bf.set = or i32 %bf.load, -2147483648
  store i32 %bf.set, ptr %no_selective_suspend, align 4
  br label %sw.epilog178

sw.bb28:                                          ; preds = %entry
  %device29 = getelementptr i8, ptr %1, i32 -102
  %21 = ptrtoint ptr %device29 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %device29, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 11888, i16 %22)
  %cmp31 = icmp eq i16 %22, 11888
  br i1 %cmp31, label %if.then33, label %sw.bb28.sw.epilog178_crit_edge

sw.bb28.sw.epilog178_crit_edge:                   ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

if.then33:                                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #8
  %has_tt = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %23 = ptrtoint ptr %has_tt to i32
  call void @__asan_load2_noabort(i32 %23)
  %bf.load34 = load i16, ptr %has_tt, align 4
  %bf.set36 = or i16 %bf.load34, 256
  store i16 %bf.set36, ptr %has_tt, align 4
  br label %sw.epilog178

sw.bb38:                                          ; preds = %entry
  %device39 = getelementptr i8, ptr %1, i32 -102
  %24 = ptrtoint ptr %device39 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %device39, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 257, i16 %25)
  %cmp41 = icmp eq i16 %25, 257
  br i1 %cmp41, label %if.then43, label %sw.bb38.sw.epilog178_crit_edge

sw.bb38.sw.epilog178_crit_edge:                   ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

if.then43:                                        ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  %has_tt44 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %26 = ptrtoint ptr %has_tt44 to i32
  call void @__asan_load2_noabort(i32 %26)
  %bf.load45 = load i16, ptr %has_tt44, align 4
  %bf.set47 = or i16 %bf.load45, 256
  store i16 %bf.set47, ptr %has_tt44, align 4
  br label %sw.epilog178

sw.bb49:                                          ; preds = %entry
  %call50 = tail call zeroext i1 @usb_amd_quirk_pll_check() #6
  br i1 %call50, label %if.then51, label %sw.bb49.if.end55_crit_edge

sw.bb49.if.end55_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end55

if.then51:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #8
  %amd_pll_fix = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %27 = ptrtoint ptr %amd_pll_fix to i32
  call void @__asan_load4_noabort(i32 %27)
  %bf.load52 = load i32, ptr %amd_pll_fix, align 4
  %bf.set54 = or i32 %bf.load52, 4194304
  store i32 %bf.set54, ptr %amd_pll_fix, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then51, %sw.bb49.if.end55_crit_edge
  %device56 = getelementptr i8, ptr %1, i32 -102
  %28 = ptrtoint ptr %device56 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %device56, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.47)
  switch i16 %29, label %if.end55.sw.epilog178_crit_edge [
    i16 29795, label %do.end63
    i16 30728, label %if.then72
  ]

if.end55.sw.epilog178_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

do.end63:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.12) #9
  br label %cleanup341

if.then72:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  %use_dummy_qh = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %33 = ptrtoint ptr %use_dummy_qh to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load73 = load i32, ptr %use_dummy_qh, align 4
  %bf.set75 = or i32 %bf.load73, 2097152
  store i32 %bf.set75, ptr %use_dummy_qh, align 4
  %34 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %35, ptr noundef nonnull @.str.16) #9
  br label %sw.epilog178

sw.bb83:                                          ; preds = %entry
  %device84 = getelementptr i8, ptr %1, i32 -102
  %36 = ptrtoint ptr %device84 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %device84, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 12548, i16 %37)
  %cmp86 = icmp eq i16 %37, 12548
  br i1 %cmp86, label %land.lhs.true, label %sw.bb83.sw.epilog178_crit_edge

sw.bb83.sw.epilog178_crit_edge:                   ; preds = %sw.bb83
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

land.lhs.true:                                    ; preds = %sw.bb83
  %revision88 = getelementptr i8, ptr %1, i32 -92
  %38 = ptrtoint ptr %revision88 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %revision88, align 4
  %40 = and i8 %39, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %40)
  %cmp90 = icmp eq i8 %40, 96
  br i1 %cmp90, label %if.then92, label %land.lhs.true.sw.epilog178_crit_edge

land.lhs.true.sw.epilog178_crit_edge:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

if.then92:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp93) #6
  %41 = ptrtoint ptr %tmp93 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %tmp93, align 1, !annotation !105
  %call94 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 75, ptr noundef nonnull %tmp93) #6
  %42 = ptrtoint ptr %tmp93 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tmp93, align 1
  %44 = and i8 %43, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool.not = icmp eq i8 %44, 0
  br i1 %tobool.not, label %if.end98, label %if.then92.cleanup_crit_edge

if.then92.cleanup_crit_edge:                      ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end98:                                         ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #8
  %or = or i8 %43, 32
  %call101 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 75, i8 noundef zeroext %or) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.then92.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp93) #6
  br label %sw.epilog178

sw.bb103:                                         ; preds = %entry
  %call104 = tail call zeroext i1 @usb_amd_quirk_pll_check() #6
  br i1 %call104, label %if.then105, label %sw.bb103.if.end110_crit_edge

sw.bb103.if.end110_crit_edge:                     ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end110

if.then105:                                       ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #8
  %amd_pll_fix106 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %45 = ptrtoint ptr %amd_pll_fix106 to i32
  call void @__asan_load4_noabort(i32 %45)
  %bf.load107 = load i32, ptr %amd_pll_fix106, align 4
  %bf.set109 = or i32 %bf.load107, 4194304
  store i32 %bf.set109, ptr %amd_pll_fix106, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then105, %sw.bb103.if.end110_crit_edge
  %device111 = getelementptr i8, ptr %1, i32 -102
  %46 = ptrtoint ptr %device111 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %device111, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 17302, i16 %47)
  %cmp113 = icmp eq i16 %47, 17302
  br i1 %cmp113, label %if.then115, label %if.end110.if.end126_crit_edge

if.end110.if.end126_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then115:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #8
  %use_dummy_qh116 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %48 = ptrtoint ptr %use_dummy_qh116 to i32
  call void @__asan_load4_noabort(i32 %48)
  %bf.load117 = load i32, ptr %use_dummy_qh116, align 4
  %bf.set119 = or i32 %bf.load117, 2097152
  store i32 %bf.set119, ptr %use_dummy_qh116, align 4
  %49 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %50, ptr noundef nonnull @.str.16) #9
  %51 = ptrtoint ptr %device111 to i32
  call void @__asan_load2_noabort(i32 %51)
  %.pr = load i16, ptr %device111, align 2
  br label %if.end126

if.end126:                                        ; preds = %if.then115, %if.end110.if.end126_crit_edge
  %52 = phi i16 [ %.pr, %if.then115 ], [ %47, %if.end110.if.end126_crit_edge ]
  %53 = zext i16 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.48)
  switch i16 %52, label %if.end126.sw.epilog178_crit_edge [
    i16 17286, label %if.end126.land.lhs.true135_crit_edge
    i16 17302, label %if.end126.land.lhs.true135_crit_edge448
  ]

if.end126.land.lhs.true135_crit_edge448:          ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true135

if.end126.land.lhs.true135_crit_edge:             ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true135

if.end126.sw.epilog178_crit_edge:                 ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

land.lhs.true135:                                 ; preds = %if.end126.land.lhs.true135_crit_edge, %if.end126.land.lhs.true135_crit_edge448
  %call136 = tail call zeroext i1 @usb_amd_hang_symptom_quirk() #6
  br i1 %call136, label %if.then138, label %land.lhs.true135.sw.epilog178_crit_edge

land.lhs.true135.sw.epilog178_crit_edge:          ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

if.then138:                                       ; preds = %land.lhs.true135
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp139) #6
  %54 = ptrtoint ptr %tmp139 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 -1, ptr %tmp139, align 1, !annotation !105
  %55 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.21) #9
  %call146 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 83, ptr noundef nonnull %tmp139) #6
  %57 = ptrtoint ptr %tmp139 to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %tmp139, align 1
  %59 = or i8 %58, 8
  %call150 = call i32 @pci_write_config_byte(ptr noundef %add.ptr, i32 noundef 83, i8 noundef zeroext %59) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp139) #6
  br label %sw.epilog178

do.end155:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %61, ptr noundef nonnull @.str.24) #9
  %frame_index_bug = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %62 = ptrtoint ptr %frame_index_bug to i32
  call void @__asan_load4_noabort(i32 %62)
  %bf.load159 = load i32, ptr %frame_index_bug, align 4
  %bf.set161 = or i32 %bf.load159, 524288
  store i32 %bf.set161, ptr %frame_index_bug, align 4
  br label %sw.epilog178

sw.bb162:                                         ; preds = %entry
  %device163 = getelementptr i8, ptr %1, i32 -102
  %63 = ptrtoint ptr %device163 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %device163, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24007, i16 %64)
  %cmp165 = icmp eq i16 %64, -24007
  br i1 %cmp165, label %do.end170, label %sw.bb162.sw.epilog178_crit_edge

sw.bb162.sw.epilog178_crit_edge:                  ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog178

do.end170:                                        ; preds = %sw.bb162
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %66, ptr noundef nonnull @.str.27) #9
  %has_synopsys_hc_bug = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %67 = ptrtoint ptr %has_synopsys_hc_bug to i32
  call void @__asan_load4_noabort(i32 %67)
  %bf.load174 = load i32, ptr %has_synopsys_hc_bug, align 4
  %bf.set176 = or i32 %bf.load174, 1048576
  store i32 %bf.set176, ptr %has_synopsys_hc_bug, align 4
  br label %sw.epilog178

sw.epilog178:                                     ; preds = %do.end170, %sw.bb162.sw.epilog178_crit_edge, %do.end155, %if.then138, %land.lhs.true135.sw.epilog178_crit_edge, %if.end126.sw.epilog178_crit_edge, %cleanup, %land.lhs.true.sw.epilog178_crit_edge, %sw.bb83.sw.epilog178_crit_edge, %if.then72, %if.end55.sw.epilog178_crit_edge, %if.then43, %sw.bb38.sw.epilog178_crit_edge, %if.then33, %sw.bb28.sw.epilog178_crit_edge, %if.then26, %sw.bb22.sw.epilog178_crit_edge, %do.end17, %sw.bb10.sw.epilog178_crit_edge, %sw.bb7.sw.epilog178_crit_edge, %do.end, %sw.bb.sw.epilog178_crit_edge, %entry.sw.epilog178_crit_edge
  %call179 = call zeroext i8 @pci_find_capability(ptr noundef %add.ptr, i32 noundef 10) #6
  %conv180 = zext i8 %call179 to i32
  %68 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %conv180, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call179)
  %tobool181.not = icmp eq i8 %call179, 0
  br i1 %tobool181.not, label %sw.epilog178.if.end213_crit_edge, label %if.then182

sw.epilog178.if.end213_crit_edge:                 ; preds = %sw.epilog178
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

if.then182:                                       ; preds = %sw.epilog178
  %call183 = call i32 @pci_read_config_dword(ptr noundef %add.ptr, i32 noundef %conv180, ptr noundef nonnull %temp) #6
  %69 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %temp, align 4
  %shr = lshr i32 %70, 16
  store i32 %shr, ptr %temp, align 4
  %shr184.mask = and i32 %70, -536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %shr184.mask)
  %cmp186 = icmp eq i32 %shr184.mask, 536870912
  br i1 %cmp186, label %if.then188, label %if.then182.if.end213_crit_edge

if.then182.if.end213_crit_edge:                   ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

if.then188:                                       ; preds = %if.then182
  %71 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %caps, align 4
  %hcs_params190 = getelementptr inbounds %struct.ehci_caps, ptr %72, i32 0, i32 1
  %73 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %hcs_params190) #6, !srcloc !106
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %74 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %temp, align 4
  %and192 = and i32 %75, 8191
  store i32 %and192, ptr %temp, align 4
  %76 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regs, align 4
  %add.ptr194 = getelementptr i8, ptr %77, i32 %and192
  %debug = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 2
  %78 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %add.ptr194, ptr %debug, align 4
  %79 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #6, !srcloc !106
  %80 = call i32 @llvm.bswap.i32(i32 %79) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  %81 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %temp, align 4
  %82 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %hcd, align 8
  %84 = lshr i32 %73, 12
  %and204 = and i32 %84, 15
  %and205 = and i32 %80, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and205)
  %tobool206.not = icmp eq i32 %and205, 0
  %cond = select i1 %tobool206.not, ptr @.str.33, ptr @.str.32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %83, ptr noundef nonnull @.str.30, i32 noundef %and204, ptr noundef nonnull %cond) #9
  %85 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %temp, align 4
  %and207 = and i32 %86, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207)
  %tobool208.not = icmp eq i32 %and207, 0
  br i1 %tobool208.not, label %if.then209, label %if.then188.if.end213_crit_edge

if.then188.if.end213_crit_edge:                   ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end213

if.then209:                                       ; preds = %if.then188
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %debug to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %debug, align 4
  br label %if.end213

if.end213:                                        ; preds = %if.then209, %if.then188.if.end213_crit_edge, %if.then182.if.end213_crit_edge, %sw.epilog178.if.end213_crit_edge
  %call214 = call i32 @ehci_setup(ptr noundef %hcd) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end217, label %if.end213.cleanup341_crit_edge

if.end213.cleanup341_crit_edge:                   ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup341

if.end217:                                        ; preds = %if.end213
  %88 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %vendor, align 8
  %90 = zext i16 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.49)
  switch i16 %89, label %if.end217.sw.epilog239_crit_edge [
    i16 4147, label %if.end217.sw.bb220_crit_edge
    i16 -32634, label %if.end217.sw.bb220_crit_edge449
    i16 4130, label %if.end217.sw.bb220_crit_edge450
    i16 4318, label %sw.bb224
  ]

if.end217.sw.bb220_crit_edge450:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb220

if.end217.sw.bb220_crit_edge449:                  ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb220

if.end217.sw.bb220_crit_edge:                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb220

if.end217.sw.epilog239_crit_edge:                 ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog239

sw.bb220:                                         ; preds = %if.end217.sw.bb220_crit_edge, %if.end217.sw.bb220_crit_edge449, %if.end217.sw.bb220_crit_edge450
  %need_io_watchdog = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %91 = ptrtoint ptr %need_io_watchdog to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load221 = load i32, ptr %need_io_watchdog, align 4
  %bf.clear222 = and i32 %bf.load221, -8388609
  store i32 %bf.clear222, ptr %need_io_watchdog, align 4
  br label %sw.epilog239

sw.bb224:                                         ; preds = %if.end217
  %device225 = getelementptr i8, ptr %1, i32 -102
  %92 = ptrtoint ptr %device225 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %device225, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3485, i16 %93)
  %cond345 = icmp eq i16 %93, 3485
  br i1 %cond345, label %do.end230, label %sw.bb224.sw.epilog239_crit_edge

sw.bb224.sw.epilog239_crit_edge:                  ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog239

do.end230:                                        ; preds = %sw.bb224
  call void @__sanitizer_cov_trace_pc() #8
  %94 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %95, ptr noundef nonnull @.str.35) #9
  %has_ppcd = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 3
  %96 = ptrtoint ptr %has_ppcd to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load234 = load i8, ptr %has_ppcd, align 4
  %bf.clear235 = and i8 %bf.load234, -33
  store i8 %bf.clear235, ptr %has_ppcd, align 4
  %command = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1
  %97 = ptrtoint ptr %command to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %command, align 8
  %and237 = and i32 %98, -32769
  store i32 %and237, ptr %command, align 8
  br label %sw.epilog239

sw.epilog239:                                     ; preds = %do.end230, %sw.bb224.sw.epilog239_crit_edge, %sw.bb220, %if.end217.sw.epilog239_crit_edge
  %hcs_params240 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 3
  %99 = ptrtoint ptr %hcs_params240 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %hcs_params240, align 8
  %shr241 = lshr i32 %100, 12
  %shr244 = lshr i32 %100, 8
  %mul = mul i32 %shr241, %shr244
  %and246 = and i32 %mul, 15
  %101 = ptrtoint ptr %temp to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and246, ptr %temp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and246)
  %tobool247.not = icmp ne i32 %and246, 0
  %and251 = and i32 %100, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and251, i32 %and246)
  %cmp252 = icmp ugt i32 %and251, %and246
  %or.cond = select i1 %tobool247.not, i1 %cmp252, i1 false
  br i1 %or.cond, label %do.body255, label %sw.epilog239.if.end285thread-pre-split_crit_edge

sw.epilog239.if.end285thread-pre-split_crit_edge: ; preds = %sw.epilog239
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end285thread-pre-split

do.body255:                                       ; preds = %sw.epilog239
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_pci_setup.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_pci_setup, %if.then261)) #6
          to label %do.end276 [label %if.then261], !srcloc !102

if.then261:                                       ; preds = %do.body255
  call void @__sanitizer_cov_trace_pc() #8
  %102 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %hcd, align 8
  %104 = ptrtoint ptr %hcs_params240 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %hcs_params240, align 8
  %shr266 = lshr i32 %105, 12
  %and267 = and i32 %shr266, 15
  %shr269 = lshr i32 %105, 8
  %and270 = and i32 %shr269, 15
  %and273 = and i32 %105, 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_pci_setup.__UNIQUE_ID_ddebug242, ptr noundef %103, ptr noundef nonnull @.str.37, i32 noundef %and267, i32 noundef %and270, i32 noundef %and273) #6
  br label %do.end276

do.end276:                                        ; preds = %if.then261, %do.body255
  %106 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 6048, i16 %107)
  %cond346 = icmp eq i16 %107, 6048
  br i1 %cond346, label %sw.bb279, label %do.end276.if.end285_crit_edge

do.end276.if.end285_crit_edge:                    ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end285

sw.bb279:                                         ; preds = %do.end276
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %hcs_params240 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %hcs_params240, align 8
  %and281 = and i32 %109, -16
  %110 = ptrtoint ptr %temp to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %temp, align 4
  %or282 = or i32 %111, %and281
  store i32 %or282, ptr %temp, align 4
  store i32 %or282, ptr %hcs_params240, align 8
  br label %if.end285thread-pre-split

if.end285thread-pre-split:                        ; preds = %sw.bb279, %sw.epilog239.if.end285thread-pre-split_crit_edge
  %112 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %112)
  %.pr443 = load i16, ptr %vendor, align 8
  br label %if.end285

if.end285:                                        ; preds = %if.end285thread-pre-split, %do.end276.if.end285_crit_edge
  %113 = phi i16 [ %.pr443, %if.end285thread-pre-split ], [ %107, %do.end276.if.end285_crit_edge ]
  %114 = zext i16 %113 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.50)
  switch i16 %113, label %if.end285.if.else306_crit_edge [
    i16 4170, label %land.lhs.true290
    i16 6629, label %land.lhs.true300
  ]

if.end285.if.else306_crit_edge:                   ; preds = %if.end285
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else306

land.lhs.true290:                                 ; preds = %if.end285
  %device291 = getelementptr i8, ptr %1, i32 -102
  %115 = ptrtoint ptr %device291 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %device291, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -13312, i16 %116)
  %cmp293 = icmp eq i16 %116, -13312
  br i1 %cmp293, label %land.lhs.true290.if.end309_crit_edge, label %land.lhs.true290.if.else306_crit_edge

land.lhs.true290.if.else306_crit_edge:            ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else306

land.lhs.true290.if.end309_crit_edge:             ; preds = %land.lhs.true290
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end309

land.lhs.true300:                                 ; preds = %if.end285
  %device301 = getelementptr i8, ptr %1, i32 -102
  %117 = ptrtoint ptr %device301 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %device301, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -24007, i16 %118)
  %cmp303 = icmp eq i16 %118, -24007
  br i1 %cmp303, label %land.lhs.true300.if.end309_crit_edge, label %land.lhs.true300.if.else306_crit_edge

land.lhs.true300.if.else306_crit_edge:            ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else306

land.lhs.true300.if.end309_crit_edge:             ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end309

if.else306:                                       ; preds = %land.lhs.true300.if.else306_crit_edge, %land.lhs.true290.if.else306_crit_edge, %if.end285.if.else306_crit_edge
  %sbrn = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 4
  %call307 = call i32 @pci_read_config_byte(ptr noundef %add.ptr, i32 noundef 96, ptr noundef %sbrn) #6
  br label %if.end309

if.end309:                                        ; preds = %if.else306, %land.lhs.true300.if.end309_crit_edge, %land.lhs.true290.if.end309_crit_edge
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 1
  %119 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i)
  %tobool.i = icmp slt i16 %bf.load.i, 0
  br i1 %tobool.i, label %if.end309.if.end324_crit_edge, label %if.then312

if.end309.if.end324_crit_edge:                    ; preds = %if.end309
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end324

if.then312:                                       ; preds = %if.end309
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %port_wake) #6
  %120 = ptrtoint ptr %port_wake to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 -1, ptr %port_wake, align 2, !annotation !105
  %call313 = call i32 @pci_read_config_word(ptr noundef %add.ptr, i32 noundef 98, ptr noundef nonnull %port_wake) #6
  %121 = ptrtoint ptr %port_wake to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %port_wake, align 2
  %123 = and i16 %122, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %123)
  %tobool316.not = icmp eq i16 %123, 0
  br i1 %tobool316.not, label %if.then312.if.end323_crit_edge, label %do.end320

if.then312.if.end323_crit_edge:                   ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end323

do.end320:                                        ; preds = %if.then312
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str.39) #9
  call void @device_set_wakeup_capable(ptr noundef %1, i1 noundef zeroext true) #6
  br label %if.end323

if.end323:                                        ; preds = %do.end320, %if.then312.if.end323_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %port_wake) #6
  br label %if.end324

if.end324:                                        ; preds = %if.end323, %if.end309.if.end324_crit_edge
  %no_selective_suspend325 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 21, i32 1, i32 0, i32 0, i32 4, i32 1, i32 1
  %124 = ptrtoint ptr %no_selective_suspend325 to i32
  call void @__asan_load4_noabort(i32 %124)
  %bf.load326 = load i32, ptr %no_selective_suspend325, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load326)
  %tobool327.not = icmp sgt i32 %bf.load326, -1
  br i1 %tobool327.not, label %if.end324.if.end339_crit_edge, label %land.lhs.true328

if.end324.if.end339_crit_edge:                    ; preds = %if.end324
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end339

land.lhs.true328:                                 ; preds = %if.end324
  %125 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %125)
  %bf.load.i439 = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.load.i439)
  %tobool.i440 = icmp slt i16 %bf.load.i439, 0
  br i1 %tobool.i440, label %do.end335, label %land.lhs.true328.if.end339_crit_edge

land.lhs.true328.if.end339_crit_edge:             ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end339

do.end335:                                        ; preds = %land.lhs.true328
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %127, ptr noundef nonnull @.str.42) #9
  br label %if.end339

if.end339:                                        ; preds = %do.end335, %land.lhs.true328.if.end339_crit_edge, %if.end324.if.end339_crit_edge
  %call.i = call i32 @pci_set_mwi(ptr noundef %add.ptr) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %do.body.i, label %if.end339.if.end8.i_crit_edge

if.end339.if.end8.i_crit_edge:                    ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

do.body.i:                                        ; preds = %if.end339
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ehci_pci_reinit.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ehci_pci_setup, %if.then6.i)) #6
          to label %if.end8.i [label %if.then6.i], !srcloc !102

if.then6.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %128 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %hcd, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ehci_pci_reinit.__UNIQUE_ID_ddebug241, ptr noundef %129, ptr noundef nonnull @.str.45) #6
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %do.body.i, %if.end339.if.end8.i_crit_edge
  %130 = ptrtoint ptr %vendor to i32
  call void @__asan_load2_noabort(i32 %130)
  %131 = load i16, ptr %vendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %131)
  %cmp.i.i = icmp eq i16 %131, -32634
  br i1 %cmp.i.i, label %is_intel_quark_x1000.exit.i, label %if.end8.i.cleanup341_crit_edge

if.end8.i.cleanup341_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup341

is_intel_quark_x1000.exit.i:                      ; preds = %if.end8.i
  %device.i.i = getelementptr i8, ptr %1, i32 -102
  %132 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %device.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2361, i16 %133)
  %cmp3.i.i = icmp eq i16 %133, 2361
  br i1 %cmp3.i.i, label %if.then10.i, label %is_intel_quark_x1000.exit.i.cleanup341_crit_edge

is_intel_quark_x1000.exit.i.cleanup341_crit_edge: ; preds = %is_intel_quark_x1000.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup341

if.then10.i:                                      ; preds = %is_intel_quark_x1000.exit.i
  %134 = ptrtoint ptr %no_selective_suspend325 to i32
  call void @__asan_load4_noabort(i32 %134)
  %bf.load.i.i = load i32, ptr %no_selective_suspend325, align 4
  %135 = and i32 %bf.load.i.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool.not.i.i = icmp eq i32 %135, 0
  br i1 %tobool.not.i.i, label %do.body.i.i, label %if.then10.i.cleanup341_crit_edge

if.then10.i.cleanup341_crit_edge:                 ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup341

do.body.i.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 1
  %136 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %regs.i, align 8
  %hostpc.i = getelementptr inbounds %struct.ehci_regs, ptr %137, i32 0, i32 12, i32 0, i32 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  call void @arm_heavy_mb() #6
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %hostpc.i, i32 2130738944) #6, !srcloc !104
  br label %cleanup341

cleanup341:                                       ; preds = %do.body.i.i, %if.then10.i.cleanup341_crit_edge, %is_intel_quark_x1000.exit.i.cleanup341_crit_edge, %if.end8.i.cleanup341_crit_edge, %if.end213.cleanup341_crit_edge, %do.end63
  %retval.0 = phi i32 [ %call214, %if.end213.cleanup341_crit_edge ], [ -5, %do.end63 ], [ 0, %if.end8.i.cleanup341_crit_edge ], [ 0, %is_intel_quark_x1000.exit.i.cleanup341_crit_edge ], [ 0, %if.then10.i.cleanup341_crit_edge ], [ 0, %do.body.i.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %temp) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_quirk_pll_check() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_byte(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_write_config_byte(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @usb_amd_hang_symptom_quirk() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pci_find_capability(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_word(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_set_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ehci_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ehci_pci_probe(ptr noundef %pdev, ptr noundef %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @pci_match_id(ptr noundef nonnull @bypass_pci_id_table, ptr noundef %pdev) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @usb_hcd_pci_probe(ptr noundef %pdev, ptr noundef %id, ptr noundef nonnull @ehci_pci_hc_driver) #6
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ehci_pci_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_clear_mwi(ptr noundef %pdev) #6
  tail call void @usb_hcd_pci_remove(ptr noundef %pdev) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_shutdown(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_pci_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_match_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_clear_mwi(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_hcd_pci_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !36, !37, !38, !40, !41, !42, !43, !45, !46, !47, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !68, !70, !71, !72, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_ehci_pci__243_423_ehci_pci_init6, !1, !"__initcall__kmod_ehci_pci__243_423_ehci_pci_init6", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/ehci-pci.c", i32 423, i32 1}
!2 = !{ptr @__exitcall_ehci_pci_cleanup, !3, !"__exitcall_ehci_pci_cleanup", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/ehci-pci.c", i32 429, i32 1}
!4 = !{ptr @__UNIQUE_ID_description244, !5, !"__UNIQUE_ID_description244", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/ehci-pci.c", i32 431, i32 1}
!6 = !{ptr @__UNIQUE_ID_author245, !7, !"__UNIQUE_ID_author245", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/ehci-pci.c", i32 432, i32 1}
!8 = !{ptr @__UNIQUE_ID_author246, !9, !"__UNIQUE_ID_author246", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/ehci-pci.c", i32 433, i32 1}
!10 = !{ptr @__UNIQUE_ID_file247, !11, !"__UNIQUE_ID_file247", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/ehci-pci.c", i32 434, i32 1}
!12 = !{ptr @__UNIQUE_ID_license248, !11, !"__UNIQUE_ID_license248", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/host/ehci-pci.c", i32 413, i32 2}
!15 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ehci_pci_init._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @ehci_pci_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/ehci-pci.c", i32 421, i32 9}
!21 = !{ptr @hcd_name, !22, !"hcd_name", i1 false, i1 false}
!22 = !{!"../drivers/usb/host/ehci-pci.c", i32 19, i32 19}
!23 = !{ptr @ehci_pci_hc_driver, !24, !"ehci_pci_hc_driver", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/ehci-pci.c", i32 360, i32 39}
!25 = !{ptr @pci_overrides, !26, !"pci_overrides", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/ehci-pci.c", i32 362, i32 43}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/ehci-pci.c", i32 112, i32 4}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @ehci_pci_setup._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @ehci_pci_setup._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/ehci-pci.c", i32 128, i32 5}
!36 = !{ptr @ehci_pci_setup._entry.8, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @ehci_pci_setup._entry_ptr.10, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/ehci-pci.c", i32 155, i32 4}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @ehci_pci_setup._entry.11, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @ehci_pci_setup._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/host/ehci-pci.c", i32 169, i32 4}
!45 = !{ptr @ehci_pci_setup._entry.15, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @ehci_pci_setup._entry_ptr.17, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @ehci_pci_setup._entry.18, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/usb/host/ehci-pci.c", i32 200, i32 4}
!49 = !{ptr @ehci_pci_setup._entry_ptr.19, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/ehci-pci.c", i32 208, i32 4}
!52 = !{ptr @ehci_pci_setup._entry.20, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @ehci_pci_setup._entry_ptr.22, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/ehci-pci.c", i32 215, i32 3}
!56 = !{ptr @ehci_pci_setup._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ehci_pci_setup._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/ehci-pci.c", i32 221, i32 4}
!60 = !{ptr @ehci_pci_setup._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ehci_pci_setup._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/ehci-pci.c", i32 239, i32 4}
!64 = !{ptr @ehci_pci_setup._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ehci_pci_setup._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !63, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/ehci-pci.c", i32 266, i32 4}
!70 = !{ptr @ehci_pci_setup._entry.34, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ehci_pci_setup._entry_ptr.36, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/ehci-pci.c", i32 278, i32 3}
!74 = !{ptr @ehci_pci_setup.__UNIQUE_ID_ddebug242, !73, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/usb/host/ehci-pci.c", i32 316, i32 4}
!77 = !{ptr @ehci_pci_setup._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @ehci_pci_setup._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/host/ehci-pci.c", i32 323, i32 3}
!81 = !{ptr @ehci_pci_setup._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @ehci_pci_setup._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/usb/host/ehci-pci.c", i32 71, i32 3}
!85 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ehci_pci_reinit.__UNIQUE_ID_ddebug241, !84, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!87 = !{ptr @ehci_pci_driver, !88, !"ehci_pci_driver", i1 false, i1 false}
!88 = !{!"../drivers/usb/host/ehci-pci.c", i32 393, i32 26}
!89 = !{ptr @pci_ids, !90, !"pci_ids", i1 false, i1 false}
!90 = !{!"../drivers/usb/host/ehci-pci.c", i32 382, i32 35}
!91 = !{ptr @bypass_pci_id_table, !92, !"bypass_pci_id_table", i1 false, i1 false}
!92 = !{!"../drivers/usb/host/ehci-pci.c", i32 37, i32 35}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{i64 2148701831, i64 2148701836, i64 2148701849, i64 2148701893, i64 2148701927, i64 2148701948}
!103 = !{i64 2154694753}
!104 = !{i64 4990133}
!105 = !{!"auto-init"}
!106 = !{i64 4990551}
!107 = !{i64 2154694214}
