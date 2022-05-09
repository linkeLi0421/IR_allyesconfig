; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/tb.c_pt.bc'
source_filename = "../drivers/thunderbolt/tb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tb_cm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
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
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.tb_cfg_header = type { i32, i32 }
%struct.cfg_event_pkg = type { %struct.tb_cfg_header, i32 }
%struct.tb_hotplug_event = type { %struct.work_struct, ptr, i64, i8, i8 }
%struct.tb_tunnel = type { ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32 }
%struct.tb_xdomain = type { %struct.device, ptr, ptr, ptr, i64, i16, i16, i32, i32, %struct.mutex, ptr, ptr, i32, i32, i8, i8, %struct.ida, %struct.ida, %struct.ida, ptr, i32, i32, ptr, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, %struct.delayed_work, i32, i8, i8 }

@tb_cm_ops = internal constant { %struct.tb_cm_ops, [60 x i8] } { %struct.tb_cm_ops { ptr null, ptr @tb_start, ptr @tb_stop, ptr @tb_suspend_noirq, ptr @tb_resume_noirq, ptr null, ptr @tb_freeze_noirq, ptr @tb_thaw_noirq, ptr @tb_complete, ptr @tb_runtime_suspend, ptr @tb_runtime_resume, ptr null, ptr null, ptr @tb_handle_event, ptr null, ptr null, ptr @tb_disconnect_pci, ptr @tb_tunnel_pci, ptr null, ptr null, ptr null, ptr @tb_approve_xdomain_paths, ptr @tb_disconnect_xdomain_paths, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&tcm->remove_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@tb_probe.__key.1 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&tcm->remove_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@tb_probe.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, i8 1, i8 -83, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tb_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/thunderbolt/tb.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"using software connection manager\0A\00", [61 x i8] zeroinitializer }, align 32
@tb_scan_port.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.8, i8 0, i8 -109, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_scan_port\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%llx:%x: DP adapter HPD set, queuing hotplug\0A\00", [50 x i8] zeroinitializer }, align 32
@tb_scan_port.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.7, ptr @.str.5, ptr @.str.9, i8 0, i8 -105, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%llx:%x: port already has a remote\0A\00", [60 x i8] zeroinitializer }, align 32
@tb_scan_port._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.7, ptr @.str.5, i32 673, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%llx: failed to enable CLx on upstream port\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tb_scan_port._entry_ptr = internal global ptr @tb_scan_port._entry, section ".printk_index", align 4
@tb_scan_port._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.7, ptr @.str.5, i32 679, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%llx: failed to enable TMU\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_scan_port._entry_ptr.15 = internal global ptr @tb_scan_port._entry.13, section ".printk_index", align 4
@tb_scan_port._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.5, i32 691, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%llx: USB3 tunnel creation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@tb_scan_port._entry_ptr.18 = internal global ptr @tb_scan_port._entry.16, section ".printk_index", align 4
@tb_queue_hotplug.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"(work_completion)(&ev->work)\00", [35 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tb_handle_hotplug._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 1205, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"hotplug event from non existent switch %llx:%x (unplug: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tb_handle_hotplug\00", [46 x i8] zeroinitializer }, align 32
@tb_handle_hotplug._entry_ptr = internal global ptr @tb_handle_hotplug._entry, section ".printk_index", align 4
@tb_handle_hotplug._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.5, i32 1211, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"hotplug event from non existent port %llx:%x (unplug: %d)\0A\00", [37 x i8] zeroinitializer }, align 32
@tb_handle_hotplug._entry_ptr.24 = internal global ptr @tb_handle_hotplug._entry.22, section ".printk_index", align 4
@tb_handle_hotplug.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.25, i8 1, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"hotplug event for upstream port %llx:%x (unplug: %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@tb_handle_hotplug.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.26, i8 1, i8 50, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%llx:%x: switch unplugged\0A\00", [37 x i8] zeroinitializer }, align 32
@tb_handle_hotplug.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.27, i8 1, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%llx:%x: xdomain unplugged\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_handle_hotplug.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.28, i8 1, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%llx:%x: got unplug event for disconnected port, ignoring\0A\00", [37 x i8] zeroinitializer }, align 32
@tb_handle_hotplug.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.29, i8 1, i8 60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%llx:%x: got plug event for connected port, ignoring\0A\00", [42 x i8] zeroinitializer }, align 32
@tb_handle_hotplug.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.30, i8 1, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%llx:%x: hotplug: scanning\0A\00", [36 x i8] zeroinitializer }, align 32
@tb_handle_hotplug.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.21, ptr @.str.5, ptr @.str.31, i8 1, i8 61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%llx:%x: hotplug: no switch found\0A\00", [61 x i8] zeroinitializer }, align 32
@tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.32, ptr @.str.5, ptr @.str.33, i8 0, i8 107, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tb_reclaim_usb3_bandwidth\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"reclaiming unused bandwidth for USB3\0A\00", [58 x i8] zeroinitializer }, align 32
@tb_reclaim_usb3_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.5, i32 440, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"failed to calculate available bandwidth\0A\00", [55 x i8] zeroinitializer }, align 32
@tb_reclaim_usb3_bandwidth._entry_ptr = internal global ptr @tb_reclaim_usb3_bandwidth._entry, section ".printk_index", align 4
@tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.32, ptr @.str.5, ptr @.str.35, i8 0, i8 111, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"available bandwidth for USB3 %d/%d Mb/s\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/thunderbolt/tb.h\00", [39 x i8] zeroinitializer }, align 32
@tb_available_bandwidth.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.5, ptr @.str.38, i8 0, i8 81, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tb_available_bandwidth\00", [41 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%llx:%x: calculating available bandwidth\0A\00", [54 x i8] zeroinitializer }, align 32
@tb_available_bandwidth.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.37, ptr @.str.5, ptr @.str.39, i8 0, i8 90, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%llx:%x: link total bandwidth %d Mb/s\0A\00", [57 x i8] zeroinitializer }, align 32
@tb_remove_dp_resources.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.40, ptr @.str.5, ptr @.str.41, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tb_remove_dp_resources\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%llx:%x: DP OUT resource unavailable\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"tb_tunnel_dp\00", [19 x i8] zeroinitializer }, align 32
@tb_tunnel_dp.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.44, i8 0, i8 -35, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"looking for DP IN <-> DP OUT pairs:\0A\00", [59 x i8] zeroinitializer }, align 32
@tb_tunnel_dp.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.45, i8 0, i8 -33, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%llx:%x: in use\0A\00", [47 x i8] zeroinitializer }, align 32
@tb_tunnel_dp.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.46, i8 0, i8 -32, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%llx:%x: DP IN available\0A\00", [38 x i8] zeroinitializer }, align 32
@tb_tunnel_dp.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.47, i8 0, i8 -30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"no suitable DP IN adapter available, not tunneling\0A\00", [44 x i8] zeroinitializer }, align 32
@tb_tunnel_dp.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.49, i8 0, i8 -25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"%llx:%x: no resource available for DP IN, not tunneling\0A\00", [39 x i8] zeroinitializer }, align 32
@tb_tunnel_dp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.5, i32 934, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to release unused bandwidth\0A\00", [60 x i8] zeroinitializer }, align 32
@tb_tunnel_dp._entry_ptr = internal global ptr @tb_tunnel_dp._entry, section ".printk_index", align 4
@tb_tunnel_dp.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.51, i8 0, i8 -20, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"available bandwidth for new DP tunnel %u/%u Mb/s\0A\00", [46 x i8] zeroinitializer }, align 32
@tb_tunnel_dp.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.42, ptr @.str.5, ptr @.str.52, i8 0, i8 -19, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%llx:%x: could not allocate DP tunnel\0A\00", [57 x i8] zeroinitializer }, align 32
@tb_tunnel_dp._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.42, ptr @.str.5, i32 953, ptr @.str.55, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%llx:%x: DP tunnel activation failed, aborting\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tb_tunnel_dp._entry_ptr.56 = internal global ptr @tb_tunnel_dp._entry.53, section ".printk_index", align 4
@tb_find_dp_out.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.57, ptr @.str.5, ptr @.str.45, i8 0, i8 -45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tb_find_dp_out\00", [17 x i8] zeroinitializer }, align 32
@tb_find_dp_out.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.57, ptr @.str.5, ptr @.str.58, i8 0, i8 -44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%llx:%x: DP OUT available\0A\00", [37 x i8] zeroinitializer }, align 32
@tb_switch_type = external dso_local global %struct.device_type, align 4
@tb_dp_resource_unavailable.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.5, ptr @.str.60, i8 0, i8 -11, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tb_dp_resource_unavailable\00", [37 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%llx:%x: DP IN resource unavailable\0A\00", [59 x i8] zeroinitializer }, align 32
@tb_dp_resource_unavailable.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.59, ptr @.str.5, ptr @.str.41, i8 0, i8 -10, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@tb_dp_resource_available.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.61, ptr @.str.5, ptr @.str.62, i8 0, i8 -3, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tb_dp_resource_available\00", [39 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%llx:%x: DP %s resource available\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"IN\00", [29 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"OUT\00", [28 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tb_tunnel_usb3\00", [17 x i8] zeroinitializer }, align 32
@tb_tunnel_usb3.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.65, ptr @.str.5, ptr @.str.67, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"%llx:%x: available bandwidth for new USB3 tunnel %d/%d Mb/s\0A\00", [35 x i8] zeroinitializer }, align 32
@tb_tunnel_usb3._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.65, ptr @.str.5, i32 513, ptr @.str.55, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%llx:%x: USB3 tunnel activation failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@tb_tunnel_usb3._entry_ptr = internal global ptr @tb_tunnel_usb3._entry, section ".printk_index", align 4
@tb_add_dp_resources.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.69, ptr @.str.5, ptr @.str.70, i8 0, i8 21, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tb_add_dp_resources\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%llx:%x: DP IN resource available\0A\00", [61 x i8] zeroinitializer }, align 32
@tb_suspend_noirq.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.71, ptr @.str.5, ptr @.str.72, i8 1, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tb_suspend_noirq\00", [47 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"suspending...\0A\00", [17 x i8] zeroinitializer }, align 32
@tb_suspend_noirq.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.71, ptr @.str.5, ptr @.str.73, i8 1, i8 99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"suspend finished\0A\00", [46 x i8] zeroinitializer }, align 32
@tb_resume_noirq.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.74, ptr @.str.5, ptr @.str.75, i8 1, i8 110, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tb_resume_noirq\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"resuming...\0A\00", [19 x i8] zeroinitializer }, align 32
@tb_resume_noirq.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.74, ptr @.str.5, ptr @.str.76, i8 1, i8 120, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"tunnels restarted, sleeping for 100ms\0A\00", [57 x i8] zeroinitializer }, align 32
@tb_resume_noirq.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.3, ptr @.str.74, ptr @.str.5, ptr @.str.77, i8 1, i8 121, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"resume finished\0A\00", [47 x i8] zeroinitializer }, align 32
@tb_restore_children._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.5, i32 1435, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%llx: failed to re-enable CLx on upstream port\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tb_restore_children\00", [44 x i8] zeroinitializer }, align 32
@tb_restore_children._entry_ptr = internal global ptr @tb_restore_children._entry, section ".printk_index", align 4
@tb_restore_children._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.79, ptr @.str.5, i32 1443, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%llx: failed to restore TMU configuration\0A\00", [53 x i8] zeroinitializer }, align 32
@tb_restore_children._entry_ptr.82 = internal global ptr @tb_restore_children._entry.80, section ".printk_index", align 4
@tb_handle_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.5, i32 1302, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unexpected event %#x, ignoring\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tb_handle_event\00", [16 x i8] zeroinitializer }, align 32
@tb_handle_event._entry_ptr = internal global ptr @tb_handle_event._entry, section ".printk_index", align 4
@tb_handle_event._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.5, i32 1310, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"could not ack plug event on %llx:%x\0A\00", [59 x i8] zeroinitializer }, align 32
@tb_handle_event._entry_ptr.87 = internal global ptr @tb_handle_event._entry.85, section ".printk_index", align 4
@tb_tunnel_pci._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.88, ptr @.str.89, ptr @.str.5, i32 1090, ptr @.str.55, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%llx:%x: PCIe tunnel activation failed, aborting\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tb_tunnel_pci\00", [18 x i8] zeroinitializer }, align 32
@tb_tunnel_pci._entry_ptr = internal global ptr @tb_tunnel_pci._entry, section ".printk_index", align 4
@tb_tunnel_pci._entry.90 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.91, ptr @.str.89, ptr @.str.5, i32 1100, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%llx: failed to enable PCIe L1 for Titan Ridge\0A\00", [48 x i8] zeroinitializer }, align 32
@tb_tunnel_pci._entry_ptr.92 = internal global ptr @tb_tunnel_pci._entry.90, section ".printk_index", align 4
@tb_approve_xdomain_paths._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.94, ptr @.str.5, i32 1129, ptr @.str.55, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%llx:%x: DMA tunnel activation failed, aborting\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tb_approve_xdomain_paths\00", [39 x i8] zeroinitializer }, align 32
@tb_approve_xdomain_paths._entry_ptr = internal global ptr @tb_approve_xdomain_paths._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.95 = internal global [6 x i64] [i64 4, i64 16, i64 5494, i64 5568, i64 5587, i64 5594]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 16, i64 5607, i64 5610, i64 5615]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 4294967197, i64 4294967291]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 917761, i64 1048833, i64 2097409]
@___asan_gen_.100 = private unnamed_addr constant [10 x i8] c"tb_cm_ops\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1615, i32 31 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1714, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1716, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 590, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 606, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 673, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 679, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 691, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 66, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1203, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1209, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1216, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1227, i32 4 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1243, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1260, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1264, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1267, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1270, i32 5 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 431, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 440, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 444, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant [28 x i8] c"../drivers/thunderbolt/tb.h\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.218, i32 538, i32 6 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 326, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 363, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 102, i32 4 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 876, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 884, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 893, i32 4 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 897, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 907, i32 3 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 927, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 934, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 943, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 948, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 953, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 844, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 848, i32 3 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 980, i32 3 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1013, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 459, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 501, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 512, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 85, i32 3 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1417, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1421, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1467, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1506, i32 3 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1511, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1435, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1443, i32 3 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1302, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1309, i32 3 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1089, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1100, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [28 x i8] c"../drivers/thunderbolt/tb.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 1128, i32 3 }
@llvm.compiler.used = appending global [113 x ptr] [ptr @tb_approve_xdomain_paths._entry, ptr @tb_approve_xdomain_paths._entry_ptr, ptr @tb_handle_event._entry, ptr @tb_handle_event._entry.85, ptr @tb_handle_event._entry_ptr, ptr @tb_handle_event._entry_ptr.87, ptr @tb_handle_hotplug._entry, ptr @tb_handle_hotplug._entry.22, ptr @tb_handle_hotplug._entry_ptr, ptr @tb_handle_hotplug._entry_ptr.24, ptr @tb_reclaim_usb3_bandwidth._entry, ptr @tb_reclaim_usb3_bandwidth._entry_ptr, ptr @tb_restore_children._entry, ptr @tb_restore_children._entry.80, ptr @tb_restore_children._entry_ptr, ptr @tb_restore_children._entry_ptr.82, ptr @tb_scan_port._entry, ptr @tb_scan_port._entry.13, ptr @tb_scan_port._entry.16, ptr @tb_scan_port._entry_ptr, ptr @tb_scan_port._entry_ptr.15, ptr @tb_scan_port._entry_ptr.18, ptr @tb_tunnel_dp._entry, ptr @tb_tunnel_dp._entry.53, ptr @tb_tunnel_dp._entry_ptr, ptr @tb_tunnel_dp._entry_ptr.56, ptr @tb_tunnel_pci._entry, ptr @tb_tunnel_pci._entry.90, ptr @tb_tunnel_pci._entry_ptr, ptr @tb_tunnel_pci._entry_ptr.92, ptr @tb_tunnel_usb3._entry, ptr @tb_tunnel_usb3._entry_ptr, ptr @tb_cm_ops, ptr @tb_probe.__key, ptr @.str, ptr @tb_probe.__key.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @tb_queue_hotplug.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.54, ptr @.str.55, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.88, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [97 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_cm_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_probe.__key.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_scan_port._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_scan_port._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_scan_port._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_queue_hotplug.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_handle_hotplug._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_handle_hotplug._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_reclaim_usb3_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_dp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_dp._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_usb3._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_restore_children._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_restore_children._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_handle_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_handle_event._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_pci._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_tunnel_pci._entry.90 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tb_approve_xdomain_paths._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tb_probe(ptr noundef %nhi) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tb_domain_alloc(ptr noundef %nhi, i32 noundef 100, i32 noundef 120) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %security_level = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 8
  %0 = ptrtoint ptr %security_level to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %security_level, align 4
  %cm_ops = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 6
  %1 = ptrtoint ptr %cm_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @tb_cm_ops, ptr %cm_ops, align 4
  %privdata.i = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %privdata.i, ptr %privdata.i, align 4
  %prev.i = getelementptr inbounds %struct.tb, ptr %call, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %privdata.i, ptr %prev.i, align 4
  %dp_resources = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %dp_resources to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %dp_resources, ptr %dp_resources, align 4
  %prev.i48 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dp_resources, ptr %prev.i48, align 4
  %remove_work = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 3
  tail call void @__init_work(ptr noundef %remove_work, i32 noundef 0) #6
  %6 = ptrtoint ptr %remove_work to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %remove_work, align 4
  %lockdep_map = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str, ptr noundef nonnull @tb_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry13 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %entry13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry13, ptr %entry13, align 4
  %prev.i49 = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %prev.i49 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry13, ptr %prev.i49, align 4
  %func = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 6
  %9 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @tb_remove_work, ptr %func, align 4
  %timer = getelementptr inbounds %struct.tb, ptr %call, i32 1, i32 0, i32 0, i32 7, i32 0, i32 3, i32 2
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.2, ptr noundef nonnull @tb_probe.__key.1) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_probe.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_probe, %if.then27)) #6
          to label %cleanup [label %if.then27], !srcloc !219

if.then27:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %nhi28 = getelementptr inbounds %struct.tb, ptr %call, i32 0, i32 2
  %10 = ptrtoint ptr %nhi28 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi28, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_probe.__UNIQUE_ID_ddebug274, ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then27, %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_domain_alloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_remove_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %work, i32 -148
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %root_switch = getelementptr i8, ptr %work, i32 -44
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tb_free_unplugged_children(ptr noundef nonnull %1)
  %2 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_switch, align 8
  %call3 = tail call fastcc i32 @tb_free_unplugged_xdomains(ptr noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_start(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %call1 = tail call ptr @tb_switch_alloc(ptr noundef %tb, ptr noundef %tb, i64 noundef 0) #6
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call1, ptr %root_switch, align 8
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %no_nvm_upgrade = getelementptr inbounds %struct.tb_switch, ptr %call1, i32 0, i32 23
  %2 = ptrtoint ptr %no_nvm_upgrade to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %no_nvm_upgrade, align 4
  %3 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %root_switch, align 8
  %thunderbolt_version.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %thunderbolt_version.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load.i = load i64, ptr %thunderbolt_version.i, align 4
  %bf.cast1.i = and i64 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i)
  %cmp.i54 = icmp eq i64 %bf.cast1.i, 32
  %rpm = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 26
  %frombool = zext i1 %cmp.i54 to i8
  %6 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %frombool, ptr %rpm, align 1
  %7 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root_switch, align 8
  %call11 = tail call i32 @tb_switch_configure(ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  %9 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_switch, align 8
  br i1 %tobool.not, label %if.end14, label %if.then12

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %10) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call i32 @tb_switch_add(ptr noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  %11 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %root_switch, align 8
  br i1 %tobool17.not, label %if.end20, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %12) #6
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  tail call void @tb_switch_tmu_configure(ptr noundef %12, i32 noundef 16, i1 noundef zeroext false) #6
  %13 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root_switch, align 8
  %call23 = tail call i32 @tb_switch_tmu_enable(ptr noundef %14) #6
  %15 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %root_switch, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %16, i32 noundef 4) #6
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 2
  %port.015.i = getelementptr %struct.tb_port, ptr %18, i32 1
  %19 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load16.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr17.i = lshr i32 %bf.load16.i, 12
  %bf.clear18.i = and i32 %bf.lshr17.i, 63
  %arrayidx219.i = getelementptr %struct.tb_port, ptr %18, i32 %bf.clear18.i
  %cmp.not20.i = icmp ugt ptr %port.015.i, %arrayidx219.i
  br i1 %cmp.not20.i, label %if.end20.tb_scan_switch.exit_crit_edge, label %if.end20.for.body.i_crit_edge

if.end20.for.body.i_crit_edge:                    ; preds = %if.end20
  br label %for.body.i

if.end20.tb_scan_switch.exit_crit_edge:           ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_scan_switch.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end20.for.body.i_crit_edge
  %port.021.i = phi ptr [ %port.0.i, %for.body.i.for.body.i_crit_edge ], [ %port.015.i, %if.end20.for.body.i_crit_edge ]
  tail call fastcc void @tb_scan_port(ptr noundef %port.021.i) #9
  %port.0.i = getelementptr %struct.tb_port, ptr %port.021.i, i32 1
  %20 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports.i, align 4
  %22 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %bf.load.i55 = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i55, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %21, i32 %bf.clear.i
  %cmp.not.i = icmp ugt ptr %port.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.body.i.tb_scan_switch.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.tb_scan_switch.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_scan_switch.exit

tb_scan_switch.exit:                              ; preds = %for.body.i.tb_scan_switch.exit_crit_edge, %if.end20.tb_scan_switch.exit_crit_edge
  %call.i13.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 12, i32 22
  %23 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store volatile i64 %call.i13.i, ptr %last_busy.i.i, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %16, i32 noundef 13) #6
  %24 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %root_switch, align 8
  tail call fastcc void @tb_switch_discover_tunnels(ptr noundef %25, ptr noundef %privdata.i, i1 noundef zeroext true) #6
  %26 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn40.i = load ptr, ptr %privdata.i, align 4
  %cmp.not41.i = icmp eq ptr %.pn40.i, %privdata.i
  br i1 %cmp.not41.i, label %tb_scan_switch.exit.tb_discover_tunnels.exit_crit_edge, label %tb_scan_switch.exit.for.body.i56_crit_edge

tb_scan_switch.exit.for.body.i56_crit_edge:       ; preds = %tb_scan_switch.exit
  br label %for.body.i56

tb_scan_switch.exit.tb_discover_tunnels.exit_crit_edge: ; preds = %tb_scan_switch.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_discover_tunnels.exit

for.body.i56:                                     ; preds = %for.inc.i.for.body.i56_crit_edge, %tb_scan_switch.exit.for.body.i56_crit_edge
  %.pn42.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i56_crit_edge ], [ %.pn40.i, %tb_scan_switch.exit.for.body.i56_crit_edge ]
  %type.i.i = getelementptr i8, ptr %.pn42.i, i32 8
  %27 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type.i.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %for.body.i56.for.inc.i_crit_edge [
    i32 0, label %if.then.i
    i32 1, label %if.then8.i
  ]

for.body.i56.for.inc.i_crit_edge:                 ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i56
  %dst_port.i = getelementptr i8, ptr %.pn42.i, i32 -36
  %30 = ptrtoint ptr %dst_port.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst_port.i, align 4
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sw.i, align 4
  %src_port.i = getelementptr i8, ptr %.pn42.i, i32 -40
  %34 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src_port.i, align 4
  %sw437.i = getelementptr inbounds %struct.tb_port, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %sw437.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sw437.i, align 4
  %cmp5.not38.i = icmp eq ptr %33, %37
  br i1 %cmp5.not38.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.while.body.i_crit_edge

if.then.i.while.body.i_crit_edge:                 ; preds = %if.then.i
  br label %while.body.i

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then.i.while.body.i_crit_edge
  %parent.039.i = phi ptr [ %dev..i.i.i, %while.body.i.while.body.i_crit_edge ], [ %33, %if.then.i.while.body.i_crit_edge ]
  %boot.i = getelementptr inbounds %struct.tb_switch, ptr %parent.039.i, i32 0, i32 25
  %38 = ptrtoint ptr %boot.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %boot.i, align 2
  %parent.i.i = getelementptr inbounds %struct.device, ptr %parent.039.i, i32 0, i32 1
  %39 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %parent.i.i, align 8
  %type.i.i.i.i = getelementptr inbounds %struct.device, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %type.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %type.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %42, @tb_switch_type
  %dev..i.i.i = select i1 %cmp.i.i.i.i, ptr %40, ptr null
  %43 = ptrtoint ptr %src_port.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src_port.i, align 4
  %sw4.i = getelementptr inbounds %struct.tb_port, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sw4.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sw4.i, align 4
  %cmp5.not.i = icmp eq ptr %dev..i.i.i, %46
  br i1 %cmp5.not.i, label %while.body.i.for.inc.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

while.body.i.for.inc.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then8.i:                                       ; preds = %for.body.i56
  call void @__sanitizer_cov_trace_pc() #8
  %src_port9.i = getelementptr i8, ptr %.pn42.i, i32 -40
  %47 = ptrtoint ptr %src_port9.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src_port9.i, align 4
  %sw10.i = getelementptr inbounds %struct.tb_port, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %sw10.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sw10.i, align 4
  %call.i.i57 = tail call i32 @__pm_runtime_resume(ptr noundef %50, i32 noundef 4) #6
  %dst_port12.i = getelementptr i8, ptr %.pn42.i, i32 -36
  %51 = ptrtoint ptr %dst_port12.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dst_port12.i, align 4
  %sw13.i = getelementptr inbounds %struct.tb_port, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %sw13.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sw13.i, align 4
  %call.i36.i = tail call i32 @__pm_runtime_resume(ptr noundef %54, i32 noundef 4) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then8.i, %while.body.i.for.inc.i_crit_edge, %if.then.i.for.inc.i_crit_edge, %for.body.i56.for.inc.i_crit_edge
  %55 = ptrtoint ptr %.pn42.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn.i = load ptr, ptr %.pn42.i, align 4
  %cmp.not.i58 = icmp eq ptr %.pn.i, %privdata.i
  br i1 %cmp.not.i58, label %for.inc.i.tb_discover_tunnels.exit_crit_edge, label %for.inc.i.for.body.i56_crit_edge

for.inc.i.for.body.i56_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i56

for.inc.i.tb_discover_tunnels.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_discover_tunnels.exit

tb_discover_tunnels.exit:                         ; preds = %for.inc.i.tb_discover_tunnels.exit_crit_edge, %tb_scan_switch.exit.tb_discover_tunnels.exit_crit_edge
  %56 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %root_switch, align 8
  %call26 = tail call fastcc i32 @tb_create_usb3_tunnels(ptr noundef %57)
  %58 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %root_switch, align 8
  tail call fastcc void @tb_add_dp_resources(ptr noundef %59)
  %60 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %root_switch, align 8
  %call30 = tail call i32 @device_for_each_child(ptr noundef %61, ptr noundef null, ptr noundef nonnull @tb_scan_finalize_switch) #6
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 1, ptr %hotplug_active, align 4
  br label %cleanup

cleanup:                                          ; preds = %tb_discover_tunnels.exit, %if.then18, %if.then12, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %call11, %if.then12 ], [ %call16, %if.then18 ], [ 0, %tb_discover_tunnels.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_stop(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %remove_work = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 3
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %remove_work) #6
  %0 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %privdata.i, align 4
  %cmp.not26 = icmp eq ptr %1, %privdata.i
  br i1 %cmp.not26, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in27 = phi ptr [ %.pn30, %if.end.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %tunnel.028 = getelementptr i8, ptr %.pn.in27, i32 -44
  %2 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn30 = load ptr, ptr %.pn.in27, align 4
  %type.i = getelementptr i8, ptr %.pn.in27, i32 8
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp.i = icmp eq i32 %4, 2
  br i1 %cmp.i, label %if.then, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_tunnel_deactivate(ptr noundef %tunnel.028) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  tail call void @tb_tunnel_free(ptr noundef %tunnel.028) #6
  %cmp.not = icmp eq ptr %.pn30, %privdata.i
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %5 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_switch, align 8
  tail call void @tb_switch_remove(ptr noundef %6) #6
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %hotplug_active, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_suspend_noirq(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_suspend_noirq.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_suspend_noirq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_suspend_noirq.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.72) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %prev.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.not33.i = icmp eq ptr %5, %privdata.i
  br i1 %cmp.not33.i, label %do.end.while.cond.preheader.i_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.while.cond.preheader.i_crit_edge:          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc.i.while.cond.preheader.i_crit_edge, %do.end.while.cond.preheader.i_crit_edge
  %dp_resources.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %dp_resources.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %dp_resources.i, align 4
  %cmp.i29.not37.i = icmp eq ptr %7, %dp_resources.i
  br i1 %cmp.i29.not37.i, label %while.cond.preheader.i.tb_disconnect_and_release_dp.exit_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.tb_disconnect_and_release_dp.exit_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_disconnect_and_release_dp.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %.pn2734.i = phi ptr [ %.pn36.i, %for.inc.i.for.body.i_crit_edge ], [ %5, %do.end.for.body.i_crit_edge ]
  %.pn36.in.i = getelementptr inbounds %struct.list_head, ptr %.pn2734.i, i32 0, i32 1
  %8 = ptrtoint ptr %.pn36.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn36.i = load ptr, ptr %.pn36.in.i, align 4
  %type.i.i = getelementptr i8, ptr %.pn2734.i, i32 8
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i.i = icmp eq i32 %10, 1
  br i1 %cmp.i.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %tunnel.035.i = getelementptr i8, ptr %.pn2734.i, i32 -44
  tail call fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %tunnel.035.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn36.i, %privdata.i
  br i1 %cmp.not.i, label %for.inc.i.while.cond.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.while.cond.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.preheader.i

while.body.i:                                     ; preds = %list_del_init.exit.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %11 = phi ptr [ %21, %list_del_init.exit.i.while.body.i_crit_edge ], [ %7, %while.cond.preheader.i.while.body.i_crit_edge ]
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del_init.exit.i_crit_edge

while.body.i.list_del_init.exit.i_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %while.body.i.list_del_init.exit.i_crit_edge
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %11, ptr %11, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %11, ptr %prev.i3.i.i, align 4
  %20 = ptrtoint ptr %dp_resources.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %dp_resources.i, align 4
  %cmp.i29.not.i = icmp eq ptr %21, %dp_resources.i
  br i1 %cmp.i29.not.i, label %list_del_init.exit.i.tb_disconnect_and_release_dp.exit_crit_edge, label %list_del_init.exit.i.while.body.i_crit_edge

list_del_init.exit.i.while.body.i_crit_edge:      ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

list_del_init.exit.i.tb_disconnect_and_release_dp.exit_crit_edge: ; preds = %list_del_init.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_disconnect_and_release_dp.exit

tb_disconnect_and_release_dp.exit:                ; preds = %list_del_init.exit.i.tb_disconnect_and_release_dp.exit_crit_edge, %while.cond.preheader.i.tb_disconnect_and_release_dp.exit_crit_edge
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %22 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %root_switch, align 8
  tail call void @tb_switch_suspend(ptr noundef %23, i1 noundef zeroext false) #6
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %hotplug_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_suspend_noirq.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_suspend_noirq, %if.then16)) #6
          to label %do.end22 [label %if.then16], !srcloc !219

if.then16:                                        ; preds = %tb_disconnect_and_release_dp.exit
  call void @__sanitizer_cov_trace_pc() #8
  %nhi17 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %25 = ptrtoint ptr %nhi17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %nhi17, align 4
  %pdev18 = getelementptr inbounds %struct.tb_nhi, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pdev18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %28, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_suspend_noirq.__UNIQUE_ID_ddebug269, ptr noundef %dev19, ptr noundef nonnull @.str.73) #6
  br label %do.end22

do.end22:                                         ; preds = %if.then16, %tb_disconnect_and_release_dp.exit
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_resume_noirq(ptr noundef %tb) #0 align 64 {
entry:
  %tunnels = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tunnels) #6
  %0 = getelementptr inbounds %struct.list_head, ptr %tunnels, i32 0, i32 1
  %1 = ptrtoint ptr %tunnels to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tunnels, ptr %tunnels, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %tunnels, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_resume_noirq.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_resume_noirq, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %3 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_resume_noirq.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.75) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %7 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %root_switch, align 8
  %call4 = call i32 @tb_switch_reset(ptr noundef %8) #6
  %9 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root_switch, align 8
  %call6 = call i32 @tb_switch_resume(ptr noundef %10) #6
  %11 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %privdata.i, align 4
  %cmp.not21.i = icmp eq ptr %12, %privdata.i
  br i1 %cmp.not21.i, label %do.end.tb_free_invalid_tunnels.exit_crit_edge, label %do.end.for.body.i_crit_edge

do.end.for.body.i_crit_edge:                      ; preds = %do.end
  br label %for.body.i

do.end.tb_free_invalid_tunnels.exit_crit_edge:    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_free_invalid_tunnels.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end.for.body.i_crit_edge
  %.pn23.in.i = phi ptr [ %.pn23.i, %for.inc.i.for.body.i_crit_edge ], [ %12, %do.end.for.body.i_crit_edge ]
  %tunnel.022.i = getelementptr i8, ptr %.pn23.in.i, i32 -44
  %13 = ptrtoint ptr %.pn23.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn23.i = load ptr, ptr %.pn23.in.i, align 4
  %call7.i = call zeroext i1 @tb_tunnel_is_invalid(ptr noundef %tunnel.022.i) #6
  br i1 %call7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %tunnel.022.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn23.i, %privdata.i
  br i1 %cmp.not.i, label %for.inc.i.tb_free_invalid_tunnels.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.tb_free_invalid_tunnels.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_free_invalid_tunnels.exit

tb_free_invalid_tunnels.exit:                     ; preds = %for.inc.i.tb_free_invalid_tunnels.exit_crit_edge, %do.end.tb_free_invalid_tunnels.exit_crit_edge
  %14 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root_switch, align 8
  call fastcc void @tb_free_unplugged_children(ptr noundef %15)
  %16 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_switch, align 8
  call fastcc void @tb_restore_children(ptr noundef %17)
  %18 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %root_switch, align 8
  call fastcc void @tb_switch_discover_tunnels(ptr noundef %19, ptr noundef nonnull %tunnels, i1 noundef zeroext false)
  %20 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %0, align 4
  %cmp.not136 = icmp eq ptr %21, %tunnels
  br i1 %cmp.not136, label %tb_free_invalid_tunnels.exit.for.end_crit_edge, label %tb_free_invalid_tunnels.exit.for.body_crit_edge

tb_free_invalid_tunnels.exit.for.body_crit_edge:  ; preds = %tb_free_invalid_tunnels.exit
  br label %for.body

tb_free_invalid_tunnels.exit.for.end_crit_edge:   ; preds = %tb_free_invalid_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %tb_free_invalid_tunnels.exit.for.body_crit_edge
  %.pn120138 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %21, %tb_free_invalid_tunnels.exit.for.body_crit_edge ]
  %usb3_delay.0137 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %tb_free_invalid_tunnels.exit.for.body_crit_edge ]
  %.pn.in = getelementptr inbounds %struct.list_head, ptr %.pn120138, i32 0, i32 1
  %22 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn = load ptr, ptr %.pn.in, align 4
  %tunnel.0 = getelementptr i8, ptr %.pn120138, i32 -44
  %type.i = getelementptr i8, ptr %.pn120138, i32 8
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %24)
  %cmp.i = icmp eq i32 %24, 3
  %spec.select = select i1 %cmp.i, i32 500, i32 %usb3_delay.0137
  call void @tb_tunnel_deactivate(ptr noundef %tunnel.0) #6
  call void @tb_tunnel_free(ptr noundef %tunnel.0) #6
  %cmp.not = icmp eq ptr %.pn, %tunnels
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tb_free_invalid_tunnels.exit.for.end_crit_edge
  %usb3_delay.0.lcssa = phi i32 [ 0, %tb_free_invalid_tunnels.exit.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %25 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %privdata.i, align 4
  %cmp39.not141 = icmp eq ptr %26, %privdata.i
  br i1 %cmp39.not141, label %for.end.for.end53_crit_edge, label %for.end.for.body42_crit_edge

for.end.for.body42_crit_edge:                     ; preds = %for.end
  br label %for.body42

for.end.for.end53_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end53

for.body42:                                       ; preds = %if.end45.for.body42_crit_edge, %for.end.for.body42_crit_edge
  %.pn121.in143 = phi ptr [ %.pn121145, %if.end45.for.body42_crit_edge ], [ %26, %for.end.for.body42_crit_edge ]
  %usb3_delay.2142 = phi i32 [ %usb3_delay.3, %if.end45.for.body42_crit_edge ], [ %usb3_delay.0.lcssa, %for.end.for.body42_crit_edge ]
  %tunnel.1144 = getelementptr i8, ptr %.pn121.in143, i32 -44
  %27 = ptrtoint ptr %.pn121.in143 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pn121145 = load ptr, ptr %.pn121.in143, align 4
  %type.i130 = getelementptr i8, ptr %.pn121.in143, i32 8
  %28 = ptrtoint ptr %type.i130 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %type.i130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %29)
  %cmp.i131 = icmp eq i32 %29, 3
  br i1 %cmp.i131, label %if.then44, label %for.body42.if.end45_crit_edge

for.body42.if.end45_crit_edge:                    ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end45

if.then44:                                        ; preds = %for.body42
  call void @__sanitizer_cov_trace_pc() #8
  call void @msleep(i32 noundef %usb3_delay.2142) #6
  br label %if.end45

if.end45:                                         ; preds = %if.then44, %for.body42.if.end45_crit_edge
  %usb3_delay.3 = phi i32 [ 0, %if.then44 ], [ %usb3_delay.2142, %for.body42.if.end45_crit_edge ]
  %call46 = call i32 @tb_tunnel_restart(ptr noundef %tunnel.1144) #6
  %cmp39.not = icmp eq ptr %.pn121145, %privdata.i
  br i1 %cmp39.not, label %if.end45.for.end53_crit_edge, label %if.end45.for.body42_crit_edge

if.end45.for.body42_crit_edge:                    ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body42

if.end45.for.end53_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end53

for.end53:                                        ; preds = %if.end45.for.end53_crit_edge, %for.end.for.end53_crit_edge
  %30 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile ptr, ptr %privdata.i, align 4
  %cmp.i132.not = icmp eq ptr %31, %privdata.i
  br i1 %cmp.i132.not, label %for.end53.if.end77_crit_edge, label %do.body58

for.end53.if.end77_crit_edge:                     ; preds = %for.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end77

do.body58:                                        ; preds = %for.end53
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_resume_noirq.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_resume_noirq, %if.then70)) #6
          to label %do.end76 [label %if.then70], !srcloc !219

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  %nhi71 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %32 = ptrtoint ptr %nhi71 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nhi71, align 4
  %pdev72 = getelementptr inbounds %struct.tb_nhi, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pdev72 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev72, align 4
  %dev73 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_resume_noirq.__UNIQUE_ID_ddebug271, ptr noundef %dev73, ptr noundef nonnull @.str.76) #6
  br label %do.end76

do.end76:                                         ; preds = %if.then70, %do.body58
  call void @msleep(i32 noundef 100) #6
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %for.end53.if.end77_crit_edge
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %36 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %hotplug_active, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_resume_noirq.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_resume_noirq, %if.then90)) #6
          to label %do.end96 [label %if.then90], !srcloc !219

if.then90:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %nhi91 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %37 = ptrtoint ptr %nhi91 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %nhi91, align 4
  %pdev92 = getelementptr inbounds %struct.tb_nhi, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %pdev92 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pdev92, align 4
  %dev93 = getelementptr inbounds %struct.pci_dev, ptr %40, i32 0, i32 44
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_resume_noirq.__UNIQUE_ID_ddebug272, ptr noundef %dev93, ptr noundef nonnull @.str.77) #6
  br label %do.end96

do.end96:                                         ; preds = %if.then90, %if.end77
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tunnels) #6
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tb_freeze_noirq(ptr nocapture noundef writeonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %hotplug_active, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tb_thaw_noirq(ptr nocapture noundef writeonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 1, ptr %hotplug_active, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_complete(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  %call = tail call fastcc i32 @tb_free_unplugged_xdomains(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root_switch, align 8
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #6
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 2
  %port.015.i = getelementptr %struct.tb_port, ptr %5, i32 1
  %6 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load16.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr17.i = lshr i32 %bf.load16.i, 12
  %bf.clear18.i = and i32 %bf.lshr17.i, 63
  %arrayidx219.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear18.i
  %cmp.not20.i = icmp ugt ptr %port.015.i, %arrayidx219.i
  br i1 %cmp.not20.i, label %if.then.tb_scan_switch.exit_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.tb_scan_switch.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_scan_switch.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %port.021.i = phi ptr [ %port.0.i, %for.body.i.for.body.i_crit_edge ], [ %port.015.i, %if.then.for.body.i_crit_edge ]
  tail call fastcc void @tb_scan_port(ptr noundef %port.021.i) #9
  %port.0.i = getelementptr %struct.tb_port, ptr %port.021.i, i32 1
  %7 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports.i, align 4
  %9 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %8, i32 %bf.clear.i
  %cmp.not.i = icmp ugt ptr %port.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.body.i.tb_scan_switch.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.tb_scan_switch.exit_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_scan_switch.exit

tb_scan_switch.exit:                              ; preds = %for.body.i.tb_scan_switch.exit_crit_edge, %if.then.tb_scan_switch.exit_crit_edge
  %call.i13.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 12, i32 22
  %10 = ptrtoint ptr %last_busy.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store volatile i64 %call.i13.i, ptr %last_busy.i.i, align 8
  %call.i14.i = tail call i32 @__pm_runtime_suspend(ptr noundef %3, i32 noundef 13) #6
  br label %if.end

if.end:                                           ; preds = %tb_scan_switch.exit, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_runtime_suspend(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  tail call void @tb_switch_suspend(ptr noundef %1, i1 noundef zeroext true) #6
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %hotplug_active, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_runtime_resume(ptr noundef %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %0 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root_switch, align 8
  %call1 = tail call i32 @tb_switch_resume(ptr noundef %1) #6
  %2 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %privdata.i, align 4
  %cmp.not21.i = icmp eq ptr %3, %privdata.i
  br i1 %cmp.not21.i, label %entry.tb_free_invalid_tunnels.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tb_free_invalid_tunnels.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_free_invalid_tunnels.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn23.in.i = phi ptr [ %.pn23.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %tunnel.022.i = getelementptr i8, ptr %.pn23.in.i, i32 -44
  %4 = ptrtoint ptr %.pn23.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn23.i = load ptr, ptr %.pn23.in.i, align 4
  %call7.i = tail call zeroext i1 @tb_tunnel_is_invalid(ptr noundef %tunnel.022.i) #6
  br i1 %call7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %tunnel.022.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn23.i, %privdata.i
  br i1 %cmp.not.i, label %for.inc.i.tb_free_invalid_tunnels.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.tb_free_invalid_tunnels.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_free_invalid_tunnels.exit

tb_free_invalid_tunnels.exit:                     ; preds = %for.inc.i.tb_free_invalid_tunnels.exit_crit_edge, %entry.tb_free_invalid_tunnels.exit_crit_edge
  %5 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %root_switch, align 8
  tail call fastcc void @tb_restore_children(ptr noundef %6)
  %7 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %privdata.i, align 4
  %cmp.not31 = icmp eq ptr %8, %privdata.i
  br i1 %cmp.not31, label %tb_free_invalid_tunnels.exit.for.end_crit_edge, label %tb_free_invalid_tunnels.exit.for.body_crit_edge

tb_free_invalid_tunnels.exit.for.body_crit_edge:  ; preds = %tb_free_invalid_tunnels.exit
  br label %for.body

tb_free_invalid_tunnels.exit.for.end_crit_edge:   ; preds = %tb_free_invalid_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %tb_free_invalid_tunnels.exit.for.body_crit_edge
  %.pn.in32 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %8, %tb_free_invalid_tunnels.exit.for.body_crit_edge ]
  %tunnel.0 = getelementptr i8, ptr %.pn.in32, i32 -44
  %9 = ptrtoint ptr %.pn.in32 to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn = load ptr, ptr %.pn.in32, align 4
  %call9 = tail call i32 @tb_tunnel_restart(ptr noundef %tunnel.0) #6
  %cmp.not = icmp eq ptr %.pn, %privdata.i
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tb_free_invalid_tunnels.exit.for.end_crit_edge
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %hotplug_active, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %wq = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %11 = ptrtoint ptr %wq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %wq, align 4
  %remove_work = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 3
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %remove_work, i32 noundef 5) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_handle_event(ptr noundef %tb, i32 noundef %type, ptr nocapture noundef readonly %buf, i32 noundef %size) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %type)
  %cmp.not = icmp eq i32 %type, 5
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %0 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.83, i32 noundef %type) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %buf to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i = load i32, ptr %buf, align 1
  %bf.lshr.i = lshr i32 %bf.load.i, 10
  %conv.i = zext i32 %bf.lshr.i to i64
  %shl.i = shl nuw nsw i64 %conv.i, 32
  %route_lo.i = getelementptr inbounds %struct.tb_cfg_header, ptr %buf, i32 0, i32 1
  %5 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 4)
  %6 = load i32, ptr %route_lo.i, align 1
  %conv1.i = zext i32 %6 to i64
  %or.i = or i64 %shl.i, %conv1.i
  %ctl = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 3
  %7 = ptrtoint ptr %ctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl, align 8
  %port = getelementptr inbounds %struct.cfg_event_pkg, ptr %buf, i32 0, i32 1
  %9 = ptrtoint ptr %port to i32
  call void @__asan_loadN_noabort(i32 %9, i32 4)
  %bf.load = load i32, ptr %port, align 1
  %bf.lshr = lshr i32 %bf.load, 26
  %10 = and i32 %bf.load, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %bf.cast = icmp ne i32 %10, 0
  %call2 = tail call i32 @tb_cfg_ack_plug(ptr noundef %8, i64 noundef %or.i, i32 noundef %bf.lshr, i1 noundef zeroext %bf.cast) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end.if.end13_crit_edge, label %do.end6

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end13

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %nhi7 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %11 = ptrtoint ptr %nhi7 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %nhi7, align 4
  %pdev8 = getelementptr inbounds %struct.tb_nhi, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %pdev8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdev8, align 4
  %dev9 = getelementptr inbounds %struct.pci_dev, ptr %14, i32 0, i32 44
  %15 = ptrtoint ptr %port to i32
  call void @__asan_loadN_noabort(i32 %15, i32 4)
  %bf.load11 = load i32, ptr %port, align 1
  %bf.lshr12 = lshr i32 %bf.load11, 26
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev9, ptr noundef nonnull @.str.86, i64 noundef %or.i, i32 noundef %bf.lshr12) #10
  br label %if.end13

if.end13:                                         ; preds = %do.end6, %if.end.if.end13_crit_edge
  %16 = ptrtoint ptr %port to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %bf.load15 = load i32, ptr %port, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %if.end13.cleanup_crit_edge, label %if.end.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr16 = lshr i32 %bf.load15, 26
  %conv = trunc i32 %bf.lshr16 to i8
  %18 = trunc i32 %bf.load15 to i8
  %19 = and i8 %18, 1
  %tb1.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %tb1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %tb, ptr %tb1.i, align 4
  %route2.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %route2.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %or.i, ptr %route2.i, align 8
  %port3.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %port3.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv, ptr %port3.i, align 8
  %unplug5.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %unplug5.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %19, ptr %unplug5.i, align 1
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  %24 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @tb_queue_hotplug.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry10.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %entry10.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @tb_handle_hotplug, ptr %func.i, align 4
  %wq.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 4
  %28 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end13.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_disconnect_pci(ptr noundef readonly %tb, ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tb_switch_find_port(ptr noundef %sw, i32 noundef 1048834) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !220

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1050, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %privdata.i.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %0 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn31.i = load ptr, ptr %privdata.i.i, align 4
  %cmp.not32.i = icmp eq ptr %.pn31.i, %privdata.i.i
  br i1 %cmp.not32.i, label %if.end23.do.end44_crit_edge, label %if.end23.for.body.i_crit_edge

if.end23.for.body.i_crit_edge:                    ; preds = %if.end23
  br label %for.body.i

if.end23.do.end44_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end23.for.body.i_crit_edge
  %.pn33.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn31.i, %if.end23.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn33.i, i32 8
  %1 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3.i = icmp eq i32 %2, 0
  br i1 %cmp3.i, label %land.lhs.true8.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %for.body.i
  %dst_port9.i = getelementptr i8, ptr %.pn33.i, i32 -36
  %3 = ptrtoint ptr %dst_port9.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dst_port9.i, align 4
  %cmp10.i = icmp eq ptr %4, %call
  br i1 %cmp10.i, label %tb_find_tunnel.exit, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %5 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn.i = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %privdata.i.i
  br i1 %cmp.not.i, label %for.inc.i.do.end44_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end44_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

tb_find_tunnel.exit:                              ; preds = %land.lhs.true8.i
  %tunnel.0.le.i = getelementptr i8, ptr %.pn33.i, i32 -44
  %tobool26.not = icmp eq ptr %tunnel.0.le.i, null
  br i1 %tobool26.not, label %tb_find_tunnel.exit.do.end44_crit_edge, label %if.end60, !prof !220

tb_find_tunnel.exit.do.end44_crit_edge:           ; preds = %tb_find_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end44

do.end44:                                         ; preds = %tb_find_tunnel.exit.do.end44_crit_edge, %for.inc.i.do.end44_crit_edge, %if.end23.do.end44_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 1054, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end60:                                         ; preds = %tb_find_tunnel.exit
  tail call void @tb_tunnel_deactivate(ptr noundef nonnull %tunnel.0.le.i) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn33.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end60.list_del.exit_crit_edge

if.end60.list_del.exit_crit_edge:                 ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn33.i, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.pn33.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end60.list_del.exit_crit_edge
  %12 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn33.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn33.i, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @tb_tunnel_free(ptr noundef nonnull %tunnel.0.le.i) #6
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %do.end44, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ -19, %do.end44 ], [ 0, %list_del.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_tunnel_pci(ptr noundef %tb, ptr noundef %sw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %call1 = tail call ptr @tb_switch_find_port(ptr noundef %sw, i32 noundef 1048834) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i = select i1 %cmp.i.i, ptr %1, ptr null
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %5 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %5, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %7 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i61 = load i32, ptr %depth.i, align 4
  %9 = lshr i32 %bf.load.i61, 6
  %mul.i = and i32 %9, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i61, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 2
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %11, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i62 = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i62, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = tail call ptr @usb4_switch_map_pcie_down(ptr noundef %dev..i, ptr noundef %retval.0.i) #6
  br label %if.end55.i

if.else.i:                                        ; preds = %tb_port_at.exit
  %13 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %15 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i.i)
  %tobool.not.i = icmp eq i64 %or.i.i, 0
  br i1 %tobool.not.i, label %if.then3.i, label %if.else.i.out.i_crit_edge

if.else.i.out.i_crit_edge:                        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then3.i:                                       ; preds = %if.else.i
  %port4.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 9
  %16 = ptrtoint ptr %port4.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port4.i, align 4
  %conv.i63 = zext i8 %17 to i32
  %sub.i.i = add nsw i32 %conv.i63, -1
  %config.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1
  %18 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %config.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -32634, i16 %19)
  %cmp.i120.i = icmp eq i16 %19, -32634
  br i1 %cmp.i120.i, label %if.then.i.i, label %if.then3.i.out.i_crit_edge

if.then3.i.out.i_crit_edge:                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then.i.i:                                      ; preds = %if.then3.i
  %device_id.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %device_id.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %device_id.i.i, align 2
  %.off.i.i = add i16 %21, -5447
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %.off.i.i)
  %switch.i.i = icmp ult i16 %.off.i.i, 2
  br i1 %switch.i.i, label %if.then.i.i.if.then10.i_crit_edge, label %if.then.i124.i

if.then.i.i.if.then10.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then.i124.i:                                   ; preds = %if.then.i.i
  %22 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.95)
  switch i16 %21, label %tb_switch_is_falcon_ridge.exit.i [
    i16 5494, label %if.then.i124.i.if.then10.i_crit_edge
    i16 5568, label %if.then.i124.i.if.then10.i_crit_edge94
    i16 5587, label %if.then.i124.i.if.then10.i_crit_edge95
    i16 5594, label %if.then.i124.i.if.then10.i_crit_edge96
  ]

if.then.i124.i.if.then10.i_crit_edge96:           ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then.i124.i.if.then10.i_crit_edge95:           ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then.i124.i.if.then10.i_crit_edge94:           ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then.i124.i.if.then10.i_crit_edge:             ; preds = %if.then.i124.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10.i

if.then10.i:                                      ; preds = %if.then.i124.i.if.then10.i_crit_edge, %if.then.i124.i.if.then10.i_crit_edge94, %if.then.i124.i.if.then10.i_crit_edge95, %if.then.i124.i.if.then10.i_crit_edge96, %if.then.i.i.if.then10.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %tobool11.not.i = icmp ult i32 %sub.i.i, 2
  %cond.i = select i1 %tobool11.not.i, i32 6, i32 7
  br label %if.end26.i

tb_switch_is_falcon_ridge.exit.i:                 ; preds = %if.then.i124.i
  %23 = add i16 %21, -5483
  %switch.and.i.i = and i16 %23, -3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %switch.and.i.i)
  %switch.selectcmp.i.i = icmp eq i16 %switch.and.i.i, 0
  br i1 %switch.selectcmp.i.i, label %if.then14.i, label %if.then.i135.i

if.then14.i:                                      ; preds = %tb_switch_is_falcon_ridge.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %tobool15.not.i = icmp ult i32 %sub.i.i, 2
  %cond17.i = select i1 %tobool15.not.i, i32 6, i32 8
  br label %if.end26.i

if.then.i135.i:                                   ; preds = %tb_switch_is_falcon_ridge.exit.i
  %24 = zext i16 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.96)
  switch i16 %21, label %if.then.i135.i.out.i_crit_edge [
    i16 5607, label %if.then.i135.i.if.then20.i_crit_edge
    i16 5610, label %if.then.i135.i.if.then20.i_crit_edge97
    i16 5615, label %if.then.i135.i.if.then20.i_crit_edge98
  ]

if.then.i135.i.if.then20.i_crit_edge98:           ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

if.then.i135.i.if.then20.i_crit_edge97:           ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

if.then.i135.i.if.then20.i_crit_edge:             ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then20.i

if.then.i135.i.out.i_crit_edge:                   ; preds = %if.then.i135.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

if.then20.i:                                      ; preds = %if.then.i135.i.if.then20.i_crit_edge, %if.then.i135.i.if.then20.i_crit_edge97, %if.then.i135.i.if.then20.i_crit_edge98
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i.i)
  %tobool21.not.i = icmp ult i32 %sub.i.i, 2
  %cond23.i = select i1 %tobool21.not.i, i32 8, i32 9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then20.i, %if.then14.i, %if.then10.i
  %index.0.i = phi i32 [ %cond.i, %if.then10.i ], [ %cond17.i, %if.then14.i ], [ %cond23.i, %if.then20.i ]
  %25 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load.i64 = load i32, ptr %depth.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i64, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %index.0.i, i32 %bf.clear.i)
  %cmp.i65 = icmp ugt i32 %index.0.i, %bf.clear.i
  br i1 %cmp.i65, label %if.end26.i.out.sink.split.i_crit_edge, label %cleanup.i, !prof !220

if.end26.i.out.sink.split.i_crit_edge:            ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

cleanup.i:                                        ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i66 = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 2
  %26 = ptrtoint ptr %ports.i66 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports.i66, align 4
  %arrayidx.i67 = getelementptr %struct.tb_port, ptr %27, i32 %index.0.i
  br label %if.end55.i

if.end55.i:                                       ; preds = %cleanup.i, %if.then.i
  %down.1.i = phi ptr [ %call1.i, %if.then.i ], [ %arrayidx.i67, %cleanup.i ]
  %tobool56.not.i = icmp eq ptr %down.1.i, null
  br i1 %tobool56.not.i, label %if.end55.i.out.i_crit_edge, label %tb_port_is_pcie_down.exit.i

if.end55.i.out.i_crit_edge:                       ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

tb_port_is_pcie_down.exit.i:                      ; preds = %if.end55.i
  %type.i.i68 = getelementptr inbounds %struct.tb_regs_port_header, ptr %down.1.i, i32 0, i32 2
  %28 = ptrtoint ptr %type.i.i68 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 12)
  %bf.load.i138.i = load i96, ptr %type.i.i68, align 4
  %29 = and i96 %bf.load.i138.i, 18446742974197923840
  %cmp.i139.i = icmp eq i96 %29, 1153204079095185408
  br i1 %cmp.i139.i, label %if.end93.critedge.i, label %tb_port_is_pcie_down.exit.i.out.sink.split.i_crit_edge, !prof !221

tb_port_is_pcie_down.exit.i.out.sink.split.i_crit_edge: ; preds = %tb_port_is_pcie_down.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.sink.split.i

if.end93.critedge.i:                              ; preds = %tb_port_is_pcie_down.exit.i
  %call94.i = tail call zeroext i1 @tb_pci_port_is_enabled(ptr noundef nonnull %down.1.i) #6
  br i1 %call94.i, label %if.end93.critedge.i.out.i_crit_edge, label %if.end93.critedge.i.if.end8_crit_edge

if.end93.critedge.i.if.end8_crit_edge:            ; preds = %if.end93.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end93.critedge.i.out.i_crit_edge:              ; preds = %if.end93.critedge.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out.i

out.sink.split.i:                                 ; preds = %tb_port_is_pcie_down.exit.i.out.sink.split.i_crit_edge, %if.end26.i.out.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 812, %if.end26.i.out.sink.split.i_crit_edge ], [ 819, %tb_port_is_pcie_down.exit.i.out.sink.split.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef %.sink.i, i32 noundef 9, ptr noundef null) #6
  br label %out.i

out.i:                                            ; preds = %out.sink.split.i, %if.end93.critedge.i.out.i_crit_edge, %if.end55.i.out.i_crit_edge, %if.then.i135.i.out.i_crit_edge, %if.then3.i.out.i_crit_edge, %if.else.i.out.i_crit_edge
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 2
  %30 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ports.i.i, align 4
  %port.02.i.i = getelementptr %struct.tb_port, ptr %31, i32 1
  %32 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %bf.load3.i.i = load i32, ptr %depth.i, align 4
  %bf.lshr4.i.i = lshr i32 %bf.load3.i.i, 12
  %bf.clear5.i.i = and i32 %bf.lshr4.i.i, 63
  %arrayidx26.i.i = getelementptr %struct.tb_port, ptr %31, i32 %bf.clear5.i.i
  %cmp.not7.i.i = icmp ugt ptr %port.02.i.i, %arrayidx26.i.i
  br i1 %cmp.not7.i.i, label %out.i.cleanup_crit_edge, label %out.i.for.body.i.i_crit_edge

out.i.for.body.i.i_crit_edge:                     ; preds = %out.i
  br label %for.body.i.i

out.i.cleanup_crit_edge:                          ; preds = %out.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %out.i.for.body.i.i_crit_edge
  %port.09.i.i = phi ptr [ %port.0.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %port.02.i.i, %out.i.for.body.i.i_crit_edge ]
  %.pn8.i.i = phi ptr [ %port.09.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %31, %out.i.for.body.i.i_crit_edge ]
  %sw.i.i.i = getelementptr %struct.tb_port, ptr %.pn8.i.i, i32 1, i32 1
  %33 = ptrtoint ptr %sw.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sw.i.i.i, align 4
  %ports.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %ports.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ports.i.i.i.i, align 4
  %upstream_port_number.i.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %34, i32 0, i32 1, i32 2
  %37 = ptrtoint ptr %upstream_port_number.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %bf.load.i.i.i.i = load i32, ptr %upstream_port_number.i.i.i.i, align 4
  %bf.lshr.i.i.i.i = lshr i32 %bf.load.i.i.i.i, 18
  %bf.clear.i.i.i.i = and i32 %bf.lshr.i.i.i.i, 63
  %arrayidx.i.i.i.i = getelementptr %struct.tb_port, ptr %36, i32 %bf.clear.i.i.i.i
  %cmp.i.i.i = icmp eq ptr %arrayidx.i.i.i.i, %port.09.i.i
  br i1 %cmp.i.i.i, label %for.body.i.i.for.inc.i.i_crit_edge, label %tb_is_upstream_port.exit.i.i

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

tb_is_upstream_port.exit.i.i:                     ; preds = %for.body.i.i
  %dual_link_port.i.i.i = getelementptr %struct.tb_port, ptr %.pn8.i.i, i32 1, i32 12
  %38 = ptrtoint ptr %dual_link_port.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dual_link_port.i.i.i, align 4
  %cmp1.i.i.i = icmp eq ptr %39, %arrayidx.i.i.i.i
  br i1 %cmp1.i.i.i, label %tb_is_upstream_port.exit.i.i.for.inc.i.i_crit_edge, label %if.end.i140.i

tb_is_upstream_port.exit.i.i.for.inc.i.i_crit_edge: ; preds = %tb_is_upstream_port.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end.i140.i:                                    ; preds = %tb_is_upstream_port.exit.i.i
  %type4.i.i = getelementptr %struct.tb_port, ptr %.pn8.i.i, i32 1, i32 0, i32 2
  %40 = ptrtoint ptr %type4.i.i to i32
  call void @__asan_loadN_noabort(i32 %40, i32 12)
  %bf.load5.i.i = load i96, ptr %type4.i.i, align 4
  %41 = and i96 %bf.load5.i.i, 18446742974197923840
  %cmp8.not.i.i = icmp eq i96 %41, 1153204079095185408
  br i1 %cmp8.not.i.i, label %if.end10.i.i, label %if.end.i140.i.for.inc.i.i_crit_edge

if.end.i140.i.for.inc.i.i_crit_edge:              ; preds = %if.end.i140.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end10.i.i:                                     ; preds = %if.end.i140.i
  %cap_adap.i.i = getelementptr %struct.tb_port, ptr %.pn8.i.i, i32 1, i32 6
  %42 = ptrtoint ptr %cap_adap.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cap_adap.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i141.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i141.i, label %if.end10.i.i.for.inc.i.i_crit_edge, label %if.end12.i.i

if.end10.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end12.i.i:                                     ; preds = %if.end10.i.i
  %call13.i.i = tail call zeroext i1 @tb_port_is_enabled(ptr noundef %port.09.i.i) #6
  br i1 %call13.i.i, label %if.end12.i.i.for.inc.i.i_crit_edge, label %tb_find_pcie_down.exit

if.end12.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %if.end12.i.i.for.inc.i.i_crit_edge, %if.end10.i.i.for.inc.i.i_crit_edge, %if.end.i140.i.for.inc.i.i_crit_edge, %tb_is_upstream_port.exit.i.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %port.0.i.i = getelementptr %struct.tb_port, ptr %port.09.i.i, i32 1
  %44 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ports.i.i, align 4
  %46 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %bf.load.i142.i = load i32, ptr %depth.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i142.i, 12
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx2.i.i = getelementptr %struct.tb_port, ptr %45, i32 %bf.clear.i.i
  %cmp.not.i.i = icmp ugt ptr %port.0.i.i, %arrayidx2.i.i
  br i1 %cmp.not.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_find_pcie_down.exit:                           ; preds = %if.end12.i.i
  %tobool6.not = icmp eq ptr %port.09.i.i, null
  br i1 %tobool6.not, label %tb_find_pcie_down.exit.cleanup_crit_edge, label %tb_find_pcie_down.exit.if.end8_crit_edge

tb_find_pcie_down.exit.if.end8_crit_edge:         ; preds = %tb_find_pcie_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

tb_find_pcie_down.exit.cleanup_crit_edge:         ; preds = %tb_find_pcie_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %tb_find_pcie_down.exit.if.end8_crit_edge, %if.end93.critedge.i.if.end8_crit_edge
  %retval.0.i6987 = phi ptr [ %port.09.i.i, %tb_find_pcie_down.exit.if.end8_crit_edge ], [ %down.1.i, %if.end93.critedge.i.if.end8_crit_edge ]
  %call9 = tail call ptr @tb_tunnel_alloc_pci(ptr noundef %tb, ptr noundef nonnull %call1, ptr noundef nonnull %retval.0.i6987) #6
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @tb_tunnel_activate(ptr noundef nonnull %call9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end25, label %do.body

do.body:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %sw17 = getelementptr inbounds %struct.tb_port, ptr %call1, i32 0, i32 1
  %47 = ptrtoint ptr %sw17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sw17, align 4
  %tb18 = getelementptr inbounds %struct.tb_switch, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %tb18 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %tb18, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pdev, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %54, i32 0, i32 44
  %route_hi.i70 = getelementptr inbounds %struct.tb_switch, ptr %48, i32 0, i32 1, i32 4
  %55 = ptrtoint ptr %route_hi.i70 to i32
  call void @__asan_loadN_noabort(i32 %55, i32 8)
  %bf.load.i71 = load i64, ptr %route_hi.i70, align 4
  %56 = lshr i64 %bf.load.i71, 1
  %shl.i72 = and i64 %56, 9223372032559808512
  %route_lo.i73 = getelementptr inbounds %struct.tb_switch, ptr %48, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %route_lo.i73 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %route_lo.i73, align 8
  %conv2.i74 = zext i32 %58 to i64
  %or.i75 = or i64 %shl.i72, %conv2.i74
  %port22 = getelementptr inbounds %struct.tb_port, ptr %call1, i32 0, i32 9
  %59 = ptrtoint ptr %port22 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %port22, align 4
  %conv = zext i8 %60 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev19, ptr noundef nonnull @.str.88, i64 noundef %or.i75, i32 noundef %conv) #10
  tail call void @tb_tunnel_free(ptr noundef nonnull %call9) #6
  br label %cleanup

if.end25:                                         ; preds = %if.end12
  %call26 = tail call i32 @tb_switch_pcie_l1_enable(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end25.if.end40_crit_edge, label %do.body29

if.end25.if.end40_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

do.body29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %tb33 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %61 = ptrtoint ptr %tb33 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %tb33, align 8
  %nhi34 = getelementptr inbounds %struct.tb, ptr %62, i32 0, i32 2
  %63 = ptrtoint ptr %nhi34 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %nhi34, align 4
  %pdev35 = getelementptr inbounds %struct.tb_nhi, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %pdev35 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %pdev35, align 4
  %dev36 = getelementptr inbounds %struct.pci_dev, ptr %66, i32 0, i32 44
  %67 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %bf.load.i77 = load i64, ptr %route_hi.i, align 4
  %68 = lshr i64 %bf.load.i77, 1
  %shl.i78 = and i64 %68, 9223372032559808512
  %69 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %route_lo.i, align 8
  %conv2.i80 = zext i32 %70 to i64
  %or.i81 = or i64 %shl.i78, %conv2.i80
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev36, ptr noundef nonnull @.str.91, i64 noundef %or.i81) #10
  br label %if.end40

if.end40:                                         ; preds = %do.body29, %if.end25.if.end40_crit_edge
  %list = getelementptr inbounds %struct.tb_tunnel, ptr %call9, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %72, ptr noundef %privdata.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %list, ptr %prev.i, align 4
  %74 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %privdata.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tb_tunnel, ptr %call9, i32 0, i32 11, i32 1
  %75 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %list, ptr %72, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end40.cleanup_crit_edge, %do.body, %if.end8.cleanup_crit_edge, %tb_find_pcie_down.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge, %out.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.body ], [ 0, %entry.cleanup_crit_edge ], [ 0, %tb_find_pcie_down.exit.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ], [ 0, %if.end40.cleanup_crit_edge ], [ 0, %if.end.i.i ], [ 0, %out.i.cleanup_crit_edge ], [ 0, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_approve_xdomain_paths(ptr noundef %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %parent = getelementptr inbounds %struct.device, ptr %xd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i = select i1 %cmp.i.i, ptr %1, ptr null
  %route = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 4
  %4 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %route, align 8
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %depth.i, align 4
  %7 = lshr i32 %bf.load.i, 6
  %mul.i = and i32 %7, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %5, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 2
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %9, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %10 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root_switch, align 8
  %call3 = tail call ptr @tb_switch_find_port(ptr noundef %11, i32 noundef 2) #6
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %call4 = tail call ptr @tb_tunnel_alloc_dma(ptr noundef %tb, ptr noundef %call3, ptr noundef %retval.0.i, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %tb_port_at.exit.cleanup_crit_edge, label %if.end

tb_port_at.exit.cleanup_crit_edge:                ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_at.exit
  %call6 = tail call i32 @tb_tunnel_activate(ptr noundef nonnull %call4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end18, label %do.body

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %sw10 = getelementptr inbounds %struct.tb_port, ptr %call3, i32 0, i32 1
  %12 = ptrtoint ptr %sw10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw10, align 4
  %tb11 = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %tb11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb11, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev12 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i37 = load i64, ptr %route_hi.i, align 4
  %21 = lshr i64 %bf.load.i37, 1
  %shl.i = and i64 %21, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %23 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port = getelementptr inbounds %struct.tb_port, ptr %call3, i32 0, i32 9
  %24 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %port, align 4
  %conv = zext i8 %25 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev12, ptr noundef nonnull @.str.93, i64 noundef %or.i, i32 noundef %conv) #10
  tail call void @tb_tunnel_free(ptr noundef nonnull %call4) #6
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %list = getelementptr inbounds %struct.tb_tunnel, ptr %call4, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %27, ptr noundef %privdata.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %list, ptr %prev.i, align 4
  %29 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %privdata.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tb_tunnel, ptr %call4, i32 0, i32 11, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %list, ptr %27, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end18.cleanup_crit_edge, %do.body, %tb_port_at.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.body ], [ -12, %tb_port_at.exit.cleanup_crit_edge ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  tail call void @mutex_unlock(ptr noundef %lock) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_disconnect_xdomain_paths(ptr noundef %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_unplugged = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 14
  %0 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_unplugged, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %lock = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  tail call fastcc void @__tb_disconnect_xdomain_paths(ptr noundef %tb, ptr noundef %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring)
  tail call void @mutex_unlock(ptr noundef %lock) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_alloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_configure(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_tmu_configure(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_tmu_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_scan_switch(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %sw, i32 noundef 4) #6
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.015 = getelementptr %struct.tb_port, ptr %1, i32 1
  %2 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load16 = load i32, ptr %max_port_number, align 4
  %bf.lshr17 = lshr i32 %bf.load16, 12
  %bf.clear18 = and i32 %bf.lshr17, 63
  %arrayidx219 = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear18
  %cmp.not20 = icmp ugt ptr %port.015, %arrayidx219
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %port.021 = phi ptr [ %port.0, %for.body.for.body_crit_edge ], [ %port.015, %entry.for.body_crit_edge ]
  tail call fastcc void @tb_scan_port(ptr noundef %port.021)
  %port.0 = getelementptr %struct.tb_port, ptr %port.021, i32 1
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports, align 4
  %5 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %call.i13 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 12, i32 22
  %6 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store volatile i64 %call.i13, ptr %last_busy.i, align 8
  %call.i14 = tail call i32 @__pm_runtime_suspend(ptr noundef %sw, i32 noundef 13) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_create_usb3_tunnels(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %1 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %1, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %3 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then2

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then2:                                         ; preds = %entry
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %4 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb, align 8
  %call3 = tail call fastcc i32 @tb_tunnel_usb3(ptr noundef %5, ptr noundef %sw)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then2.if.end7_crit_edge, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2.if.end7_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.end7:                                          ; preds = %if.then2.if.end7_crit_edge, %entry.if.end7_crit_edge
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.032 = getelementptr %struct.tb_port, ptr %7, i32 1
  %8 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load33 = load i32, ptr %max_port_number, align 4
  %bf.lshr34 = lshr i32 %bf.load33, 12
  %bf.clear35 = and i32 %bf.lshr34, 63
  %arrayidx936 = getelementptr %struct.tb_port, ptr %7, i32 %bf.clear35
  %cmp.not37 = icmp ugt ptr %port.032, %arrayidx936
  br i1 %cmp.not37, label %if.end7.cleanup_crit_edge, label %if.end7.for.body_crit_edge

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  br label %for.body

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end7.for.body_crit_edge
  %port.040 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.032, %if.end7.for.body_crit_edge ]
  %.pn38 = phi ptr [ %port.040, %for.inc.for.body_crit_edge ], [ %7, %if.end7.for.body_crit_edge ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn38, i32 1, i32 1
  %9 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %10, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %12, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.040
  br i1 %cmp.i.i, label %for.body.for.inc_crit_edge, label %tb_is_upstream_port.exit.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_is_upstream_port.exit.i:                       ; preds = %for.body
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn38, i32 1, i32 12
  %14 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %15, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.for.inc_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn38, i32 1, i32 2
  %16 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %if.end2.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %15, null
  br i1 %tobool3.not.i, label %if.end2.i.if.end12_crit_edge, label %land.lhs.true.i

if.end2.i.if.end12_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn38, i32 1, i32 13
  %18 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %bf.load.i30 = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i30)
  %tobool4.not.i = icmp sgt i8 %bf.load.i30, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end12_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i.if.end12_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.end12:                                         ; preds = %land.lhs.true.i.if.end12_crit_edge, %if.end2.i.if.end12_crit_edge
  %19 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remote.i, align 4
  %sw13 = getelementptr inbounds %struct.tb_port, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sw13 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw13, align 4
  %call14 = tail call fastcc i32 @tb_create_usb3_tunnels(ptr noundef %22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end12.for.inc_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12.for.inc_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end12.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %tb_is_upstream_port.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.040, i32 1
  %23 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ports, align 4
  %25 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx9 = getelementptr %struct.tb_port, ptr %24, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx9
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.then2.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.then2.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_add_dp_resources(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.033 = getelementptr %struct.tb_port, ptr %1, i32 1
  %2 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load34 = load i32, ptr %max_port_number, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 12
  %bf.clear36 = and i32 %bf.lshr35, 63
  %arrayidx237 = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear36
  %cmp.not38 = icmp ugt ptr %port.033, %arrayidx237
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %3 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb, align 8
  %dp_resources = getelementptr inbounds %struct.tb, ptr %4, i32 1, i32 0, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.tb, ptr %4, i32 1, i32 0, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.041 = phi ptr [ %port.033, %for.body.lr.ph ], [ %port.0, %for.inc.for.body_crit_edge ]
  %.pn39 = phi ptr [ %1, %for.body.lr.ph ], [ %port.041, %for.inc.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %port.041, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %tb_port_is_dpin.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_dpin.exit:                             ; preds = %for.body
  %type.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %6 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %6, 1009088891019329536
  br i1 %cmp.i, label %if.end, label %tb_port_is_dpin.exit.for.inc_crit_edge

tb_port_is_dpin.exit.for.inc_crit_edge:           ; preds = %tb_port_is_dpin.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %tb_port_is_dpin.exit
  %call4 = tail call zeroext i1 @tb_switch_query_dp_resource(ptr noundef %sw, ptr noundef nonnull %port.041) #6
  br i1 %call4, label %if.end6, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %if.end
  %list = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 16
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %8, ptr noundef %dp_resources) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_add_tail.exit_crit_edge

if.end6.list_add_tail.exit_crit_edge:             ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev.i, align 4
  %10 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dp_resources, ptr %list, align 4
  %prev3.i.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 16, i32 1
  %11 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %list, ptr %8, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end6.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_add_dp_resources.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_add_dp_resources, %if.then11)) #6
          to label %for.inc [label %if.then11], !srcloc !219

if.then11:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sw12 = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 1
  %13 = ptrtoint ptr %sw12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sw12, align 4
  %tb13 = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 5
  %15 = ptrtoint ptr %tb13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tb13, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %20, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 8)
  %bf.load.i31 = load i64, ptr %route_hi.i, align 4
  %22 = lshr i64 %bf.load.i31, 1
  %shl.i = and i64 %22, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %14, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %24 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port16 = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 9
  %25 = ptrtoint ptr %port16 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port16, align 4
  %conv = zext i8 %26 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_add_dp_resources.__UNIQUE_ID_ddebug237, ptr noundef %dev, ptr noundef nonnull @.str.70, i64 noundef %or.i, i32 noundef %conv) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %list_add_tail.exit, %if.end.for.inc_crit_edge, %tb_port_is_dpin.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.041, i32 1
  %27 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ports, align 4
  %29 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %29)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %28, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tb_scan_finalize_switch(ptr noundef %dev, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %type.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %type.i, align 4
  %cmp.i = icmp eq ptr %1, @tb_switch_type
  br i1 %cmp.i, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %boot = getelementptr inbounds %struct.tb_switch, ptr %dev, i32 0, i32 25
  %2 = ptrtoint ptr %boot to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %boot, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %authorized = getelementptr inbounds %struct.tb_switch, ptr %dev, i32 0, i32 27
  %4 = ptrtoint ptr %authorized to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %authorized, align 8
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %uevent_suppress.i = getelementptr inbounds %struct.kobject, ptr %dev, i32 0, i32 8
  %5 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load.i = load i8, ptr %uevent_suppress.i, align 4
  %bf.clear.i = and i8 %bf.load.i, -9
  store i8 %bf.clear.i, ptr %uevent_suppress.i, align 4
  %call3 = tail call i32 @kobject_uevent(ptr noundef %dev, i32 noundef 0) #6
  %call4 = tail call i32 @device_for_each_child(ptr noundef %dev, ptr noundef null, ptr noundef nonnull @tb_scan_finalize_switch) #6
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry.if.end5_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_scan_port(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %tb = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %5, i32 %bf.clear.i.i
  %cmp.i = icmp eq ptr %arrayidx.i.i, %port
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %tb_is_upstream_port.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_is_upstream_port.exit:                         ; preds = %entry
  %dual_link_port.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 12
  %7 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %8, %arrayidx.i.i
  br i1 %cmp1.i, label %tb_is_upstream_port.exit.cleanup_crit_edge, label %if.end

tb_is_upstream_port.exit.cleanup_crit_edge:       ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_is_upstream_port.exit
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %if.end.if.end26_crit_edge, label %tb_port_is_dpout.exit

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

tb_port_is_dpout.exit:                            ; preds = %if.end
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %10 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i258 = icmp eq i96 %10, 1009089990530957312
  br i1 %cmp.i258, label %land.lhs.true, label %tb_port_is_dpout.exit.if.end26_crit_edge

tb_port_is_dpout.exit.if.end26_crit_edge:         ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true:                                    ; preds = %tb_port_is_dpout.exit
  %call4 = tail call i32 @tb_dp_port_hpd_is_active(ptr noundef nonnull %port) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp = icmp eq i32 %call4, 1
  br i1 %cmp, label %land.lhs.true5, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true5:                                   ; preds = %land.lhs.true
  %call6 = tail call zeroext i1 @tb_dp_port_is_enabled(ptr noundef nonnull %port) #6
  br i1 %call6, label %land.lhs.true5.if.end26_crit_edge, label %do.body

land.lhs.true5.if.end26_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

do.body:                                          ; preds = %land.lhs.true5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_scan_port.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_scan_port, %if.then12)) #6
          to label %do.end [label %if.then12], !srcloc !219

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %sw, align 4
  %tb14 = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %tb14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb14, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i259 = load i64, ptr %route_hi.i, align 4
  %20 = lshr i64 %bf.load.i259, 1
  %shl.i = and i64 %20, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %12, i32 0, i32 1, i32 3
  %21 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %22 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port17 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %23 = ptrtoint ptr %port17 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %port17, align 4
  %conv = zext i8 %24 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_scan_port.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.8, i64 noundef %or.i, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %25 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw, align 4
  %tb22 = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %tb22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tb22, align 8
  %route_hi.i260 = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %route_hi.i260 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i261 = load i64, ptr %route_hi.i260, align 4
  %route_lo.i263 = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i263 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i263, align 8
  %port25 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %32 = ptrtoint ptr %port25 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port25, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3264, i32 noundef 64) #11
  %tobool.not.i266 = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i266, label %do.end.cleanup_crit_edge, label %if.end.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %35 = lshr i64 %bf.load.i261, 1
  %shl.i262 = and i64 %35, 9223372032559808512
  %conv2.i264 = zext i32 %31 to i64
  %or.i265 = or i64 %shl.i262, %conv2.i264
  %tb1.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %tb1.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %28, ptr %tb1.i, align 4
  %route2.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %route2.i to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %or.i265, ptr %route2.i, align 8
  %port3.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %port3.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %33, ptr %port3.i, align 8
  %unplug5.i = getelementptr inbounds %struct.tb_hotplug_event, ptr %call7.i.i, i32 0, i32 4
  %39 = ptrtoint ptr %unplug5.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %unplug5.i, align 1
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #6
  %40 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.19, ptr noundef nonnull @tb_queue_hotplug.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry10.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %entry10.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %entry10.i, ptr %entry10.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %entry10.i, ptr %prev.i.i, align 8
  %func.i = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @tb_handle_hotplug, ptr %func.i, align 4
  %wq.i = getelementptr inbounds %struct.tb, ptr %28, i32 0, i32 4
  %44 = ptrtoint ptr %wq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %wq.i, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %45, ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true5.if.end26_crit_edge, %land.lhs.true.if.end26_crit_edge, %tb_port_is_dpout.exit.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %type = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %46 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %46, i32 12)
  %bf.load = load i96, ptr %type, align 4
  %47 = and i96 %bf.load, 18446742974197923840
  %cmp27.not = icmp eq i96 %47, 1099511627776
  br i1 %cmp27.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %48 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dual_link_port.i, align 4
  %tobool31.not = icmp eq ptr %49, null
  br i1 %tobool31.not, label %if.end30.if.end38_crit_edge, label %land.lhs.true32

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

land.lhs.true32:                                  ; preds = %if.end30
  %link_nr = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 13
  %50 = ptrtoint ptr %link_nr to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load33 = load i8, ptr %link_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load33)
  %tobool36.not = icmp sgt i8 %bf.load33, -1
  br i1 %tobool36.not, label %land.lhs.true32.if.end38_crit_edge, label %land.lhs.true32.cleanup_crit_edge

land.lhs.true32.cleanup_crit_edge:                ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true32.if.end38_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true32.if.end38_crit_edge, %if.end30.if.end38_crit_edge
  %call39 = tail call i32 @tb_wait_for_port(ptr noundef %port, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 1
  br i1 %cmp40, label %if.end38.cleanup_crit_edge, label %if.end43

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end43:                                         ; preds = %if.end38
  %remote = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 2
  %51 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remote, align 4
  %tobool44.not = icmp eq ptr %52, null
  br i1 %tobool44.not, label %if.end75, label %do.body46

do.body46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_scan_port.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_scan_port, %if.then60)) #6
          to label %cleanup [label %if.then60], !srcloc !219

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sw, align 4
  %tb62 = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 5
  %55 = ptrtoint ptr %tb62 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %tb62, align 8
  %nhi63 = getelementptr inbounds %struct.tb, ptr %56, i32 0, i32 2
  %57 = ptrtoint ptr %nhi63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %nhi63, align 4
  %pdev64 = getelementptr inbounds %struct.tb_nhi, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %pdev64 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pdev64, align 4
  %dev65 = getelementptr inbounds %struct.pci_dev, ptr %60, i32 0, i32 44
  %route_hi.i267 = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 1, i32 4
  %61 = ptrtoint ptr %route_hi.i267 to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %bf.load.i268 = load i64, ptr %route_hi.i267, align 4
  %62 = lshr i64 %bf.load.i268, 1
  %shl.i269 = and i64 %62, 9223372032559808512
  %route_lo.i270 = getelementptr inbounds %struct.tb_switch, ptr %54, i32 0, i32 1, i32 3
  %63 = ptrtoint ptr %route_lo.i270 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %route_lo.i270, align 8
  %conv2.i271 = zext i32 %64 to i64
  %or.i272 = or i64 %shl.i269, %conv2.i271
  %port68 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %65 = ptrtoint ptr %port68 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %port68, align 4
  %conv69 = zext i8 %66 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_scan_port.__UNIQUE_ID_ddebug246, ptr noundef %dev65, ptr noundef nonnull @.str.9, i64 noundef %or.i272, i32 noundef %conv69) #6
  br label %cleanup

if.end75:                                         ; preds = %if.end43
  %call76 = tail call i32 @tb_retimer_scan(ptr noundef %port, i1 noundef zeroext true) #6
  %67 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %sw, align 4
  %tb78 = getelementptr inbounds %struct.tb_switch, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %tb78 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tb78, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %68, i32 0, i32 1, i32 4
  %71 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %71, i32 8)
  %bf.load.i.i274 = load i64, ptr %route_hi.i.i, align 4
  %72 = lshr i64 %bf.load.i.i274, 1
  %shl.i.i = and i64 %72, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %68, i32 0, i32 1, i32 3
  %73 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %74 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port1.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %75 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %port1.i, align 4
  %conv.i = zext i8 %76 to i64
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %68, i32 0, i32 1, i32 2
  %77 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %bf.load.i275 = load i32, ptr %depth.i, align 4
  %78 = lshr i32 %bf.load.i275, 6
  %mul.i = and i32 %78, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i276 = shl nuw i64 %conv.i, %sh_prom.i
  %or.i277 = or i64 %or.i.i, %shl.i276
  %call82 = tail call ptr @tb_switch_alloc(ptr noundef %70, ptr noundef %68, i64 noundef %or.i277) #6
  %cmp.i278 = icmp ugt ptr %call82, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i278, label %if.then84, label %if.end93

if.then84:                                        ; preds = %if.end75
  %magicptr = ptrtoint ptr %call82 to i32
  %79 = zext i32 %magicptr to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %magicptr, label %if.then84.cleanup_crit_edge [
    i32 -5, label %if.then84.if.then91_crit_edge
    i32 -99, label %if.then84.if.then91_crit_edge303
  ]

if.then84.if.then91_crit_edge303:                 ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

if.then84.if.then91_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then91

if.then84.cleanup_crit_edge:                      ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then91:                                        ; preds = %if.then84.if.then91_crit_edge, %if.then84.if.then91_crit_edge303
  tail call fastcc void @tb_scan_xdomain(ptr noundef %port)
  br label %cleanup

if.end93:                                         ; preds = %if.end75
  %call94 = tail call i32 @tb_switch_configure(ptr noundef %call82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.then96

if.then96:                                        ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %call82) #6
  br label %cleanup

if.end97:                                         ; preds = %if.end93
  %xdomain = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 3
  %80 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %xdomain, align 4
  %tobool98.not = icmp eq ptr %81, null
  br i1 %tobool98.not, label %if.end97.if.end102_crit_edge, label %if.then99

if.end97.if.end102_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then99:                                        ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_xdomain_remove(ptr noundef nonnull %81) #6
  tail call fastcc void @tb_port_unconfigure_xdomain(ptr noundef %port)
  %82 = ptrtoint ptr %xdomain to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %xdomain, align 4
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %if.end97.if.end102_crit_edge
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %3, i32 1, i32 0, i32 0, i32 2
  %83 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hotplug_active, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool103.not = icmp eq i8 %84, 0
  br i1 %tobool103.not, label %if.then104, label %if.end102.if.end106_crit_edge

if.end102.if.end106_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then104:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  %uevent_suppress.i = getelementptr inbounds %struct.kobject, ptr %call82, i32 0, i32 8
  %85 = ptrtoint ptr %uevent_suppress.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %bf.load.i279 = load i8, ptr %uevent_suppress.i, align 4
  %bf.set.i = or i8 %bf.load.i279, 8
  store i8 %bf.set.i, ptr %uevent_suppress.i, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end102.if.end106_crit_edge
  %generation = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 15
  %86 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %generation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %87)
  %cmp107 = icmp ugt i32 %87, 1
  %rpm = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 26
  %frombool109 = zext i1 %cmp107 to i8
  %88 = ptrtoint ptr %rpm to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 %frombool109, ptr %rpm, align 1
  %call110 = tail call i32 @tb_switch_add(ptr noundef %call82) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %tobool111.not = icmp eq i32 %call110, 0
  br i1 %tobool111.not, label %if.end113, label %if.then112

if.then112:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef %call82) #6
  br label %cleanup

if.end113:                                        ; preds = %if.end106
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 2
  %89 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %ports.i, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 2
  %91 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %bf.load.i280 = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i280, 18
  %bf.clear.i281 = and i32 %bf.lshr.i, 63
  %arrayidx.i = getelementptr %struct.tb_port, ptr %90, i32 %bf.clear.i281
  %92 = ptrtoint ptr %remote to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx.i, ptr %remote, align 4
  %remote116 = getelementptr %struct.tb_port, ptr %90, i32 %bf.clear.i281, i32 2
  %93 = ptrtoint ptr %remote116 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %port, ptr %remote116, align 4
  %94 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dual_link_port.i, align 4
  %tobool118.not = icmp eq ptr %95, null
  br i1 %tobool118.not, label %if.end113.if.end129_crit_edge, label %land.lhs.true119

if.end113.if.end129_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

land.lhs.true119:                                 ; preds = %if.end113
  %dual_link_port120 = getelementptr %struct.tb_port, ptr %90, i32 %bf.clear.i281, i32 12
  %96 = ptrtoint ptr %dual_link_port120 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dual_link_port120, align 4
  %tobool121.not = icmp eq ptr %97, null
  br i1 %tobool121.not, label %land.lhs.true119.if.end129_crit_edge, label %if.then122

land.lhs.true119.if.end129_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  %remote125 = getelementptr inbounds %struct.tb_port, ptr %95, i32 0, i32 2
  %98 = ptrtoint ptr %remote125 to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %97, ptr %remote125, align 4
  %99 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dual_link_port.i, align 4
  %101 = ptrtoint ptr %dual_link_port120 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dual_link_port120, align 4
  %remote128 = getelementptr inbounds %struct.tb_port, ptr %102, i32 0, i32 2
  %103 = ptrtoint ptr %remote128 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %remote128, align 4
  br label %if.end129

if.end129:                                        ; preds = %if.then122, %land.lhs.true119.if.end129_crit_edge, %if.end113.if.end129_crit_edge
  %call130 = tail call i32 @tb_switch_lane_bonding_enable(ptr noundef %call82) #6
  %call131 = tail call i32 @tb_switch_configure_link(ptr noundef %call82) #6
  %call132 = tail call i32 @tb_switch_enable_clx(ptr noundef %call82, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end129.if.end146_crit_edge, label %do.body135

if.end129.if.end146_crit_edge:                    ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

do.body135:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %tb139 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 5
  %104 = ptrtoint ptr %tb139 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %tb139, align 8
  %nhi140 = getelementptr inbounds %struct.tb, ptr %105, i32 0, i32 2
  %106 = ptrtoint ptr %nhi140 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %nhi140, align 4
  %pdev141 = getelementptr inbounds %struct.tb_nhi, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %pdev141 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %pdev141, align 4
  %dev142 = getelementptr inbounds %struct.pci_dev, ptr %109, i32 0, i32 44
  %route_hi.i282 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 4
  %110 = ptrtoint ptr %route_hi.i282 to i32
  call void @__asan_loadN_noabort(i32 %110, i32 8)
  %bf.load.i283 = load i64, ptr %route_hi.i282, align 4
  %111 = lshr i64 %bf.load.i283, 1
  %shl.i284 = and i64 %111, 9223372032559808512
  %route_lo.i285 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 3
  %112 = ptrtoint ptr %route_lo.i285 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %route_lo.i285, align 8
  %conv2.i286 = zext i32 %113 to i64
  %or.i287 = or i64 %shl.i284, %conv2.i286
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev142, ptr noundef nonnull @.str.10, i64 noundef %or.i287) #10
  br label %if.end146

if.end146:                                        ; preds = %do.body135, %if.end129.if.end146_crit_edge
  %clx.i = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 43
  %114 = ptrtoint ptr %clx.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %clx.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp.i288 = icmp ne i32 %115, 0
  tail call void @tb_switch_tmu_configure(ptr noundef %call82, i32 noundef 16, i1 noundef zeroext %cmp.i288) #6
  %call148 = tail call fastcc i32 @tb_enable_tmu(ptr noundef %call82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %tobool149.not = icmp eq i32 %call148, 0
  br i1 %tobool149.not, label %if.end146.if.end163_crit_edge, label %do.body151

if.end146.if.end163_crit_edge:                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

do.body151:                                       ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %tb156 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 5
  %116 = ptrtoint ptr %tb156 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tb156, align 8
  %nhi157 = getelementptr inbounds %struct.tb, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nhi157 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nhi157, align 4
  %pdev158 = getelementptr inbounds %struct.tb_nhi, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %pdev158 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev158, align 4
  %dev159 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  %route_hi.i289 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 4
  %122 = ptrtoint ptr %route_hi.i289 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 8)
  %bf.load.i290 = load i64, ptr %route_hi.i289, align 4
  %123 = lshr i64 %bf.load.i290, 1
  %shl.i291 = and i64 %123, 9223372032559808512
  %route_lo.i292 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 3
  %124 = ptrtoint ptr %route_lo.i292 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %route_lo.i292, align 8
  %conv2.i293 = zext i32 %125 to i64
  %or.i294 = or i64 %shl.i291, %conv2.i293
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev159, ptr noundef nonnull @.str.14, i64 noundef %or.i294) #10
  br label %if.end163

if.end163:                                        ; preds = %do.body151, %if.end146.if.end163_crit_edge
  %call164 = tail call i32 @tb_retimer_scan(ptr noundef %arrayidx.i, i1 noundef zeroext true) #6
  %126 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %hotplug_active, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool166.not = icmp eq i8 %127, 0
  br i1 %tobool166.not, label %if.end163.if.end185_crit_edge, label %land.lhs.true168

if.end163.if.end185_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

land.lhs.true168:                                 ; preds = %if.end163
  %tb169 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 5
  %128 = ptrtoint ptr %tb169 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tb169, align 8
  %call170 = tail call fastcc i32 @tb_tunnel_usb3(ptr noundef %129, ptr noundef %call82)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %land.lhs.true168.if.end185_crit_edge, label %do.body173

land.lhs.true168.if.end185_crit_edge:             ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end185

do.body173:                                       ; preds = %land.lhs.true168
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %tb169 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %tb169, align 8
  %nhi179 = getelementptr inbounds %struct.tb, ptr %131, i32 0, i32 2
  %132 = ptrtoint ptr %nhi179 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %nhi179, align 4
  %pdev180 = getelementptr inbounds %struct.tb_nhi, ptr %133, i32 0, i32 1
  %134 = ptrtoint ptr %pdev180 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %pdev180, align 4
  %dev181 = getelementptr inbounds %struct.pci_dev, ptr %135, i32 0, i32 44
  %route_hi.i295 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 4
  %136 = ptrtoint ptr %route_hi.i295 to i32
  call void @__asan_loadN_noabort(i32 %136, i32 8)
  %bf.load.i296 = load i64, ptr %route_hi.i295, align 4
  %137 = lshr i64 %bf.load.i296, 1
  %shl.i297 = and i64 %137, 9223372032559808512
  %route_lo.i298 = getelementptr inbounds %struct.tb_switch, ptr %call82, i32 0, i32 1, i32 3
  %138 = ptrtoint ptr %route_lo.i298 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %route_lo.i298, align 8
  %conv2.i299 = zext i32 %139 to i64
  %or.i300 = or i64 %shl.i297, %conv2.i299
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev181, ptr noundef nonnull @.str.17, i64 noundef %or.i300) #10
  br label %if.end185

if.end185:                                        ; preds = %do.body173, %land.lhs.true168.if.end185_crit_edge, %if.end163.if.end185_crit_edge
  tail call fastcc void @tb_add_dp_resources(ptr noundef %call82)
  tail call fastcc void @tb_scan_switch(ptr noundef %call82)
  br label %cleanup

cleanup:                                          ; preds = %if.end185, %if.then112, %if.then96, %if.then91, %if.then84.cleanup_crit_edge, %if.then60, %do.body46, %if.end38.cleanup_crit_edge, %land.lhs.true32.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.end.i, %do.end.cleanup_crit_edge, %tb_is_upstream_port.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_dp_port_hpd_is_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_dp_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_wait_for_port(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_retimer_scan(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_scan_xdomain(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  %tb2 = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %tb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb2, align 8
  %call = tail call zeroext i1 @tb_is_xdomain_enabled() #6
  br i1 %call, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw1, align 4
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %7 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %7, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %9 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port1.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %10 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %port1.i, align 4
  %conv.i = zext i8 %11 to i64
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i = load i32, ptr %depth.i, align 4
  %13 = lshr i32 %bf.load.i, 6
  %mul.i = and i32 %13, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shl.i = shl nuw i64 %conv.i, %sh_prom.i
  %or.i = or i64 %or.i.i, %shl.i
  %call4 = tail call ptr @tb_xdomain_find_by_route(ptr noundef %3, i64 noundef %or.i) #6
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end6, label %tb_xdomain_put.exit

tb_xdomain_put.exit:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @put_device(ptr noundef nonnull %call4) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %root_switch = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 5
  %14 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %root_switch, align 8
  %uuid = getelementptr inbounds %struct.tb_switch, ptr %15, i32 0, i32 7
  %16 = ptrtoint ptr %uuid to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %uuid, align 8
  %call7 = tail call ptr @tb_xdomain_alloc(ptr noundef %3, ptr noundef %1, i64 noundef %or.i, ptr noundef %17, ptr noundef null) #6
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %if.then9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  %depth.i28 = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %depth.i28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %bf.load.i29 = load i32, ptr %depth.i28, align 4
  %19 = lshr i32 %bf.load.i29, 6
  %mul.i30 = and i32 %19, 56
  %sh_prom.i31 = zext i32 %mul.i30 to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i31
  %conv.i32 = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i32, 255
  %bf.lshr4.i = lshr i32 %bf.load.i29, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %21, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %xdomain = getelementptr inbounds %struct.tb_port, ptr %retval.0.i, i32 0, i32 3
  %22 = ptrtoint ptr %xdomain to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7, ptr %xdomain, align 4
  %dual_link_port.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 12
  %23 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dual_link_port.i, align 4
  %call.i = tail call i32 @tb_port_disable(ptr noundef %24) #6
  %25 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw1, align 4
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %26, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load.i.i34 = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i34, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i, label %if.then.i35, label %if.end.i

if.then.i35:                                      ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @usb4_port_configure_xdomain(ptr noundef %port) #6
  br label %tb_port_configure_xdomain.exit

if.end.i:                                         ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @tb_lc_configure_xdomain(ptr noundef %port) #6
  br label %tb_port_configure_xdomain.exit

tb_port_configure_xdomain.exit:                   ; preds = %if.end.i, %if.then.i35
  tail call void @tb_xdomain_add(ptr noundef nonnull %call7) #6
  br label %cleanup

cleanup:                                          ; preds = %tb_port_configure_xdomain.exit, %if.end6.cleanup_crit_edge, %tb_xdomain_put.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_port_unconfigure_xdomain(ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %thunderbolt_version.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %thunderbolt_version.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load.i = load i64, ptr %thunderbolt_version.i, align 4
  %bf.cast1.i = and i64 %bf.load.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i)
  %cmp.i = icmp eq i64 %bf.cast1.i, 32
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb4_port_unconfigure_xdomain(ptr noundef %port) #6
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_lc_unconfigure_xdomain(ptr noundef %port) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dual_link_port = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 12
  %3 = ptrtoint ptr %dual_link_port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dual_link_port, align 4
  %call1 = tail call i32 @tb_port_enable(ptr noundef %4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_lane_bonding_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_configure_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_enable_clx(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_enable_tmu(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %rate.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 2
  %0 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp.i = icmp eq i32 %1, 16
  br i1 %cmp.i, label %tb_switch_tmu_hifi_is_enabled.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tb_switch_tmu_hifi_is_enabled.exit:               ; preds = %entry
  %unidirectional_request = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 4
  %2 = ptrtoint ptr %unidirectional_request to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %unidirectional_request, align 1, !range !222
  %unidirectional2.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %unidirectional2.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %unidirectional2.i, align 4, !range !222
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %3)
  %cmp5.i = icmp eq i8 %5, %3
  br i1 %cmp5.i, label %tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge, label %tb_switch_tmu_hifi_is_enabled.exit.if.end_crit_edge

tb_switch_tmu_hifi_is_enabled.exit.if.end_crit_edge: ; preds = %tb_switch_tmu_hifi_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge: ; preds = %tb_switch_tmu_hifi_is_enabled.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_switch_tmu_hifi_is_enabled.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call i32 @tb_switch_tmu_disable(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @tb_switch_tmu_post_time(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @tb_switch_tmu_enable(ptr noundef %sw) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %tb_switch_tmu_hifi_is_enabled.exit.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_tunnel_usb3(ptr noundef %tb, ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  %available_up = alloca i32, align 4
  %available_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %1, ptr null
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_up) #6
  %4 = ptrtoint ptr %available_up to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %available_up, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_down) #6
  %5 = ptrtoint ptr %available_down to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %available_down, align 4, !annotation !223
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %call8 = tail call ptr @tb_switch_find_port(ptr noundef %sw, i32 noundef 2097410) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %entry.cleanup97_crit_edge, label %if.end11

entry.cleanup97_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end11:                                         ; preds = %entry
  %link_usb4 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 14
  %6 = ptrtoint ptr %link_usb4 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %link_usb4, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool12.not = icmp eq i8 %7, 0
  br i1 %tobool12.not, label %if.end11.cleanup97_crit_edge, label %if.end14

if.end11.cleanup97_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end14:                                         ; preds = %if.end11
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %9 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %9, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i143 = load i32, ptr %depth.i, align 4
  %13 = lshr i32 %bf.load.i143, 6
  %mul.i = and i32 %13, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i143, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %15, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i144 = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %call.i = tail call ptr @usb4_switch_map_usb3_down(ptr noundef %dev..i.i, ptr noundef %retval.0.i144) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %tb_port_at.exit.cleanup97_crit_edge, label %land.lhs.true.i

tb_port_at.exit.cleanup97_crit_edge:              ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

land.lhs.true.i:                                  ; preds = %tb_port_at.exit
  %call1.i = tail call zeroext i1 @tb_usb3_port_is_enabled(ptr noundef nonnull %call.i) #6
  br i1 %call1.i, label %land.lhs.true.i.cleanup97_crit_edge, label %if.end20

land.lhs.true.i.cleanup97_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end20:                                         ; preds = %land.lhs.true.i
  %route_hi.i146 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %route_hi.i146 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %bf.load.i147 = load i64, ptr %route_hi.i146, align 4
  %17 = lshr i64 %bf.load.i147, 1
  %shl.i148 = and i64 %17, 9223372032559808512
  %route_lo.i149 = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %route_lo.i149 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %route_lo.i149, align 8
  %conv2.i150 = zext i32 %19 to i64
  %or.i151 = or i64 %shl.i148, %conv2.i150
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i151)
  %tobool22.not = icmp eq i64 %or.i151, 0
  br i1 %tobool22.not, label %if.end20.if.end33_crit_edge, label %if.then23

if.end20.if.end33_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.then23:                                        ; preds = %if.end20
  %call24 = tail call ptr @tb_switch_find_port(ptr noundef %dev..i.i, i32 noundef 2097410) #6
  %tobool25.not = icmp eq ptr %call24, null
  br i1 %tobool25.not, label %if.then23.cleanup97_crit_edge, label %lor.lhs.false

if.then23.cleanup97_crit_edge:                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

lor.lhs.false:                                    ; preds = %if.then23
  %call26 = tail call zeroext i1 @tb_port_is_enabled(ptr noundef nonnull %call24) #6
  br i1 %call26, label %if.end28, label %lor.lhs.false.cleanup97_crit_edge

lor.lhs.false.cleanup97_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

if.end28:                                         ; preds = %lor.lhs.false
  %call.i152 = tail call fastcc ptr @tb_find_first_usb3_tunnel(ptr noundef %tb, ptr noundef nonnull %call.i, ptr noundef nonnull %call8) #6
  %tobool.not.i153 = icmp eq ptr %call.i152, null
  br i1 %tobool.not.i153, label %if.end28.if.end33_crit_edge, label %cleanup

if.end28.if.end33_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

cleanup:                                          ; preds = %if.end28
  %call1.i154 = tail call i32 @tb_tunnel_release_unused_bandwidth(ptr noundef nonnull %call.i152) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i154)
  %tobool30.not = icmp eq i32 %call1.i154, 0
  br i1 %tobool30.not, label %cleanup.if.end33_crit_edge, label %cleanup.cleanup97_crit_edge

cleanup.cleanup97_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

cleanup.if.end33_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.end33:                                         ; preds = %cleanup.if.end33_crit_edge, %if.end28.if.end33_crit_edge, %if.end20.if.end33_crit_edge
  %call34 = call fastcc i32 @tb_available_bandwidth(ptr noundef %tb, ptr noundef nonnull %call.i, ptr noundef nonnull %call8, ptr noundef nonnull %available_up, ptr noundef nonnull %available_down)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %do.body38, label %if.end33.err_reclaim_crit_edge

if.end33.err_reclaim_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reclaim

do.body38:                                        ; preds = %if.end33
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_usb3.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_usb3, %if.then51)) #6
          to label %do.end62 [label %if.then51], !srcloc !219

if.then51:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  %sw52 = getelementptr inbounds %struct.tb_port, ptr %call8, i32 0, i32 1
  %20 = ptrtoint ptr %sw52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw52, align 4
  %tb53 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %tb53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tb53, align 8
  %nhi54 = getelementptr inbounds %struct.tb, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %nhi54 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %nhi54, align 4
  %pdev55 = getelementptr inbounds %struct.tb_nhi, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %pdev55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %27, i32 0, i32 44
  %route_hi.i155 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i155 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i156 = load i64, ptr %route_hi.i155, align 4
  %29 = lshr i64 %bf.load.i156, 1
  %shl.i157 = and i64 %29, 9223372032559808512
  %route_lo.i158 = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i158 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i158, align 8
  %conv2.i159 = zext i32 %31 to i64
  %or.i160 = or i64 %shl.i157, %conv2.i159
  %port59 = getelementptr inbounds %struct.tb_port, ptr %call8, i32 0, i32 9
  %32 = ptrtoint ptr %port59 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port59, align 4
  %conv = zext i8 %33 to i32
  %34 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %available_up, align 4
  %36 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %available_down, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_usb3.__UNIQUE_ID_ddebug244, ptr noundef %dev56, ptr noundef nonnull @.str.67, i64 noundef %or.i160, i32 noundef %conv, i32 noundef %35, i32 noundef %37) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then51, %do.body38
  %38 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %available_up, align 4
  %40 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %available_down, align 4
  %call65 = tail call ptr @tb_tunnel_alloc_usb3(ptr noundef %tb, ptr noundef nonnull %call8, ptr noundef nonnull %call.i, i32 noundef %39, i32 noundef %41) #6
  %tobool66.not = icmp eq ptr %call65, null
  br i1 %tobool66.not, label %do.end62.err_reclaim_crit_edge, label %if.end68

do.end62.err_reclaim_crit_edge:                   ; preds = %do.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reclaim

if.end68:                                         ; preds = %do.end62
  %call69 = tail call i32 @tb_tunnel_activate(ptr noundef nonnull %call65) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end88, label %do.body72

do.body72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  %sw77 = getelementptr inbounds %struct.tb_port, ptr %call8, i32 0, i32 1
  %42 = ptrtoint ptr %sw77 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw77, align 4
  %tb78 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %tb78 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %tb78, align 8
  %nhi79 = getelementptr inbounds %struct.tb, ptr %45, i32 0, i32 2
  %46 = ptrtoint ptr %nhi79 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %nhi79, align 4
  %pdev80 = getelementptr inbounds %struct.tb_nhi, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %pdev80 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %route_hi.i161 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 4
  %50 = ptrtoint ptr %route_hi.i161 to i32
  call void @__asan_loadN_noabort(i32 %50, i32 8)
  %bf.load.i162 = load i64, ptr %route_hi.i161, align 4
  %51 = lshr i64 %bf.load.i162, 1
  %shl.i163 = and i64 %51, 9223372032559808512
  %route_lo.i164 = getelementptr inbounds %struct.tb_switch, ptr %43, i32 0, i32 1, i32 3
  %52 = ptrtoint ptr %route_lo.i164 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %route_lo.i164, align 8
  %conv2.i165 = zext i32 %53 to i64
  %or.i166 = or i64 %shl.i163, %conv2.i165
  %port84 = getelementptr inbounds %struct.tb_port, ptr %call8, i32 0, i32 9
  %54 = ptrtoint ptr %port84 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %port84, align 4
  %conv85 = zext i8 %55 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev81, ptr noundef nonnull @.str.68, i64 noundef %or.i166, i32 noundef %conv85) #10
  tail call void @tb_tunnel_free(ptr noundef nonnull %call65) #6
  br label %err_reclaim

if.end88:                                         ; preds = %if.end68
  %list = getelementptr inbounds %struct.tb_tunnel, ptr %call65, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %57, ptr noundef %privdata.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end88.list_add_tail.exit_crit_edge

if.end88.list_add_tail.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #8
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %list, ptr %prev.i, align 4
  %59 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %privdata.i, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tb_tunnel, ptr %call65, i32 0, i32 11, i32 1
  %60 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev3.i.i, align 4
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %list, ptr %57, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end88.list_add_tail.exit_crit_edge
  %62 = ptrtoint ptr %route_hi.i146 to i32
  call void @__asan_loadN_noabort(i32 %62, i32 8)
  %bf.load.i168 = load i64, ptr %route_hi.i146, align 4
  %63 = lshr i64 %bf.load.i168, 1
  %shl.i169 = and i64 %63, 9223372032559808512
  %64 = ptrtoint ptr %route_lo.i149 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %route_lo.i149, align 8
  %conv2.i171 = zext i32 %65 to i64
  %or.i172 = or i64 %shl.i169, %conv2.i171
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i172)
  %tobool90.not = icmp eq i64 %or.i172, 0
  br i1 %tobool90.not, label %list_add_tail.exit.cleanup97_crit_edge, label %list_add_tail.exit.cleanup97.sink.split_crit_edge

list_add_tail.exit.cleanup97.sink.split_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97.sink.split

list_add_tail.exit.cleanup97_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

err_reclaim:                                      ; preds = %do.body72, %do.end62.err_reclaim_crit_edge, %if.end33.err_reclaim_crit_edge
  %ret.0 = phi i32 [ %call34, %if.end33.err_reclaim_crit_edge ], [ -5, %do.body72 ], [ -12, %do.end62.err_reclaim_crit_edge ]
  %66 = ptrtoint ptr %route_hi.i146 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %bf.load.i174 = load i64, ptr %route_hi.i146, align 4
  %67 = lshr i64 %bf.load.i174, 1
  %shl.i175 = and i64 %67, 9223372032559808512
  %68 = ptrtoint ptr %route_lo.i149 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %route_lo.i149, align 8
  %conv2.i177 = zext i32 %69 to i64
  %or.i178 = or i64 %shl.i175, %conv2.i177
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i178)
  %tobool94.not = icmp eq i64 %or.i178, 0
  br i1 %tobool94.not, label %err_reclaim.cleanup97_crit_edge, label %err_reclaim.cleanup97.sink.split_crit_edge

err_reclaim.cleanup97.sink.split_crit_edge:       ; preds = %err_reclaim
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97.sink.split

err_reclaim.cleanup97_crit_edge:                  ; preds = %err_reclaim
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup97

cleanup97.sink.split:                             ; preds = %err_reclaim.cleanup97.sink.split_crit_edge, %list_add_tail.exit.cleanup97.sink.split_crit_edge
  %retval.1.ph = phi i32 [ 0, %list_add_tail.exit.cleanup97.sink.split_crit_edge ], [ %ret.0, %err_reclaim.cleanup97.sink.split_crit_edge ]
  tail call fastcc void @tb_reclaim_usb3_bandwidth(ptr noundef %tb, ptr noundef nonnull %call.i, ptr noundef nonnull %call8)
  br label %cleanup97

cleanup97:                                        ; preds = %cleanup97.sink.split, %err_reclaim.cleanup97_crit_edge, %list_add_tail.exit.cleanup97_crit_edge, %cleanup.cleanup97_crit_edge, %lor.lhs.false.cleanup97_crit_edge, %if.then23.cleanup97_crit_edge, %land.lhs.true.i.cleanup97_crit_edge, %tb_port_at.exit.cleanup97_crit_edge, %if.end11.cleanup97_crit_edge, %entry.cleanup97_crit_edge
  %retval.1 = phi i32 [ %call1.i154, %cleanup.cleanup97_crit_edge ], [ 0, %entry.cleanup97_crit_edge ], [ 0, %if.end11.cleanup97_crit_edge ], [ 0, %list_add_tail.exit.cleanup97_crit_edge ], [ %ret.0, %err_reclaim.cleanup97_crit_edge ], [ 0, %tb_port_at.exit.cleanup97_crit_edge ], [ 0, %land.lhs.true.i.cleanup97_crit_edge ], [ 0, %lor.lhs.false.cleanup97_crit_edge ], [ 0, %if.then23.cleanup97_crit_edge ], [ %retval.1.ph, %cleanup97.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_up) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tb_handle_hotplug(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tb1 = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 1
  %0 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb1, align 4
  %privdata.i = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #6
  %lock = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %hotplug_active = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 0, i32 2
  %2 = ptrtoint ptr %hotplug_active to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %hotplug_active, align 4, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %route = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 2
  %4 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %route, align 8
  %call3 = tail call ptr @tb_switch_find_by_route(ptr noundef %1, i64 noundef %5) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %nhi = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev6 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %10 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %route, align 8
  %port8 = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 3
  %12 = ptrtoint ptr %port8 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %port8, align 8
  %conv = zext i8 %13 to i32
  %unplug = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 4
  %14 = ptrtoint ptr %unplug to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %unplug, align 1, !range !222
  %16 = zext i8 %15 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev6, ptr noundef nonnull @.str.20, i64 noundef %11, i32 noundef %conv, i32 noundef %16) #10
  br label %out

if.end11:                                         ; preds = %if.end
  %port12 = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 3
  %17 = ptrtoint ptr %port12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port12, align 8
  %conv13 = zext i8 %18 to i32
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %call3, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %conv13)
  %cmp = icmp ult i32 %bf.clear, %conv13
  br i1 %cmp, label %do.end18, label %if.end28

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %nhi19 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %nhi19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi19, align 4
  %pdev20 = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev20 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev20, align 4
  %dev21 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %24 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %route, align 8
  %unplug25 = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 4
  %26 = ptrtoint ptr %unplug25 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %unplug25, align 1, !range !222
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev21, ptr noundef nonnull @.str.23, i64 noundef %25, i32 noundef %conv13, i32 noundef %28) #10
  br label %put_sw

if.end28:                                         ; preds = %if.end11
  %ports = getelementptr inbounds %struct.tb_switch, ptr %call3, i32 0, i32 2
  %29 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ports, align 4
  %arrayidx = getelementptr %struct.tb_port, ptr %30, i32 %conv13
  %sw.i = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 1
  %31 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sw.i, align 4
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %34, i32 %bf.clear.i.i
  %cmp.i = icmp eq ptr %arrayidx.i.i, %arrayidx
  br i1 %cmp.i, label %if.end28.do.body32_crit_edge, label %tb_is_upstream_port.exit

if.end28.do.body32_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

tb_is_upstream_port.exit:                         ; preds = %if.end28
  %dual_link_port.i = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 12
  %36 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %37, %arrayidx.i.i
  br i1 %cmp1.i, label %tb_is_upstream_port.exit.do.body32_crit_edge, label %if.end51

tb_is_upstream_port.exit.do.body32_crit_edge:     ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body32

do.body32:                                        ; preds = %tb_is_upstream_port.exit.do.body32_crit_edge, %if.end28.do.body32_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then38)) #6
          to label %put_sw [label %if.then38], !srcloc !219

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %nhi39 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %nhi39 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nhi39, align 4
  %pdev40 = getelementptr inbounds %struct.tb_nhi, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pdev40 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev40, align 4
  %dev41 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  %42 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %route, align 8
  %44 = ptrtoint ptr %port12 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %port12, align 8
  %conv44 = zext i8 %45 to i32
  %unplug45 = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 4
  %46 = ptrtoint ptr %unplug45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %unplug45, align 1, !range !222
  %48 = zext i8 %47 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug261, ptr noundef %dev41, ptr noundef nonnull @.str.25, i64 noundef %43, i32 noundef %conv44, i32 noundef %48) #6
  br label %put_sw

if.end51:                                         ; preds = %tb_is_upstream_port.exit
  %call.i393 = tail call i32 @__pm_runtime_resume(ptr noundef nonnull %call3, i32 noundef 4) #6
  %unplug54 = getelementptr inbounds %struct.tb_hotplug_event, ptr %work, i32 0, i32 4
  %49 = ptrtoint ptr %unplug54 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %unplug54, align 1, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool55.not = icmp eq i8 %50, 0
  br i1 %tobool55.not, label %if.else178, label %if.then56

if.then56:                                        ; preds = %if.end51
  tail call void @tb_retimer_remove_all(ptr noundef %arrayidx) #6
  %51 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %sw.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %52, i32 0, i32 1, i32 2
  %55 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %54, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %arrayidx
  br i1 %cmp.i.i, label %if.then56.if.else_crit_edge, label %tb_is_upstream_port.exit.i

if.then56.if.else_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

tb_is_upstream_port.exit.i:                       ; preds = %if.then56
  %56 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i.i = icmp eq ptr %57, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.if.else_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.if.else_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 2
  %58 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %59, null
  br i1 %tobool.not.i, label %if.end.i.if.else_crit_edge, label %if.end2.i

if.end.i.if.else_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %57, null
  br i1 %tobool3.not.i, label %if.end2.i.do.body59_crit_edge, label %land.lhs.true.i

if.end2.i.do.body59_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 13
  %60 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.do.body59_crit_edge, label %land.lhs.true.i.if.else_crit_edge

land.lhs.true.i.if.else_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true.i.do.body59_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body59

do.body59:                                        ; preds = %land.lhs.true.i.do.body59_crit_edge, %if.end2.i.do.body59_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then72)) #6
          to label %do.end84 [label %if.then72], !srcloc !219

if.then72:                                        ; preds = %do.body59
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %sw.i, align 4
  %tb74 = getelementptr inbounds %struct.tb_switch, ptr %62, i32 0, i32 5
  %63 = ptrtoint ptr %tb74 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tb74, align 8
  %nhi75 = getelementptr inbounds %struct.tb, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %nhi75 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %nhi75, align 4
  %pdev76 = getelementptr inbounds %struct.tb_nhi, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %pdev76 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pdev76, align 4
  %dev77 = getelementptr inbounds %struct.pci_dev, ptr %68, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %62, i32 0, i32 1, i32 4
  %69 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 8)
  %bf.load.i395 = load i64, ptr %route_hi.i, align 4
  %70 = lshr i64 %bf.load.i395, 1
  %shl.i = and i64 %70, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %62, i32 0, i32 1, i32 3
  %71 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %72 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port80 = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 9
  %73 = ptrtoint ptr %port80 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %port80, align 4
  %conv81 = zext i8 %74 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug262, ptr noundef %dev77, ptr noundef nonnull @.str.26, i64 noundef %or.i, i32 noundef %conv81) #6
  br label %do.end84

do.end84:                                         ; preds = %if.then72, %do.body59
  %75 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %remote.i, align 4
  %sw87 = getelementptr inbounds %struct.tb_port, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %sw87 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %sw87, align 4
  tail call void @tb_sw_set_unplugged(ptr noundef %78) #6
  %79 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %privdata.i, align 4
  %cmp.not21.i = icmp eq ptr %80, %privdata.i
  br i1 %cmp.not21.i, label %do.end84.tb_free_invalid_tunnels.exit_crit_edge, label %do.end84.for.body.i_crit_edge

do.end84.for.body.i_crit_edge:                    ; preds = %do.end84
  br label %for.body.i

do.end84.tb_free_invalid_tunnels.exit_crit_edge:  ; preds = %do.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_free_invalid_tunnels.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.end84.for.body.i_crit_edge
  %.pn23.in.i = phi ptr [ %.pn23.i, %for.inc.i.for.body.i_crit_edge ], [ %80, %do.end84.for.body.i_crit_edge ]
  %tunnel.022.i = getelementptr i8, ptr %.pn23.in.i, i32 -44
  %81 = ptrtoint ptr %.pn23.in.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pn23.i = load ptr, ptr %.pn23.in.i, align 4
  %call7.i = tail call zeroext i1 @tb_tunnel_is_invalid(ptr noundef %tunnel.022.i) #6
  br i1 %call7.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %tunnel.022.i) #6
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn23.i, %privdata.i
  br i1 %cmp.not.i, label %for.inc.i.tb_free_invalid_tunnels.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.tb_free_invalid_tunnels.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_free_invalid_tunnels.exit

tb_free_invalid_tunnels.exit:                     ; preds = %for.inc.i.tb_free_invalid_tunnels.exit_crit_edge, %do.end84.tb_free_invalid_tunnels.exit_crit_edge
  %82 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %remote.i, align 4
  %sw89 = getelementptr inbounds %struct.tb_port, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %sw89 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %sw89, align 4
  tail call fastcc void @tb_remove_dp_resources(ptr noundef %85)
  %86 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %remote.i, align 4
  %sw91 = getelementptr inbounds %struct.tb_port, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %sw91 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %sw91, align 4
  %call92 = tail call i32 @tb_switch_tmu_disable(ptr noundef %89) #6
  %90 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %remote.i, align 4
  %sw94 = getelementptr inbounds %struct.tb_port, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %sw94 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sw94, align 4
  tail call void @tb_switch_unconfigure_link(ptr noundef %93) #6
  %94 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %remote.i, align 4
  %sw96 = getelementptr inbounds %struct.tb_port, ptr %95, i32 0, i32 1
  %96 = ptrtoint ptr %sw96 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %sw96, align 4
  tail call void @tb_switch_lane_bonding_disable(ptr noundef %97) #6
  %98 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %remote.i, align 4
  %sw98 = getelementptr inbounds %struct.tb_port, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %sw98 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %sw98, align 4
  tail call void @tb_switch_remove(ptr noundef %101) #6
  %102 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr null, ptr %remote.i, align 4
  %103 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dual_link_port.i, align 4
  %tobool100.not = icmp eq ptr %104, null
  br i1 %tobool100.not, label %tb_free_invalid_tunnels.exit.if.end104_crit_edge, label %if.then101

tb_free_invalid_tunnels.exit.if.end104_crit_edge: ; preds = %tb_free_invalid_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end104

if.then101:                                       ; preds = %tb_free_invalid_tunnels.exit
  call void @__sanitizer_cov_trace_pc() #8
  %remote103 = getelementptr inbounds %struct.tb_port, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %remote103 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr null, ptr %remote103, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then101, %tb_free_invalid_tunnels.exit.if.end104_crit_edge
  tail call fastcc void @tb_tunnel_dp(ptr noundef %1)
  br label %if.end286

if.else:                                          ; preds = %land.lhs.true.i.if.else_crit_edge, %if.end.i.if.else_crit_edge, %tb_is_upstream_port.exit.i.if.else_crit_edge, %if.then56.if.else_crit_edge
  %xdomain = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 3
  %106 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %xdomain, align 4
  %tobool105.not = icmp eq ptr %107, null
  br i1 %tobool105.not, label %if.else139, label %tb_xdomain_get.exit

tb_xdomain_get.exit:                              ; preds = %if.else
  %call.i397 = tail call ptr @get_device(ptr noundef nonnull %107) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then123)) #6
          to label %tb_xdomain_put.exit [label %if.then123], !srcloc !219

if.then123:                                       ; preds = %tb_xdomain_get.exit
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %sw.i, align 4
  %tb125 = getelementptr inbounds %struct.tb_switch, ptr %109, i32 0, i32 5
  %110 = ptrtoint ptr %tb125 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %tb125, align 8
  %nhi126 = getelementptr inbounds %struct.tb, ptr %111, i32 0, i32 2
  %112 = ptrtoint ptr %nhi126 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %nhi126, align 4
  %pdev127 = getelementptr inbounds %struct.tb_nhi, ptr %113, i32 0, i32 1
  %114 = ptrtoint ptr %pdev127 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %pdev127, align 4
  %dev128 = getelementptr inbounds %struct.pci_dev, ptr %115, i32 0, i32 44
  %route_hi.i400 = getelementptr inbounds %struct.tb_switch, ptr %109, i32 0, i32 1, i32 4
  %116 = ptrtoint ptr %route_hi.i400 to i32
  call void @__asan_loadN_noabort(i32 %116, i32 8)
  %bf.load.i401 = load i64, ptr %route_hi.i400, align 4
  %117 = lshr i64 %bf.load.i401, 1
  %shl.i402 = and i64 %117, 9223372032559808512
  %route_lo.i403 = getelementptr inbounds %struct.tb_switch, ptr %109, i32 0, i32 1, i32 3
  %118 = ptrtoint ptr %route_lo.i403 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %route_lo.i403, align 8
  %conv2.i404 = zext i32 %119 to i64
  %or.i405 = or i64 %shl.i402, %conv2.i404
  %port131 = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 9
  %120 = ptrtoint ptr %port131 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %port131, align 4
  %conv132 = zext i8 %121 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug263, ptr noundef %dev128, ptr noundef nonnull @.str.27, i64 noundef %or.i405, i32 noundef %conv132) #6
  br label %tb_xdomain_put.exit

tb_xdomain_put.exit:                              ; preds = %if.then123, %tb_xdomain_get.exit
  %is_unplugged = getelementptr inbounds %struct.tb_xdomain, ptr %107, i32 0, i32 14
  %122 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %is_unplugged, align 8
  tail call void @tb_xdomain_remove(ptr noundef nonnull %107) #6
  %123 = ptrtoint ptr %xdomain to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr null, ptr %xdomain, align 4
  tail call fastcc void @__tb_disconnect_xdomain_paths(ptr noundef %1, ptr noundef nonnull %107, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1)
  tail call void @put_device(ptr noundef nonnull %107) #6
  %124 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %sw.i, align 4
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %125, i32 0, i32 1, i32 4
  %126 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %126, i32 8)
  %bf.load.i.i410 = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i410, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i411 = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i411, label %if.then.i412, label %if.else.i

if.then.i412:                                     ; preds = %tb_xdomain_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb4_port_unconfigure_xdomain(ptr noundef %arrayidx) #6
  br label %tb_port_unconfigure_xdomain.exit

if.else.i:                                        ; preds = %tb_xdomain_put.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_lc_unconfigure_xdomain(ptr noundef %arrayidx) #6
  br label %tb_port_unconfigure_xdomain.exit

tb_port_unconfigure_xdomain.exit:                 ; preds = %if.else.i, %if.then.i412
  %127 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %dual_link_port.i, align 4
  %call1.i = tail call i32 @tb_port_enable(ptr noundef %128) #6
  br label %if.end286

if.else139:                                       ; preds = %if.else
  %tobool.not.i415 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i415, label %if.else139.do.body146_crit_edge, label %tb_port_is_dpout.exit

if.else139.do.body146_crit_edge:                  ; preds = %if.else139
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body146

tb_port_is_dpout.exit:                            ; preds = %if.else139
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %arrayidx, i32 0, i32 2
  %129 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %129, i32 12)
  %bf.load.i416 = load i96, ptr %type.i, align 4
  %130 = and i96 %bf.load.i416, 18446742974197923840
  %cmp.i417 = icmp eq i96 %130, 1009089990530957312
  br i1 %cmp.i417, label %tb_port_is_dpout.exit.if.then144_crit_edge, label %tb_port_is_dpin.exit

tb_port_is_dpout.exit.if.then144_crit_edge:       ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then144

tb_port_is_dpin.exit:                             ; preds = %tb_port_is_dpout.exit
  %131 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %131, i32 12)
  %bf.load.i420 = load i96, ptr %type.i, align 4
  %132 = and i96 %bf.load.i420, 18446742974197923840
  %cmp.i421 = icmp eq i96 %132, 1009088891019329536
  br i1 %cmp.i421, label %tb_port_is_dpin.exit.if.then144_crit_edge, label %tb_port_is_dpin.exit.do.body146_crit_edge

tb_port_is_dpin.exit.do.body146_crit_edge:        ; preds = %tb_port_is_dpin.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body146

tb_port_is_dpin.exit.if.then144_crit_edge:        ; preds = %tb_port_is_dpin.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then144

if.then144:                                       ; preds = %tb_port_is_dpin.exit.if.then144_crit_edge, %tb_port_is_dpout.exit.if.then144_crit_edge
  tail call fastcc void @tb_dp_resource_unavailable(ptr noundef %1, ptr noundef nonnull %arrayidx)
  br label %if.end286

do.body146:                                       ; preds = %tb_port_is_dpin.exit.do.body146_crit_edge, %if.else139.do.body146_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then160)) #6
          to label %if.end286 [label %if.then160], !srcloc !219

if.then160:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %133 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %sw.i, align 4
  %tb162 = getelementptr inbounds %struct.tb_switch, ptr %134, i32 0, i32 5
  %135 = ptrtoint ptr %tb162 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %tb162, align 8
  %nhi163 = getelementptr inbounds %struct.tb, ptr %136, i32 0, i32 2
  %137 = ptrtoint ptr %nhi163 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %nhi163, align 4
  %pdev164 = getelementptr inbounds %struct.tb_nhi, ptr %138, i32 0, i32 1
  %139 = ptrtoint ptr %pdev164 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %pdev164, align 4
  %dev165 = getelementptr inbounds %struct.pci_dev, ptr %140, i32 0, i32 44
  %route_hi.i423 = getelementptr inbounds %struct.tb_switch, ptr %134, i32 0, i32 1, i32 4
  %141 = ptrtoint ptr %route_hi.i423 to i32
  call void @__asan_loadN_noabort(i32 %141, i32 8)
  %bf.load.i424 = load i64, ptr %route_hi.i423, align 4
  %142 = lshr i64 %bf.load.i424, 1
  %shl.i425 = and i64 %142, 9223372032559808512
  %route_lo.i426 = getelementptr inbounds %struct.tb_switch, ptr %134, i32 0, i32 1, i32 3
  %143 = ptrtoint ptr %route_lo.i426 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %route_lo.i426, align 8
  %conv2.i427 = zext i32 %144 to i64
  %or.i428 = or i64 %shl.i425, %conv2.i427
  %port168 = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 9
  %145 = ptrtoint ptr %port168 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %port168, align 4
  %conv169 = zext i8 %146 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug264, ptr noundef %dev165, ptr noundef nonnull @.str.28, i64 noundef %or.i428, i32 noundef %conv169) #6
  br label %if.end286

if.else178:                                       ; preds = %if.end51
  %remote179 = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 2
  %147 = ptrtoint ptr %remote179 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %remote179, align 4
  %tobool180.not = icmp eq ptr %148, null
  br i1 %tobool180.not, label %if.else211, label %do.body182

do.body182:                                       ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then196)) #6
          to label %if.end286 [label %if.then196], !srcloc !219

if.then196:                                       ; preds = %do.body182
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %sw.i, align 4
  %tb198 = getelementptr inbounds %struct.tb_switch, ptr %150, i32 0, i32 5
  %151 = ptrtoint ptr %tb198 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %tb198, align 8
  %nhi199 = getelementptr inbounds %struct.tb, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %nhi199 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %nhi199, align 4
  %pdev200 = getelementptr inbounds %struct.tb_nhi, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %pdev200 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %pdev200, align 4
  %dev201 = getelementptr inbounds %struct.pci_dev, ptr %156, i32 0, i32 44
  %route_hi.i429 = getelementptr inbounds %struct.tb_switch, ptr %150, i32 0, i32 1, i32 4
  %157 = ptrtoint ptr %route_hi.i429 to i32
  call void @__asan_loadN_noabort(i32 %157, i32 8)
  %bf.load.i430 = load i64, ptr %route_hi.i429, align 4
  %158 = lshr i64 %bf.load.i430, 1
  %shl.i431 = and i64 %158, 9223372032559808512
  %route_lo.i432 = getelementptr inbounds %struct.tb_switch, ptr %150, i32 0, i32 1, i32 3
  %159 = ptrtoint ptr %route_lo.i432 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %route_lo.i432, align 8
  %conv2.i433 = zext i32 %160 to i64
  %or.i434 = or i64 %shl.i431, %conv2.i433
  %port204 = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 9
  %161 = ptrtoint ptr %port204 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %port204, align 4
  %conv205 = zext i8 %162 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug265, ptr noundef %dev201, ptr noundef nonnull @.str.29, i64 noundef %or.i434, i32 noundef %conv205) #6
  br label %if.end286

if.else211:                                       ; preds = %if.else178
  %tobool.not.i435 = icmp eq ptr %arrayidx, null
  br i1 %tobool.not.i435, label %if.else211.if.end286_crit_edge, label %land.lhs.true.i436

if.else211.if.end286_crit_edge:                   ; preds = %if.else211
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

land.lhs.true.i436:                               ; preds = %if.else211
  %port1.i = getelementptr %struct.tb_port, ptr %30, i32 %conv13, i32 9
  %163 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %port1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool2.not.i = icmp eq i8 %164, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i436.tb_port_is_dpout.exit458_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i436.tb_port_is_dpout.exit458_crit_edge: ; preds = %land.lhs.true.i436
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_dpout.exit458

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i436
  %type.i437 = getelementptr inbounds %struct.tb_regs_port_header, ptr %arrayidx, i32 0, i32 2
  %165 = ptrtoint ptr %type.i437 to i32
  call void @__asan_loadN_noabort(i32 %165, i32 12)
  %bf.load.i438 = load i96, ptr %type.i437, align 4
  %166 = and i96 %bf.load.i438, 18446742974197923840
  %cmp.i439 = icmp eq i96 %166, 1099511627776
  br i1 %cmp.i439, label %do.body214, label %tb_port_is_null.exit.tb_port_is_dpout.exit458_crit_edge

tb_port_is_null.exit.tb_port_is_dpout.exit458_crit_edge: ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_dpout.exit458

do.body214:                                       ; preds = %tb_port_is_null.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then228)) #6
          to label %do.end240 [label %if.then228], !srcloc !219

if.then228:                                       ; preds = %do.body214
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %sw.i, align 4
  %tb230 = getelementptr inbounds %struct.tb_switch, ptr %168, i32 0, i32 5
  %169 = ptrtoint ptr %tb230 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %tb230, align 8
  %nhi231 = getelementptr inbounds %struct.tb, ptr %170, i32 0, i32 2
  %171 = ptrtoint ptr %nhi231 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %nhi231, align 4
  %pdev232 = getelementptr inbounds %struct.tb_nhi, ptr %172, i32 0, i32 1
  %173 = ptrtoint ptr %pdev232 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %pdev232, align 4
  %dev233 = getelementptr inbounds %struct.pci_dev, ptr %174, i32 0, i32 44
  %route_hi.i441 = getelementptr inbounds %struct.tb_switch, ptr %168, i32 0, i32 1, i32 4
  %175 = ptrtoint ptr %route_hi.i441 to i32
  call void @__asan_loadN_noabort(i32 %175, i32 8)
  %bf.load.i442 = load i64, ptr %route_hi.i441, align 4
  %176 = lshr i64 %bf.load.i442, 1
  %shl.i443 = and i64 %176, 9223372032559808512
  %route_lo.i444 = getelementptr inbounds %struct.tb_switch, ptr %168, i32 0, i32 1, i32 3
  %177 = ptrtoint ptr %route_lo.i444 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %route_lo.i444, align 8
  %conv2.i445 = zext i32 %178 to i64
  %or.i446 = or i64 %shl.i443, %conv2.i445
  %179 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %port1.i, align 4
  %conv237 = zext i8 %180 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug266, ptr noundef %dev233, ptr noundef nonnull @.str.30, i64 noundef %or.i446, i32 noundef %conv237) #6
  br label %do.end240

do.end240:                                        ; preds = %if.then228, %do.body214
  tail call fastcc void @tb_scan_port(ptr noundef nonnull %arrayidx)
  %181 = ptrtoint ptr %remote179 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %remote179, align 4
  %tobool244.not = icmp eq ptr %182, null
  br i1 %tobool244.not, label %do.body246, label %do.end240.if.end286_crit_edge

do.end240.if.end286_crit_edge:                    ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

do.body246:                                       ; preds = %do.end240
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_handle_hotplug, %if.then260)) #6
          to label %if.end286 [label %if.then260], !srcloc !219

if.then260:                                       ; preds = %do.body246
  call void @__sanitizer_cov_trace_pc() #8
  %183 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %sw.i, align 4
  %tb262 = getelementptr inbounds %struct.tb_switch, ptr %184, i32 0, i32 5
  %185 = ptrtoint ptr %tb262 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %tb262, align 8
  %nhi263 = getelementptr inbounds %struct.tb, ptr %186, i32 0, i32 2
  %187 = ptrtoint ptr %nhi263 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %nhi263, align 4
  %pdev264 = getelementptr inbounds %struct.tb_nhi, ptr %188, i32 0, i32 1
  %189 = ptrtoint ptr %pdev264 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %pdev264, align 4
  %dev265 = getelementptr inbounds %struct.pci_dev, ptr %190, i32 0, i32 44
  %route_hi.i447 = getelementptr inbounds %struct.tb_switch, ptr %184, i32 0, i32 1, i32 4
  %191 = ptrtoint ptr %route_hi.i447 to i32
  call void @__asan_loadN_noabort(i32 %191, i32 8)
  %bf.load.i448 = load i64, ptr %route_hi.i447, align 4
  %192 = lshr i64 %bf.load.i448, 1
  %shl.i449 = and i64 %192, 9223372032559808512
  %route_lo.i450 = getelementptr inbounds %struct.tb_switch, ptr %184, i32 0, i32 1, i32 3
  %193 = ptrtoint ptr %route_lo.i450 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %route_lo.i450, align 8
  %conv2.i451 = zext i32 %194 to i64
  %or.i452 = or i64 %shl.i449, %conv2.i451
  %195 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %port1.i, align 4
  %conv269 = zext i8 %196 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_handle_hotplug.__UNIQUE_ID_ddebug267, ptr noundef %dev265, ptr noundef nonnull @.str.31, i64 noundef %or.i452, i32 noundef %conv269) #6
  br label %if.end286

tb_port_is_dpout.exit458:                         ; preds = %tb_port_is_null.exit.tb_port_is_dpout.exit458_crit_edge, %land.lhs.true.i436.tb_port_is_dpout.exit458_crit_edge
  %type.i454 = getelementptr inbounds %struct.tb_regs_port_header, ptr %arrayidx, i32 0, i32 2
  %197 = ptrtoint ptr %type.i454 to i32
  call void @__asan_loadN_noabort(i32 %197, i32 12)
  %bf.load.i455 = load i96, ptr %type.i454, align 4
  %198 = and i96 %bf.load.i455, 18446742974197923840
  %cmp.i456 = icmp eq i96 %198, 1009089990530957312
  br i1 %cmp.i456, label %tb_port_is_dpout.exit458.if.then282_crit_edge, label %tb_port_is_dpin.exit464

tb_port_is_dpout.exit458.if.then282_crit_edge:    ; preds = %tb_port_is_dpout.exit458
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then282

tb_port_is_dpin.exit464:                          ; preds = %tb_port_is_dpout.exit458
  %199 = ptrtoint ptr %type.i454 to i32
  call void @__asan_loadN_noabort(i32 %199, i32 12)
  %bf.load.i461 = load i96, ptr %type.i454, align 4
  %200 = and i96 %bf.load.i461, 18446742974197923840
  %cmp.i462 = icmp eq i96 %200, 1009088891019329536
  br i1 %cmp.i462, label %tb_port_is_dpin.exit464.if.then282_crit_edge, label %tb_port_is_dpin.exit464.if.end286_crit_edge

tb_port_is_dpin.exit464.if.end286_crit_edge:      ; preds = %tb_port_is_dpin.exit464
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end286

tb_port_is_dpin.exit464.if.then282_crit_edge:     ; preds = %tb_port_is_dpin.exit464
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then282

if.then282:                                       ; preds = %tb_port_is_dpin.exit464.if.then282_crit_edge, %tb_port_is_dpout.exit458.if.then282_crit_edge
  tail call fastcc void @tb_dp_resource_available(ptr noundef %1, ptr noundef nonnull %arrayidx)
  br label %if.end286

if.end286:                                        ; preds = %if.then282, %tb_port_is_dpin.exit464.if.end286_crit_edge, %if.then260, %do.body246, %do.end240.if.end286_crit_edge, %if.else211.if.end286_crit_edge, %if.then196, %do.body182, %if.then160, %do.body146, %if.then144, %tb_port_unconfigure_xdomain.exit, %if.end104
  %call.i465 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %call3, i32 0, i32 12, i32 22
  %201 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store volatile i64 %call.i465, ptr %last_busy.i, align 8
  %call.i466 = tail call i32 @__pm_runtime_suspend(ptr noundef nonnull %call3, i32 noundef 13) #6
  br label %put_sw

put_sw:                                           ; preds = %if.end286, %if.then38, %do.body32, %do.end18
  tail call void @put_device(ptr noundef nonnull %call3) #6
  br label %out

out:                                              ; preds = %put_sw, %do.end, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef %lock) #6
  %call.i467 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i468 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 12, i32 22
  %202 = ptrtoint ptr %last_busy.i468 to i32
  call void @__asan_store8_noabort(i32 %202)
  store volatile i64 %call.i467, ptr %last_busy.i468, align 8
  %call.i469 = tail call i32 @__pm_runtime_suspend(ptr noundef %1, i32 noundef 13) #6
  tail call void @kfree(ptr noundef %work) #6
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_find_by_route(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_retimer_remove_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_sw_set_unplugged(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_remove_dp_resources(ptr noundef readonly %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb, align 8
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.064 = getelementptr %struct.tb_port, ptr %3, i32 1
  %4 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load65 = load i32, ptr %max_port_number, align 4
  %bf.lshr66 = lshr i32 %bf.load65, 12
  %bf.clear67 = and i32 %bf.lshr66, 63
  %arrayidx268 = getelementptr %struct.tb_port, ptr %3, i32 %bf.clear67
  %cmp.not69 = icmp ugt ptr %port.064, %arrayidx268
  br i1 %cmp.not69, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.072 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.064, %entry.for.body_crit_edge ]
  %.pn70 = phi ptr [ %port.072, %for.inc.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn70, i32 1, i32 1
  %5 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 1, i32 2
  %9 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %8, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.072
  br i1 %cmp.i.i, label %for.body.for.inc_crit_edge, label %tb_is_upstream_port.exit.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_is_upstream_port.exit.i:                       ; preds = %for.body
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn70, i32 1, i32 12
  %10 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %11, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.for.inc_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn70, i32 1, i32 2
  %12 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %if.end2.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.end2.i.if.then_crit_edge, label %land.lhs.true.i

if.end2.i.if.then_crit_edge:                      ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn70, i32 1, i32 13
  %14 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i.if.then_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.i.if.then_crit_edge, %if.end2.i.if.then_crit_edge
  %15 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %remote.i, align 4
  %sw4 = getelementptr inbounds %struct.tb_port, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %sw4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw4, align 4
  tail call fastcc void @tb_remove_dp_resources(ptr noundef %18)
  br label %for.inc

for.inc:                                          ; preds = %if.then, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %tb_is_upstream_port.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.072, i32 1
  %19 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ports, align 4
  %21 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %21)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %20, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %dp_resources = getelementptr inbounds %struct.tb, ptr %1, i32 1, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %dp_resources to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dp_resources, align 4
  %cmp13.not74 = icmp eq ptr %23, %dp_resources
  br i1 %cmp13.not74, label %for.end.for.end41_crit_edge, label %for.end.for.body14_crit_edge

for.end.for.body14_crit_edge:                     ; preds = %for.end
  br label %for.body14

for.end.for.end41_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.body14:                                       ; preds = %for.inc35.for.body14_crit_edge, %for.end.for.body14_crit_edge
  %.pn58.in75 = phi ptr [ %.pn5877, %for.inc35.for.body14_crit_edge ], [ %23, %for.end.for.body14_crit_edge ]
  %24 = ptrtoint ptr %.pn58.in75 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn5877 = load ptr, ptr %.pn58.in75, align 4
  %sw15 = getelementptr i8, ptr %.pn58.in75, i32 -148
  %25 = ptrtoint ptr %sw15 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw15, align 4
  %cmp16 = icmp eq ptr %26, %sw
  br i1 %cmp16, label %do.body, label %for.body14.for.inc35_crit_edge

for.body14.for.inc35_crit_edge:                   ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc35

do.body:                                          ; preds = %for.body14
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_remove_dp_resources.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_remove_dp_resources, %if.then24)) #6
          to label %do.end [label %if.then24], !srcloc !219

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %sw15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sw15, align 4
  %tb26 = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %tb26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tb26, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %34, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 1, i32 4
  %35 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %35, i32 8)
  %bf.load.i61 = load i64, ptr %route_hi.i, align 4
  %36 = lshr i64 %bf.load.i61, 1
  %shl.i = and i64 %36, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %28, i32 0, i32 1, i32 3
  %37 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %38 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port29 = getelementptr i8, ptr %.pn58.in75, i32 -116
  %39 = ptrtoint ptr %port29 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %port29, align 4
  %conv = zext i8 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_remove_dp_resources.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.41, i64 noundef %or.i, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then24, %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn58.in75) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del_init.exit_crit_edge

do.end.list_del_init.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn58.in75, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i.i, align 4
  %43 = ptrtoint ptr %.pn58.in75 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %.pn58.in75, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev1.i.i.i, align 4
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %44, ptr %42, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %do.end.list_del_init.exit_crit_edge
  %47 = ptrtoint ptr %.pn58.in75 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %.pn58.in75, ptr %.pn58.in75, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn58.in75, i32 0, i32 1
  %48 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.pn58.in75, ptr %prev.i3.i, align 4
  br label %for.inc35

for.inc35:                                        ; preds = %list_del_init.exit, %for.body14.for.inc35_crit_edge
  %cmp13.not = icmp eq ptr %.pn5877, %dp_resources
  br i1 %cmp13.not, label %for.inc35.for.end41_crit_edge, label %for.inc35.for.body14_crit_edge

for.inc35.for.body14_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body14

for.inc35.for.end41_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end41

for.end41:                                        ; preds = %for.inc35.for.end41_crit_edge, %for.end.for.end41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_tmu_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_unconfigure_link(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_lane_bonding_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_tunnel_dp(ptr noundef %tb) unnamed_addr #0 align 64 {
entry:
  %available_up = alloca i32, align 4
  %available_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_up) #6
  %0 = ptrtoint ptr %available_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %available_up, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_down) #6
  %1 = ptrtoint ptr %available_down to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %available_down, align 4, !annotation !223
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then19)) #6
          to label %do.end25 [label %if.then19], !srcloc !219

if.then19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %nhi20 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %2 = ptrtoint ptr %nhi20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi20, align 4
  %pdev21 = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev21 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev21, align 4
  %dev22 = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug250, ptr noundef %dev22, ptr noundef nonnull @.str.44) #6
  br label %do.end25

do.end25:                                         ; preds = %if.then19, %entry
  %dp_resources = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %dp_resources to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn419 = load ptr, ptr %dp_resources, align 4
  %cmp.not421 = icmp eq ptr %.pn419, %dp_resources
  br i1 %cmp.not421, label %do.end25.do.body102_crit_edge, label %do.end25.for.body_crit_edge

do.end25.for.body_crit_edge:                      ; preds = %do.end25
  br label %for.body

do.end25.do.body102_crit_edge:                    ; preds = %do.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end25.for.body_crit_edge
  %.pn422 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn419, %do.end25.for.body_crit_edge ]
  %port.0423 = getelementptr i8, ptr %.pn422, i32 -180
  %tobool.not.i = icmp eq ptr %port.0423, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %tb_port_is_dpin.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_dpin.exit:                             ; preds = %for.body
  %type.i = getelementptr i8, ptr %.pn422, i32 -176
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %8 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %8, 1009088891019329536
  br i1 %cmp.i, label %if.end32, label %tb_port_is_dpin.exit.for.inc_crit_edge

tb_port_is_dpin.exit.for.inc_crit_edge:           ; preds = %tb_port_is_dpin.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end32:                                         ; preds = %tb_port_is_dpin.exit
  %call33 = tail call zeroext i1 @tb_port_is_enabled(ptr noundef nonnull %port.0423) #6
  br i1 %call33, label %do.body35, label %do.body62

do.body35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then48)) #6
          to label %for.inc [label %if.then48], !srcloc !219

if.then48:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %sw = getelementptr i8, ptr %.pn422, i32 -148
  %9 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %sw, align 4
  %tb49 = getelementptr inbounds %struct.tb_switch, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %tb49 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb49, align 8
  %nhi50 = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %nhi50 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %nhi50, align 4
  %pdev51 = getelementptr inbounds %struct.tb_nhi, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %pdev51 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pdev51, align 4
  %dev52 = getelementptr inbounds %struct.pci_dev, ptr %16, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %10, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 8)
  %bf.load.i369 = load i64, ptr %route_hi.i, align 4
  %18 = lshr i64 %bf.load.i369, 1
  %shl.i = and i64 %18, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %10, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %20 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port55 = getelementptr i8, ptr %.pn422, i32 -116
  %21 = ptrtoint ptr %port55 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %port55, align 4
  %conv = zext i8 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug251, ptr noundef %dev52, ptr noundef nonnull @.str.45, i64 noundef %or.i, i32 noundef %conv) #6
  br label %for.inc

do.body62:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then76)) #6
          to label %do.end88 [label %if.then76], !srcloc !219

if.then76:                                        ; preds = %do.body62
  call void @__sanitizer_cov_trace_pc() #8
  %sw77 = getelementptr i8, ptr %.pn422, i32 -148
  %23 = ptrtoint ptr %sw77 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sw77, align 4
  %tb78 = getelementptr inbounds %struct.tb_switch, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %tb78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb78, align 8
  %nhi79 = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %nhi79 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %nhi79, align 4
  %pdev80 = getelementptr inbounds %struct.tb_nhi, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %pdev80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pdev80, align 4
  %dev81 = getelementptr inbounds %struct.pci_dev, ptr %30, i32 0, i32 44
  %route_hi.i370 = getelementptr inbounds %struct.tb_switch, ptr %24, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %route_hi.i370 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load.i371 = load i64, ptr %route_hi.i370, align 4
  %32 = lshr i64 %bf.load.i371, 1
  %shl.i372 = and i64 %32, 9223372032559808512
  %route_lo.i373 = getelementptr inbounds %struct.tb_switch, ptr %24, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %route_lo.i373 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %route_lo.i373, align 8
  %conv2.i374 = zext i32 %34 to i64
  %or.i375 = or i64 %shl.i372, %conv2.i374
  %port84 = getelementptr i8, ptr %.pn422, i32 -116
  %35 = ptrtoint ptr %port84 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port84, align 4
  %conv85 = zext i8 %36 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug252, ptr noundef %dev81, ptr noundef nonnull @.str.46, i64 noundef %or.i375, i32 noundef %conv85) #6
  br label %do.end88

do.end88:                                         ; preds = %if.then76, %do.body62
  %call91 = tail call fastcc ptr @tb_find_dp_out(ptr noundef %tb, ptr noundef nonnull %port.0423)
  %tobool92.not = icmp eq ptr %call91, null
  br i1 %tobool92.not, label %do.end88.for.inc_crit_edge, label %if.end143

do.end88.for.inc_crit_edge:                       ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %do.end88.for.inc_crit_edge, %if.then48, %do.body35, %tb_port_is_dpin.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %37 = ptrtoint ptr %.pn422 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn = load ptr, ptr %.pn422, align 4
  %cmp.not = icmp eq ptr %.pn, %dp_resources
  br i1 %cmp.not, label %for.inc.do.body102_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.do.body102_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body102

do.body102:                                       ; preds = %for.inc.do.body102_crit_edge, %do.end25.do.body102_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then114)) #6
          to label %cleanup [label %if.then114], !srcloc !219

if.then114:                                       ; preds = %do.body102
  call void @__sanitizer_cov_trace_pc() #8
  %nhi115 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %38 = ptrtoint ptr %nhi115 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %nhi115, align 4
  %pdev116 = getelementptr inbounds %struct.tb_nhi, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %pdev116 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev116, align 4
  %dev117 = getelementptr inbounds %struct.pci_dev, ptr %41, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug253, ptr noundef %dev117, ptr noundef nonnull @.str.47) #6
  br label %cleanup

if.end143:                                        ; preds = %do.end88
  %sw144 = getelementptr i8, ptr %.pn422, i32 -148
  %42 = ptrtoint ptr %sw144 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sw144, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %43, i32 noundef 4) #6
  %sw147 = getelementptr inbounds %struct.tb_port, ptr %call91, i32 0, i32 1
  %44 = ptrtoint ptr %sw147 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %sw147, align 4
  %call.i376 = tail call i32 @__pm_runtime_resume(ptr noundef %45, i32 noundef 4) #6
  %46 = ptrtoint ptr %sw144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sw144, align 4
  %call151 = tail call i32 @tb_switch_alloc_dp_resource(ptr noundef %47, ptr noundef nonnull %port.0423) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.end183, label %do.body154

do.body154:                                       ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then168)) #6
          to label %err_rpm_put [label %if.then168], !srcloc !219

if.then168:                                       ; preds = %do.body154
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %sw144 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sw144, align 4
  %tb170 = getelementptr inbounds %struct.tb_switch, ptr %49, i32 0, i32 5
  %50 = ptrtoint ptr %tb170 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tb170, align 8
  %nhi171 = getelementptr inbounds %struct.tb, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %nhi171 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nhi171, align 4
  %pdev172 = getelementptr inbounds %struct.tb_nhi, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %pdev172 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev172, align 4
  %dev173 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %route_hi.i377 = getelementptr inbounds %struct.tb_switch, ptr %49, i32 0, i32 1, i32 4
  %56 = ptrtoint ptr %route_hi.i377 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %bf.load.i378 = load i64, ptr %route_hi.i377, align 4
  %57 = lshr i64 %bf.load.i378, 1
  %shl.i379 = and i64 %57, 9223372032559808512
  %route_lo.i380 = getelementptr inbounds %struct.tb_switch, ptr %49, i32 0, i32 1, i32 3
  %58 = ptrtoint ptr %route_lo.i380 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %route_lo.i380, align 8
  %conv2.i381 = zext i32 %59 to i64
  %or.i382 = or i64 %shl.i379, %conv2.i381
  %port176 = getelementptr i8, ptr %.pn422, i32 -116
  %60 = ptrtoint ptr %port176 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %port176, align 4
  %conv177 = zext i8 %61 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug255, ptr noundef %dev173, ptr noundef nonnull @.str.49, i64 noundef %or.i382, i32 noundef %conv177) #6
  br label %err_rpm_put

if.end183:                                        ; preds = %if.end143
  %call.i383 = tail call fastcc ptr @tb_find_first_usb3_tunnel(ptr noundef %tb, ptr noundef nonnull %port.0423, ptr noundef nonnull %call91) #6
  %tobool.not.i384 = icmp eq ptr %call.i383, null
  br i1 %tobool.not.i384, label %if.end183.if.end193_crit_edge, label %tb_release_unused_usb3_bandwidth.exit

if.end183.if.end193_crit_edge:                    ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

tb_release_unused_usb3_bandwidth.exit:            ; preds = %if.end183
  %call1.i = tail call i32 @tb_tunnel_release_unused_bandwidth(ptr noundef nonnull %call.i383) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool185.not = icmp eq i32 %call1.i, 0
  br i1 %tobool185.not, label %tb_release_unused_usb3_bandwidth.exit.if.end193_crit_edge, label %do.end189

tb_release_unused_usb3_bandwidth.exit.if.end193_crit_edge: ; preds = %tb_release_unused_usb3_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end193

do.end189:                                        ; preds = %tb_release_unused_usb3_bandwidth.exit
  call void @__sanitizer_cov_trace_pc() #8
  %nhi190 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %62 = ptrtoint ptr %nhi190 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nhi190, align 4
  %pdev191 = getelementptr inbounds %struct.tb_nhi, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pdev191 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev191, align 4
  %dev192 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev192, ptr noundef nonnull @.str.50) #10
  br label %err_dealloc_dp

if.end193:                                        ; preds = %tb_release_unused_usb3_bandwidth.exit.if.end193_crit_edge, %if.end183.if.end193_crit_edge
  %call194 = call fastcc i32 @tb_available_bandwidth(ptr noundef %tb, ptr noundef nonnull %port.0423, ptr noundef nonnull %call91, ptr noundef nonnull %available_up, ptr noundef nonnull %available_down)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %tobool195.not = icmp eq i32 %call194, 0
  br i1 %tobool195.not, label %do.body198, label %if.end193.err_reclaim_crit_edge

if.end193.err_reclaim_crit_edge:                  ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_reclaim

do.body198:                                       ; preds = %if.end193
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then210)) #6
          to label %do.end216 [label %if.then210], !srcloc !219

if.then210:                                       ; preds = %do.body198
  call void @__sanitizer_cov_trace_pc() #8
  %nhi211 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %66 = ptrtoint ptr %nhi211 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %nhi211, align 4
  %pdev212 = getelementptr inbounds %struct.tb_nhi, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %pdev212 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %pdev212, align 4
  %dev213 = getelementptr inbounds %struct.pci_dev, ptr %69, i32 0, i32 44
  %70 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %available_up, align 4
  %72 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %available_down, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug256, ptr noundef %dev213, ptr noundef nonnull @.str.51, i32 noundef %71, i32 noundef %73) #6
  br label %do.end216

do.end216:                                        ; preds = %if.then210, %do.body198
  %74 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %available_up, align 4
  %76 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %available_down, align 4
  %call217 = tail call ptr @tb_tunnel_alloc_dp(ptr noundef %tb, ptr noundef nonnull %port.0423, ptr noundef nonnull %call91, i32 noundef %75, i32 noundef %77) #6
  %tobool218.not = icmp eq ptr %call217, null
  br i1 %tobool218.not, label %do.body220, label %if.end249

do.body220:                                       ; preds = %do.end216
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_tunnel_dp, %if.then234)) #6
          to label %err_reclaim [label %if.then234], !srcloc !219

if.then234:                                       ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %sw147 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %sw147, align 4
  %tb236 = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 5
  %80 = ptrtoint ptr %tb236 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tb236, align 8
  %nhi237 = getelementptr inbounds %struct.tb, ptr %81, i32 0, i32 2
  %82 = ptrtoint ptr %nhi237 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %nhi237, align 4
  %pdev238 = getelementptr inbounds %struct.tb_nhi, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %pdev238 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %pdev238, align 4
  %dev239 = getelementptr inbounds %struct.pci_dev, ptr %85, i32 0, i32 44
  %route_hi.i385 = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 1, i32 4
  %86 = ptrtoint ptr %route_hi.i385 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %bf.load.i386 = load i64, ptr %route_hi.i385, align 4
  %87 = lshr i64 %bf.load.i386, 1
  %shl.i387 = and i64 %87, 9223372032559808512
  %route_lo.i388 = getelementptr inbounds %struct.tb_switch, ptr %79, i32 0, i32 1, i32 3
  %88 = ptrtoint ptr %route_lo.i388 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %route_lo.i388, align 8
  %conv2.i389 = zext i32 %89 to i64
  %or.i390 = or i64 %shl.i387, %conv2.i389
  %port242 = getelementptr inbounds %struct.tb_port, ptr %call91, i32 0, i32 9
  %90 = ptrtoint ptr %port242 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %port242, align 4
  %conv243 = zext i8 %91 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_tunnel_dp.__UNIQUE_ID_ddebug257, ptr noundef %dev239, ptr noundef nonnull @.str.52, i64 noundef %or.i390, i32 noundef %conv243) #6
  br label %err_reclaim

if.end249:                                        ; preds = %do.end216
  %call250 = tail call i32 @tb_tunnel_activate(ptr noundef nonnull %call217) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call250)
  %tobool251.not = icmp eq i32 %call250, 0
  br i1 %tobool251.not, label %if.end269, label %do.body253

do.body253:                                       ; preds = %if.end249
  call void @__sanitizer_cov_trace_pc() #8
  %92 = ptrtoint ptr %sw147 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %sw147, align 4
  %tb259 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %tb259 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %tb259, align 8
  %nhi260 = getelementptr inbounds %struct.tb, ptr %95, i32 0, i32 2
  %96 = ptrtoint ptr %nhi260 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %nhi260, align 4
  %pdev261 = getelementptr inbounds %struct.tb_nhi, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %pdev261 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %pdev261, align 4
  %dev262 = getelementptr inbounds %struct.pci_dev, ptr %99, i32 0, i32 44
  %route_hi.i391 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 1, i32 4
  %100 = ptrtoint ptr %route_hi.i391 to i32
  call void @__asan_loadN_noabort(i32 %100, i32 8)
  %bf.load.i392 = load i64, ptr %route_hi.i391, align 4
  %101 = lshr i64 %bf.load.i392, 1
  %shl.i393 = and i64 %101, 9223372032559808512
  %route_lo.i394 = getelementptr inbounds %struct.tb_switch, ptr %93, i32 0, i32 1, i32 3
  %102 = ptrtoint ptr %route_lo.i394 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %route_lo.i394, align 8
  %conv2.i395 = zext i32 %103 to i64
  %or.i396 = or i64 %shl.i393, %conv2.i395
  %port265 = getelementptr inbounds %struct.tb_port, ptr %call91, i32 0, i32 9
  %104 = ptrtoint ptr %port265 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %port265, align 4
  %conv266 = zext i8 %105 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev262, ptr noundef nonnull @.str.54, i64 noundef %or.i396, i32 noundef %conv266) #10
  tail call void @tb_tunnel_free(ptr noundef nonnull %call217) #6
  br label %err_reclaim

if.end269:                                        ; preds = %if.end249
  %list270 = getelementptr inbounds %struct.tb_tunnel, ptr %call217, i32 0, i32 11
  %prev.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1
  %106 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list270, ptr noundef %107, ptr noundef %privdata.i) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end269.list_add_tail.exit_crit_edge

if.end269.list_add_tail.exit_crit_edge:           ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #8
  %108 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %list270, ptr %prev.i, align 4
  %109 = ptrtoint ptr %list270 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %privdata.i, ptr %list270, align 4
  %prev3.i.i = getelementptr inbounds %struct.tb_tunnel, ptr %call217, i32 0, i32 11, i32 1
  %110 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %list270, ptr %107, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end269.list_add_tail.exit_crit_edge
  tail call fastcc void @tb_reclaim_usb3_bandwidth(ptr noundef %tb, ptr noundef nonnull %port.0423, ptr noundef nonnull %call91)
  br label %cleanup

err_reclaim:                                      ; preds = %do.body253, %if.then234, %do.body220, %if.end193.err_reclaim_crit_edge
  tail call fastcc void @tb_reclaim_usb3_bandwidth(ptr noundef %tb, ptr noundef nonnull %port.0423, ptr noundef nonnull %call91)
  br label %err_dealloc_dp

err_dealloc_dp:                                   ; preds = %err_reclaim, %do.end189
  %112 = ptrtoint ptr %sw144 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %sw144, align 4
  tail call void @tb_switch_dealloc_dp_resource(ptr noundef %113, ptr noundef nonnull %port.0423) #6
  br label %err_rpm_put

err_rpm_put:                                      ; preds = %err_dealloc_dp, %if.then168, %do.body154
  %114 = ptrtoint ptr %sw147 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %sw147, align 4
  %call.i397 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %115, i32 0, i32 12, i32 22
  %116 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store volatile i64 %call.i397, ptr %last_busy.i, align 8
  %117 = ptrtoint ptr %sw147 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sw147, align 4
  %call.i398 = tail call i32 @__pm_runtime_suspend(ptr noundef %118, i32 noundef 13) #6
  %119 = ptrtoint ptr %sw144 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %sw144, align 4
  %call.i399 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i400 = getelementptr inbounds %struct.device, ptr %120, i32 0, i32 12, i32 22
  %121 = ptrtoint ptr %last_busy.i400 to i32
  call void @__asan_store8_noabort(i32 %121)
  store volatile i64 %call.i399, ptr %last_busy.i400, align 8
  %122 = ptrtoint ptr %sw144 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %sw144, align 4
  %call.i401 = tail call i32 @__pm_runtime_suspend(ptr noundef %123, i32 noundef 13) #6
  br label %cleanup

cleanup:                                          ; preds = %err_rpm_put, %list_add_tail.exit, %if.then114, %do.body102
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_up) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__tb_disconnect_xdomain_paths(ptr noundef readonly %tb, ptr nocapture noundef readonly %xd, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %parent = getelementptr inbounds %struct.device, ptr %xd, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %type.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %type.i.i, align 4
  %cmp.i.i = icmp eq ptr %3, @tb_switch_type
  %dev..i = select i1 %cmp.i.i, ptr %1, ptr null
  %route = getelementptr inbounds %struct.tb_xdomain, ptr %xd, i32 0, i32 4
  %4 = ptrtoint ptr %route to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %route, align 8
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load.i = load i32, ptr %depth.i, align 4
  %7 = lshr i32 %bf.load.i, 6
  %mul.i = and i32 %7, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %5, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i, i32 0, i32 2
  %8 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %9, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %10 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %root_switch, align 8
  %call3 = tail call ptr @tb_switch_find_port(ptr noundef %11, i32 noundef 2) #6
  %12 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %privdata.i, align 4
  %cmp.not38 = icmp eq ptr %13, %privdata.i
  br i1 %cmp.not38, label %tb_port_at.exit.for.end_crit_edge, label %tb_port_at.exit.for.body_crit_edge

tb_port_at.exit.for.body_crit_edge:               ; preds = %tb_port_at.exit
  br label %for.body

tb_port_at.exit.for.end_crit_edge:                ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %tb_port_at.exit.for.body_crit_edge
  %.pn.in39 = phi ptr [ %.pn41, %for.inc.for.body_crit_edge ], [ %13, %tb_port_at.exit.for.body_crit_edge ]
  %tunnel.040 = getelementptr i8, ptr %.pn.in39, i32 -44
  %14 = ptrtoint ptr %.pn.in39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn41 = load ptr, ptr %.pn.in39, align 4
  %type.i = getelementptr i8, ptr %.pn.in39, i32 8
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp.i35 = icmp eq i32 %16, 2
  br i1 %cmp.i35, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %for.body
  %src_port = getelementptr i8, ptr %.pn.in39, i32 -40
  %17 = ptrtoint ptr %src_port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src_port, align 4
  %cmp11.not = icmp eq ptr %18, %call3
  br i1 %cmp11.not, label %lor.lhs.false, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %if.end
  %dst_port12 = getelementptr i8, ptr %.pn.in39, i32 -36
  %19 = ptrtoint ptr %dst_port12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst_port12, align 4
  %cmp13.not = icmp eq ptr %20, %retval.0.i
  br i1 %cmp13.not, label %if.end15, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end15:                                         ; preds = %lor.lhs.false
  %call16 = tail call zeroext i1 @tb_tunnel_match_dma(ptr noundef %tunnel.040, i32 noundef %transmit_path, i32 noundef %transmit_ring, i32 noundef %receive_path, i32 noundef %receive_ring) #6
  br i1 %call16, label %if.then17, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %tunnel.040)
  br label %for.inc

for.inc:                                          ; preds = %if.then17, %if.end15.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn41, %privdata.i
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %tb_port_at.exit.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_dp_resource_unavailable(ptr noundef %tb, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %entry.do.body12_crit_edge, label %tb_port_is_dpin.exit

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

tb_port_is_dpin.exit:                             ; preds = %entry
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %0 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %1 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %1, 1009088891019329536
  br i1 %cmp.i, label %do.body, label %tb_port_is_dpin.exit.do.body12_crit_edge

tb_port_is_dpin.exit.do.body12_crit_edge:         ; preds = %tb_port_is_dpin.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

do.body:                                          ; preds = %tb_port_is_dpin.exit
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dp_resource_unavailable.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dp_resource_unavailable, %if.then5)) #6
          to label %if.end41 [label %if.then5], !srcloc !219

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw, align 4
  %tb6 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tb6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb6, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i56 = load i64, ptr %route_hi.i, align 4
  %11 = lshr i64 %bf.load.i56, 1
  %shl.i = and i64 %11, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %13 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port9 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %14 = ptrtoint ptr %port9 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port9, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dp_resource_unavailable.__UNIQUE_ID_ddebug258, ptr noundef %dev, ptr noundef nonnull @.str.60, i64 noundef %or.i, i32 noundef %conv) #6
  br label %if.end41

do.body12:                                        ; preds = %tb_port_is_dpin.exit.do.body12_crit_edge, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dp_resource_unavailable.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dp_resource_unavailable, %if.then26)) #6
          to label %if.end41 [label %if.then26], !srcloc !219

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %sw27 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %16 = ptrtoint ptr %sw27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sw27, align 4
  %tb28 = getelementptr inbounds %struct.tb_switch, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %tb28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tb28, align 8
  %nhi29 = getelementptr inbounds %struct.tb, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nhi29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi29, align 4
  %pdev30 = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev30, align 4
  %dev31 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %route_hi.i57 = getelementptr inbounds %struct.tb_switch, ptr %17, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %route_hi.i57 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %bf.load.i58 = load i64, ptr %route_hi.i57, align 4
  %25 = lshr i64 %bf.load.i58, 1
  %shl.i59 = and i64 %25, 9223372032559808512
  %route_lo.i60 = getelementptr inbounds %struct.tb_switch, ptr %17, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %route_lo.i60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %route_lo.i60, align 8
  %conv2.i61 = zext i32 %27 to i64
  %or.i62 = or i64 %shl.i59, %conv2.i61
  %port34 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %28 = ptrtoint ptr %port34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %port34, align 4
  %conv35 = zext i8 %29 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dp_resource_unavailable.__UNIQUE_ID_ddebug259, ptr noundef %dev31, ptr noundef nonnull @.str.41, i64 noundef %or.i62, i32 noundef %conv35) #6
  br label %if.end41

if.end41:                                         ; preds = %if.then26, %do.body12, %if.then5, %do.body
  %out.0 = phi ptr [ null, %if.then5 ], [ %port, %if.then26 ], [ null, %do.body ], [ %port, %do.body12 ]
  %in.0 = phi ptr [ %port, %if.then5 ], [ null, %if.then26 ], [ %port, %do.body ], [ null, %do.body12 ]
  %privdata.i.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %30 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn31.i = load ptr, ptr %privdata.i.i, align 4
  %cmp.not32.i = icmp eq ptr %.pn31.i, %privdata.i.i
  br i1 %cmp.not32.i, label %if.end41.tb_find_tunnel.exit_crit_edge, label %for.body.lr.ph.i

if.end41.tb_find_tunnel.exit_crit_edge:           ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_find_tunnel.exit

for.body.lr.ph.i:                                 ; preds = %if.end41
  %tobool.not.i63 = icmp eq ptr %in.0, null
  %tobool7.not.i = icmp eq ptr %out.0, null
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn33.i = phi ptr [ %.pn31.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn33.i, i32 8
  %31 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp3.i = icmp eq i32 %32, 1
  br i1 %cmp3.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  br i1 %tobool.not.i63, label %land.lhs.true.i.lor.lhs.false.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.lor.lhs.false.i_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %src_port5.i = getelementptr i8, ptr %.pn33.i, i32 -40
  %33 = ptrtoint ptr %src_port5.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %src_port5.i, align 4
  %cmp6.i = icmp eq ptr %34, %in.0
  br i1 %cmp6.i, label %cleanup.split.loop.exit25.i, label %land.lhs.true4.i.lor.lhs.false.i_crit_edge

land.lhs.true4.i.lor.lhs.false.i_crit_edge:       ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true4.i.lor.lhs.false.i_crit_edge, %land.lhs.true.i.lor.lhs.false.i_crit_edge
  br i1 %tobool7.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %land.lhs.true8.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true8.i:                                 ; preds = %lor.lhs.false.i
  %dst_port9.i = getelementptr i8, ptr %.pn33.i, i32 -36
  %35 = ptrtoint ptr %dst_port9.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst_port9.i, align 4
  %cmp10.i = icmp eq ptr %36, %out.0
  br i1 %cmp10.i, label %cleanup.split.loop.exit27.i, label %land.lhs.true8.i.for.inc.i_crit_edge

land.lhs.true8.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true8.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %37 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %privdata.i.i
  br i1 %cmp.not.i, label %for.inc.i.tb_find_tunnel.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.tb_find_tunnel.exit_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_find_tunnel.exit

cleanup.split.loop.exit25.i:                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  %tunnel.0.le29.i = getelementptr i8, ptr %.pn33.i, i32 -44
  br label %tb_find_tunnel.exit

cleanup.split.loop.exit27.i:                      ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #8
  %tunnel.0.le.i = getelementptr i8, ptr %.pn33.i, i32 -44
  br label %tb_find_tunnel.exit

tb_find_tunnel.exit:                              ; preds = %cleanup.split.loop.exit27.i, %cleanup.split.loop.exit25.i, %for.inc.i.tb_find_tunnel.exit_crit_edge, %if.end41.tb_find_tunnel.exit_crit_edge
  %retval.0.i64 = phi ptr [ %tunnel.0.le29.i, %cleanup.split.loop.exit25.i ], [ %tunnel.0.le.i, %cleanup.split.loop.exit27.i ], [ null, %if.end41.tb_find_tunnel.exit_crit_edge ], [ null, %for.inc.i.tb_find_tunnel.exit_crit_edge ]
  tail call fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %retval.0.i64)
  %list = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 16
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %tb_find_tunnel.exit.list_del_init.exit_crit_edge

tb_find_tunnel.exit.list_del_init.exit_crit_edge: ; preds = %tb_find_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %tb_find_tunnel.exit
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 16, i32 1
  %38 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i.i, align 4
  %40 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev1.i.i.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %41, ptr %39, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %tb_find_tunnel.exit.list_del_init.exit_crit_edge
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %list, ptr %list, align 4
  %prev.i3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 16, i32 1
  %45 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %list, ptr %prev.i3.i, align 4
  tail call fastcc void @tb_tunnel_dp(ptr noundef %tb)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_dp_resource_available(ptr noundef %tb, ptr noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call zeroext i1 @tb_port_is_enabled(ptr noundef %port) #6
  br i1 %call1, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dp_resources = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end
  %.pn.in = phi ptr [ %dp_resources, %if.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %dp_resources
  br i1 %cmp.not, label %do.body, label %for.body

for.body:                                         ; preds = %for.cond
  %p.0 = getelementptr i8, ptr %.pn, i32 -180
  %cmp3 = icmp eq ptr %p.0, %port
  br i1 %cmp3, label %for.body.cleanup_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %for.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_dp_resource_available.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_dp_resource_available, %if.then17)) #6
          to label %do.end [label %if.then17], !srcloc !219

if.then17:                                        ; preds = %do.body
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw, align 4
  %tb18 = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %tb18 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb18, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %8, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %10 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %10, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %12 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port21 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %13 = ptrtoint ptr %port21 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port21, align 4
  %conv = zext i8 %14 to i32
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %if.then17.tb_port_is_dpin.exit.thread_crit_edge, label %tb_port_is_dpin.exit

if.then17.tb_port_is_dpin.exit.thread_crit_edge:  ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_dpin.exit.thread

tb_port_is_dpin.exit:                             ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 12)
  %bf.load.i41 = load i96, ptr %type.i, align 4
  %16 = and i96 %bf.load.i41, 18446742974197923840
  %cmp.i = icmp eq i96 %16, 1009088891019329536
  %spec.select = select i1 %cmp.i, ptr @.str.63, ptr @.str.64
  br label %tb_port_is_dpin.exit.thread

tb_port_is_dpin.exit.thread:                      ; preds = %tb_port_is_dpin.exit, %if.then17.tb_port_is_dpin.exit.thread_crit_edge
  %17 = phi ptr [ @.str.64, %if.then17.tb_port_is_dpin.exit.thread_crit_edge ], [ %spec.select, %tb_port_is_dpin.exit ]
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_dp_resource_available.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.62, i64 noundef %or.i, i32 noundef %conv, ptr noundef nonnull %17) #6
  br label %do.end

do.end:                                           ; preds = %tb_port_is_dpin.exit.thread, %do.body
  %list27 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list27, ptr noundef %19, ptr noundef %dp_resources) #6
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list27, ptr %prev.i, align 4
  %21 = ptrtoint ptr %list27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dp_resources, ptr %list27, align 4
  %prev3.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 16, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %list27, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call fastcc void @tb_tunnel_dp(ptr noundef %tb)
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %for.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_tunnel_is_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_deactivate_and_free_tunnel(ptr noundef %tunnel) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %tunnel, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @tb_tunnel_deactivate(ptr noundef nonnull %tunnel) #6
  %list = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 11, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %6 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 11, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %8 = ptrtoint ptr %tunnel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tunnel, align 4
  %src_port2 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 1
  %10 = ptrtoint ptr %src_port2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src_port2, align 4
  %dst_port3 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 2
  %12 = ptrtoint ptr %dst_port3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst_port3, align 4
  %type = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel, i32 0, i32 12
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %15, label %list_del.exit.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 3, label %list_del.exit.sw.bb12_crit_edge
  ]

list_del.exit.sw.bb12_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb12

list_del.exit.sw.epilog_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %sw = getelementptr inbounds %struct.tb_port, ptr %11, i32 0, i32 1
  %17 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw, align 4
  tail call void @tb_switch_dealloc_dp_resource(ptr noundef %18, ptr noundef %11) #6
  %sw4 = getelementptr inbounds %struct.tb_port, ptr %13, i32 0, i32 1
  %19 = ptrtoint ptr %sw4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw4, align 4
  %call.i = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 12, i32 22
  %21 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %21)
  store volatile i64 %call.i, ptr %last_busy.i, align 8
  %22 = ptrtoint ptr %sw4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sw4, align 4
  %call.i28 = tail call i32 @__pm_runtime_suspend(ptr noundef %23, i32 noundef 13) #6
  %24 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw, align 4
  %call.i29 = tail call i64 @ktime_get_mono_fast_ns() #6
  %last_busy.i30 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 12, i32 22
  %26 = ptrtoint ptr %last_busy.i30 to i32
  call void @__asan_store8_noabort(i32 %26)
  store volatile i64 %call.i29, ptr %last_busy.i30, align 8
  %27 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sw, align 4
  %call.i31 = tail call i32 @__pm_runtime_suspend(ptr noundef %28, i32 noundef 13) #6
  br label %sw.bb12

sw.bb12:                                          ; preds = %sw.bb, %list_del.exit.sw.bb12_crit_edge
  tail call fastcc void @tb_reclaim_usb3_bandwidth(ptr noundef %9, ptr noundef %11, ptr noundef %13)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %list_del.exit.sw.epilog_crit_edge
  tail call void @tb_tunnel_free(ptr noundef nonnull %tunnel) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_tunnel_deactivate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_dealloc_dp_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_reclaim_usb3_bandwidth(ptr noundef %tb, ptr nocapture noundef readonly %src_port, ptr nocapture noundef readonly %dst_port) unnamed_addr #0 align 64 {
entry:
  %available_up = alloca i32, align 4
  %available_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_up) #6
  %0 = ptrtoint ptr %available_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %available_up, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %available_down) #6
  %1 = ptrtoint ptr %available_down to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %available_down, align 4, !annotation !223
  %call = tail call fastcc ptr @tb_find_first_usb3_tunnel(ptr noundef %tb, ptr noundef %src_port, ptr noundef %dst_port)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_reclaim_usb3_bandwidth, %if.then5)) #6
          to label %do.end [label %if.then5], !srcloc !219

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %nhi = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %2 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.33) #6
  br label %do.end

do.end:                                           ; preds = %if.then5, %do.body
  %src_port7 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %src_port7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src_port7, align 4
  %dst_port8 = getelementptr inbounds %struct.tb_tunnel, ptr %call, i32 0, i32 2
  %8 = ptrtoint ptr %dst_port8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst_port8, align 4
  %call9 = call fastcc i32 @tb_available_bandwidth(ptr noundef %tb, ptr noundef %7, ptr noundef %9, ptr noundef nonnull %available_up, ptr noundef nonnull %available_down)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %do.body19, label %do.end14

do.end14:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nhi15 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %10 = ptrtoint ptr %nhi15 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %nhi15, align 4
  %pdev16 = getelementptr inbounds %struct.tb_nhi, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %pdev16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev16, align 4
  %dev17 = getelementptr inbounds %struct.pci_dev, ptr %13, i32 0, i32 44
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.34) #10
  br label %cleanup

do.body19:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_reclaim_usb3_bandwidth, %if.then31)) #6
          to label %do.end37 [label %if.then31], !srcloc !219

if.then31:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #8
  %nhi32 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 2
  %14 = ptrtoint ptr %nhi32 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %nhi32, align 4
  %pdev33 = getelementptr inbounds %struct.tb_nhi, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %pdev33 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pdev33, align 4
  %dev34 = getelementptr inbounds %struct.pci_dev, ptr %17, i32 0, i32 44
  %18 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %available_up, align 4
  %20 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %available_down, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug242, ptr noundef %dev34, ptr noundef nonnull @.str.35, i32 noundef %19, i32 noundef %21) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then31, %do.body19
  call void @tb_tunnel_reclaim_available_bandwidth(ptr noundef nonnull %call, ptr noundef nonnull %available_up, ptr noundef nonnull %available_down) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end37, %do.end14, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %available_up) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_tunnel_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tb_find_first_usb3_tunnel(ptr noundef readonly %tb, ptr nocapture noundef readonly %src_port, ptr nocapture noundef readonly %dst_port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw1 = getelementptr inbounds %struct.tb_port, ptr %dst_port, i32 0, i32 1
  %0 = ptrtoint ptr %sw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw1, align 4
  %depth = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load = load i32, ptr %depth, align 4
  %bf.lshr = lshr i32 %bf.load, 9
  %bf.clear = and i32 %bf.lshr, 7
  %sw2 = getelementptr inbounds %struct.tb_port, ptr %src_port, i32 0, i32 1
  %3 = ptrtoint ptr %sw2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw2, align 4
  %depth4 = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %depth4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load5 = load i32, ptr %depth4, align 4
  %bf.lshr6 = lshr i32 %bf.load5, 9
  %bf.clear7 = and i32 %bf.lshr6, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.clear, i32 %bf.clear7)
  %cmp = icmp ugt i32 %bf.clear, %bf.clear7
  %. = select i1 %cmp, ptr %1, ptr %4
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %6 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_switch, align 8
  %cmp10 = icmp eq ptr %., %7
  br i1 %cmp10, label %entry.cleanup_crit_edge, label %if.end12

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %entry
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %., i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %9 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %9, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %., i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %bf.load.i29 = load i32, ptr %depth.i, align 4
  %13 = lshr i32 %bf.load.i29, 6
  %mul.i = and i32 %13, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i29, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 2
  %14 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %15, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %16 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %root_switch, align 8
  %call16 = tail call ptr @usb4_switch_map_usb3_down(ptr noundef %17, ptr noundef %retval.0.i) #6
  %tobool.not = icmp eq ptr %call16, null
  br i1 %tobool.not, label %tb_port_at.exit.cleanup_crit_edge, label %if.end18

tb_port_at.exit.cleanup_crit_edge:                ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end18:                                         ; preds = %tb_port_at.exit
  %privdata.i.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  %18 = ptrtoint ptr %privdata.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn31.i = load ptr, ptr %privdata.i.i, align 4
  %cmp.not32.i = icmp eq ptr %.pn31.i, %privdata.i.i
  br i1 %cmp.not32.i, label %if.end18.cleanup_crit_edge, label %if.end18.for.body.i_crit_edge

if.end18.for.body.i_crit_edge:                    ; preds = %if.end18
  br label %for.body.i

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end18.for.body.i_crit_edge
  %.pn33.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn31.i, %if.end18.for.body.i_crit_edge ]
  %type2.i = getelementptr i8, ptr %.pn33.i, i32 8
  %19 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %20)
  %cmp3.i = icmp eq i32 %20, 3
  br i1 %cmp3.i, label %land.lhs.true4.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true4.i:                                 ; preds = %for.body.i
  %src_port5.i = getelementptr i8, ptr %.pn33.i, i32 -40
  %21 = ptrtoint ptr %src_port5.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src_port5.i, align 4
  %cmp6.i = icmp eq ptr %22, %call16
  br i1 %cmp6.i, label %cleanup.split.loop.exit25.i, label %land.lhs.true4.i.for.inc.i_crit_edge

land.lhs.true4.i.for.inc.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true4.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %23 = ptrtoint ptr %.pn33.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn.i = load ptr, ptr %.pn33.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %privdata.i.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.split.loop.exit25.i:                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  %tunnel.0.le29.i = getelementptr i8, ptr %.pn33.i, i32 -44
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit25.i, %for.inc.i.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %tb_port_at.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ null, %tb_port_at.exit.cleanup_crit_edge ], [ %tunnel.0.le29.i, %cleanup.split.loop.exit25.i ], [ null, %if.end18.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_available_bandwidth(ptr noundef %tb, ptr noundef %src_port, ptr noundef %dst_port, ptr nocapture noundef %available_up, ptr nocapture noundef %available_down) unnamed_addr #0 align 64 {
entry:
  %usb3_consumed_up = alloca i32, align 4
  %usb3_consumed_down = alloca i32, align 4
  %dp_consumed_up = alloca i32, align 4
  %dp_consumed_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usb3_consumed_up) #6
  %0 = ptrtoint ptr %usb3_consumed_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %usb3_consumed_up, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %usb3_consumed_down) #6
  %1 = ptrtoint ptr %usb3_consumed_down to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %usb3_consumed_down, align 4, !annotation !223
  %privdata.i = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_available_bandwidth.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_available_bandwidth, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !219

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sw = getelementptr inbounds %struct.tb_port, ptr %dst_port, i32 0, i32 1
  %2 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw, align 4
  %tb5 = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %tb5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tb5, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %11 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %11, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %13 to i64
  %or.i = or i64 %shl.i, %conv2.i
  %port8 = getelementptr inbounds %struct.tb_port, ptr %dst_port, i32 0, i32 9
  %14 = ptrtoint ptr %port8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port8, align 4
  %conv = zext i8 %15 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_available_bandwidth.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.38, i64 noundef %or.i, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call11 = tail call fastcc ptr @tb_find_first_usb3_tunnel(ptr noundef %tb, ptr noundef %src_port, ptr noundef %dst_port)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %do.end
  %call14 = call i32 @tb_tunnel_consumed_bandwidth(ptr noundef nonnull %call11, ptr noundef nonnull %usb3_consumed_up, ptr noundef nonnull %usb3_consumed_down) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then13.if.end18_crit_edge, label %if.then13.cleanup119_crit_edge

if.then13.cleanup119_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.then13.if.end18_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %usb3_consumed_up to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %usb3_consumed_up, align 4
  %17 = ptrtoint ptr %usb3_consumed_down to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %usb3_consumed_down, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then13.if.end18_crit_edge
  %18 = ptrtoint ptr %available_down to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 40000, ptr %available_down, align 4
  %19 = ptrtoint ptr %available_up to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40000, ptr %available_up, align 4
  %call19 = call ptr @tb_next_port_on_path(ptr noundef %src_port, ptr noundef %dst_port, ptr noundef null) #6
  %tobool20.not209 = icmp eq ptr %call19, null
  br i1 %tobool20.not209, label %if.end18.for.end110_crit_edge, label %if.end18.land.lhs.true.i_crit_edge

if.end18.land.lhs.true.i_crit_edge:               ; preds = %if.end18
  br label %land.lhs.true.i

if.end18.for.end110_crit_edge:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end110

land.lhs.true.i:                                  ; preds = %for.inc108.land.lhs.true.i_crit_edge, %if.end18.land.lhs.true.i_crit_edge
  %port.0210 = phi ptr [ %call109, %for.inc108.land.lhs.true.i_crit_edge ], [ %call19, %if.end18.land.lhs.true.i_crit_edge ]
  %port1.i = getelementptr inbounds %struct.tb_port, ptr %port.0210, i32 0, i32 9
  %20 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %port1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool2.not.i = icmp eq i8 %21, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.inc108_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i.for.inc108_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc108

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port.0210, i32 0, i32 2
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 12)
  %bf.load.i177 = load i96, ptr %type.i, align 4
  %23 = and i96 %bf.load.i177, 18446742974197923840
  %cmp.i = icmp eq i96 %23, 1099511627776
  br i1 %cmp.i, label %if.end23, label %tb_port_is_null.exit.for.inc108_crit_edge

tb_port_is_null.exit.for.inc108_crit_edge:        ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc108

if.end23:                                         ; preds = %tb_port_is_null.exit
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port.0210, i32 0, i32 1
  %24 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw.i, align 4
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %25, i32 0, i32 1, i32 2
  %28 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %27, i32 %bf.clear.i.i
  %cmp.i178 = icmp eq ptr %arrayidx.i.i, %port.0210
  br i1 %cmp.i178, label %if.end23.if.then25_crit_edge, label %tb_is_upstream_port.exit

if.end23.if.then25_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

tb_is_upstream_port.exit:                         ; preds = %if.end23
  %dual_link_port.i = getelementptr inbounds %struct.tb_port, ptr %port.0210, i32 0, i32 12
  %29 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %30, %arrayidx.i.i
  br i1 %cmp1.i, label %tb_is_upstream_port.exit.if.then25_crit_edge, label %if.else28

tb_is_upstream_port.exit.if.then25_crit_edge:     ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then25

if.then25:                                        ; preds = %tb_is_upstream_port.exit.if.then25_crit_edge, %if.end23.if.then25_crit_edge
  %link_speed27 = getelementptr inbounds %struct.tb_switch, ptr %25, i32 0, i32 12
  %31 = ptrtoint ptr %link_speed27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %link_speed27, align 8
  br label %if.end33

if.else28:                                        ; preds = %tb_is_upstream_port.exit
  %call29 = call i32 @tb_port_get_link_speed(ptr noundef nonnull %port.0210) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp = icmp slt i32 %call29, 0
  br i1 %cmp, label %if.else28.cleanup119_crit_edge, label %if.else28.if.end33_crit_edge

if.else28.if.end33_crit_edge:                     ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end33

if.else28.cleanup119_crit_edge:                   ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.end33:                                         ; preds = %if.else28.if.end33_crit_edge, %if.then25
  %link_speed.0 = phi i32 [ %32, %if.then25 ], [ %call29, %if.else28.if.end33_crit_edge ]
  %bonded = getelementptr inbounds %struct.tb_port, ptr %port.0210, i32 0, i32 11
  %33 = ptrtoint ptr %bonded to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bonded, align 2, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool34.not = icmp eq i8 %34, 0
  %cond = select i1 %tobool34.not, i32 1, i32 2
  %mul = mul i32 %link_speed.0, 1000
  %mul36 = mul i32 %mul, %cond
  %div.neg = sdiv i32 %mul36, -10
  %sub = add i32 %div.neg, %mul36
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_available_bandwidth.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_available_bandwidth, %if.then51)) #6
          to label %do.end63 [label %if.then51], !srcloc !219

if.then51:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sw.i, align 4
  %tb53 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 5
  %37 = ptrtoint ptr %tb53 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tb53, align 8
  %nhi54 = getelementptr inbounds %struct.tb, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %nhi54 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %nhi54, align 4
  %pdev55 = getelementptr inbounds %struct.tb_nhi, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %pdev55 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pdev55, align 4
  %dev56 = getelementptr inbounds %struct.pci_dev, ptr %42, i32 0, i32 44
  %route_hi.i179 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 1, i32 4
  %43 = ptrtoint ptr %route_hi.i179 to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %bf.load.i180 = load i64, ptr %route_hi.i179, align 4
  %44 = lshr i64 %bf.load.i180, 1
  %shl.i181 = and i64 %44, 9223372032559808512
  %route_lo.i182 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 1, i32 3
  %45 = ptrtoint ptr %route_lo.i182 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %route_lo.i182, align 8
  %conv2.i183 = zext i32 %46 to i64
  %or.i184 = or i64 %shl.i181, %conv2.i183
  %47 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %port1.i, align 4
  %conv60 = zext i8 %48 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_available_bandwidth.__UNIQUE_ID_ddebug240, ptr noundef %dev56, ptr noundef nonnull @.str.39, i64 noundef %or.i184, i32 noundef %conv60, i32 noundef %sub) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then51, %if.end33
  %49 = ptrtoint ptr %privdata.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn201 = load ptr, ptr %privdata.i, align 4
  %cmp69.not203 = icmp eq ptr %.pn201, %privdata.i
  br i1 %cmp69.not203, label %do.end63.for.end_crit_edge, label %do.end63.for.body73_crit_edge

do.end63.for.body73_crit_edge:                    ; preds = %do.end63
  br label %for.body73

do.end63.for.end_crit_edge:                       ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body73:                                       ; preds = %for.inc.for.body73_crit_edge, %do.end63.for.body73_crit_edge
  %.pn206 = phi ptr [ %.pn, %for.inc.for.body73_crit_edge ], [ %.pn201, %do.end63.for.body73_crit_edge ]
  %down_bw.0205 = phi i32 [ %down_bw.1.ph, %for.inc.for.body73_crit_edge ], [ %sub, %do.end63.for.body73_crit_edge ]
  %up_bw.0204 = phi i32 [ %up_bw.1.ph, %for.inc.for.body73_crit_edge ], [ %sub, %do.end63.for.body73_crit_edge ]
  %tunnel.0207 = getelementptr i8, ptr %.pn206, i32 -44
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_consumed_up) #6
  %50 = ptrtoint ptr %dp_consumed_up to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 -1, ptr %dp_consumed_up, align 4, !annotation !223
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dp_consumed_down) #6
  %51 = ptrtoint ptr %dp_consumed_down to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %dp_consumed_down, align 4, !annotation !223
  %type.i185 = getelementptr i8, ptr %.pn206, i32 8
  %52 = ptrtoint ptr %type.i185 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %type.i185, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp.i186 = icmp eq i32 %53, 1
  br i1 %cmp.i186, label %if.end76, label %for.body73.for.inc_crit_edge

for.body73.for.inc_crit_edge:                     ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end76:                                         ; preds = %for.body73
  %call77 = call zeroext i1 @tb_tunnel_port_on_path(ptr noundef %tunnel.0207, ptr noundef nonnull %port.0210) #6
  br i1 %call77, label %if.end79, label %if.end76.for.inc_crit_edge

if.end76.for.inc_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end79:                                         ; preds = %if.end76
  %call80 = call i32 @tb_tunnel_consumed_bandwidth(ptr noundef %tunnel.0207, ptr noundef nonnull %dp_consumed_up, ptr noundef nonnull %dp_consumed_down) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.end83, label %cleanup

if.end83:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dp_consumed_up to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dp_consumed_up, align 4
  %sub84 = sub i32 %up_bw.0204, %55
  %56 = ptrtoint ptr %dp_consumed_down to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dp_consumed_down, align 4
  %sub85 = sub i32 %down_bw.0205, %57
  br label %for.inc

cleanup:                                          ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_consumed_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_consumed_up) #6
  br label %cleanup119

for.inc:                                          ; preds = %if.end83, %if.end76.for.inc_crit_edge, %for.body73.for.inc_crit_edge
  %up_bw.1.ph = phi i32 [ %up_bw.0204, %if.end76.for.inc_crit_edge ], [ %up_bw.0204, %for.body73.for.inc_crit_edge ], [ %sub84, %if.end83 ]
  %down_bw.1.ph = phi i32 [ %down_bw.0205, %if.end76.for.inc_crit_edge ], [ %down_bw.0205, %for.body73.for.inc_crit_edge ], [ %sub85, %if.end83 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_consumed_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dp_consumed_up) #6
  %58 = ptrtoint ptr %.pn206 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn = load ptr, ptr %.pn206, align 4
  %cmp69.not = icmp eq ptr %.pn, %privdata.i
  br i1 %cmp69.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body73_crit_edge

for.inc.for.body73_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body73

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %do.end63.for.end_crit_edge
  %up_bw.0.lcssa = phi i32 [ %sub, %do.end63.for.end_crit_edge ], [ %up_bw.1.ph, %for.inc.for.end_crit_edge ]
  %down_bw.0.lcssa = phi i32 [ %sub, %do.end63.for.end_crit_edge ], [ %down_bw.1.ph, %for.inc.for.end_crit_edge ]
  %59 = ptrtoint ptr %usb3_consumed_up to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %usb3_consumed_up, align 4
  %sub92 = sub i32 %up_bw.0.lcssa, %60
  %61 = ptrtoint ptr %usb3_consumed_down to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %usb3_consumed_down, align 4
  %sub93 = sub i32 %down_bw.0.lcssa, %62
  %63 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %available_up, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub92, i32 %64)
  %cmp94 = icmp slt i32 %sub92, %64
  br i1 %cmp94, label %if.then96, label %for.end.if.end97_crit_edge

for.end.if.end97_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then96:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %available_up to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %sub92, ptr %available_up, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %for.end.if.end97_crit_edge
  %66 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %available_down, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub93, i32 %67)
  %cmp98 = icmp slt i32 %sub93, %67
  br i1 %cmp98, label %if.then100, label %if.end97.for.inc108_crit_edge

if.end97.for.inc108_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc108

if.then100:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %available_down to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub93, ptr %available_down, align 4
  br label %for.inc108

for.inc108:                                       ; preds = %if.then100, %if.end97.for.inc108_crit_edge, %tb_port_is_null.exit.for.inc108_crit_edge, %land.lhs.true.i.for.inc108_crit_edge
  %call109 = call ptr @tb_next_port_on_path(ptr noundef %src_port, ptr noundef %dst_port, ptr noundef nonnull %port.0210) #6
  %tobool20.not = icmp eq ptr %call109, null
  br i1 %tobool20.not, label %for.inc108.for.end110_crit_edge, label %for.inc108.land.lhs.true.i_crit_edge

for.inc108.land.lhs.true.i_crit_edge:             ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

for.inc108.for.end110_crit_edge:                  ; preds = %for.inc108
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end110

for.end110:                                       ; preds = %for.inc108.for.end110_crit_edge, %if.end18.for.end110_crit_edge
  %69 = ptrtoint ptr %available_up to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %available_up, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp111 = icmp slt i32 %70, 0
  br i1 %cmp111, label %if.then113, label %for.end110.if.end114_crit_edge

for.end110.if.end114_crit_edge:                   ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end114

if.then113:                                       ; preds = %for.end110
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %available_up to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %available_up, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %for.end110.if.end114_crit_edge
  %72 = ptrtoint ptr %available_down to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %available_down, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp115 = icmp slt i32 %73, 0
  br i1 %cmp115, label %if.then117, label %if.end114.cleanup119_crit_edge

if.end114.cleanup119_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup119

if.then117:                                       ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %available_down to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %available_down, align 4
  br label %cleanup119

cleanup119:                                       ; preds = %if.then117, %if.end114.cleanup119_crit_edge, %cleanup, %if.else28.cleanup119_crit_edge, %if.then13.cleanup119_crit_edge
  %retval.4 = phi i32 [ %call14, %if.then13.cleanup119_crit_edge ], [ 0, %if.then117 ], [ 0, %if.end114.cleanup119_crit_edge ], [ %call80, %cleanup ], [ %call29, %if.else28.cleanup119_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usb3_consumed_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %usb3_consumed_up) #6
  ret i32 %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_tunnel_reclaim_available_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb4_switch_map_usb3_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_tunnel_consumed_bandwidth(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_next_port_on_path(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_get_link_speed(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_tunnel_port_on_path(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tb_find_dp_out(ptr noundef readonly %tb, ptr nocapture noundef readonly %in) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sw = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 1
  %0 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %3 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %3, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %5 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %entry
  %root_switch = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  %6 = ptrtoint ptr %root_switch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %root_switch, align 8
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load.i103 = load i32, ptr %depth.i, align 4
  %9 = lshr i32 %bf.load.i103, 6
  %mul.i = and i32 %9, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i103, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !220

do.end.i:                                         ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %cond.end

if.end27.i:                                       ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %11, i32 %conv1.i
  br label %cond.end

cond.end:                                         ; preds = %if.end27.i, %do.end.i, %entry.cond.end_crit_edge
  %cond = phi ptr [ null, %entry.cond.end_crit_edge ], [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  %dp_resources = getelementptr inbounds %struct.tb, ptr %tb, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %dp_resources to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn149 = load ptr, ptr %dp_resources, align 4
  %cmp.not151 = icmp eq ptr %.pn149, %dp_resources
  br i1 %cmp.not151, label %cond.end.cleanup74_crit_edge, label %for.body.lr.ph

cond.end.cleanup74_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

for.body.lr.ph:                                   ; preds = %cond.end
  %tobool55.not = icmp eq ptr %cond, null
  %root_switch62 = getelementptr inbounds %struct.tb, ptr %tb, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn152 = phi ptr [ %.pn149, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %port.0153 = getelementptr i8, ptr %.pn152, i32 -180
  %tobool.not.i = icmp eq ptr %port.0153, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %tb_port_is_dpout.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_dpout.exit:                            ; preds = %for.body
  %type.i = getelementptr i8, ptr %.pn152, i32 -176
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 12)
  %bf.load.i105 = load i96, ptr %type.i, align 4
  %14 = and i96 %bf.load.i105, 18446742974197923840
  %cmp.i106 = icmp eq i96 %14, 1009089990530957312
  br i1 %cmp.i106, label %if.end, label %tb_port_is_dpout.exit.for.inc_crit_edge

tb_port_is_dpout.exit.for.inc_crit_edge:          ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %tb_port_is_dpout.exit
  %call7 = tail call zeroext i1 @tb_port_is_enabled(ptr noundef nonnull %port.0153) #6
  br i1 %call7, label %do.body, label %do.body26

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_find_dp_out.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_find_dp_out, %if.then16)) #6
          to label %for.inc [label %if.then16], !srcloc !219

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %sw17 = getelementptr i8, ptr %.pn152, i32 -148
  %15 = ptrtoint ptr %sw17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw17, align 4
  %tb18 = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %tb18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %tb18, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %22, i32 0, i32 44
  %route_hi.i107 = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 4
  %23 = ptrtoint ptr %route_hi.i107 to i32
  call void @__asan_loadN_noabort(i32 %23, i32 8)
  %bf.load.i108 = load i64, ptr %route_hi.i107, align 4
  %24 = lshr i64 %bf.load.i108, 1
  %shl.i109 = and i64 %24, 9223372032559808512
  %route_lo.i110 = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %route_lo.i110 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %route_lo.i110, align 8
  %conv2.i111 = zext i32 %26 to i64
  %or.i112 = or i64 %shl.i109, %conv2.i111
  %port21 = getelementptr i8, ptr %.pn152, i32 -116
  %27 = ptrtoint ptr %port21 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %port21, align 4
  %conv = zext i8 %28 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_find_dp_out.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.45, i64 noundef %or.i112, i32 noundef %conv) #6
  br label %for.inc

do.body26:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tb_find_dp_out.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tb_find_dp_out, %if.then40)) #6
          to label %do.end52 [label %if.then40], !srcloc !219

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  %sw41 = getelementptr i8, ptr %.pn152, i32 -148
  %29 = ptrtoint ptr %sw41 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw41, align 4
  %tb42 = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 5
  %31 = ptrtoint ptr %tb42 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tb42, align 8
  %nhi43 = getelementptr inbounds %struct.tb, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %nhi43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %nhi43, align 4
  %pdev44 = getelementptr inbounds %struct.tb_nhi, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %pdev44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pdev44, align 4
  %dev45 = getelementptr inbounds %struct.pci_dev, ptr %36, i32 0, i32 44
  %route_hi.i113 = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 1, i32 4
  %37 = ptrtoint ptr %route_hi.i113 to i32
  call void @__asan_loadN_noabort(i32 %37, i32 8)
  %bf.load.i114 = load i64, ptr %route_hi.i113, align 4
  %38 = lshr i64 %bf.load.i114, 1
  %shl.i115 = and i64 %38, 9223372032559808512
  %route_lo.i116 = getelementptr inbounds %struct.tb_switch, ptr %30, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %route_lo.i116 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %route_lo.i116, align 8
  %conv2.i117 = zext i32 %40 to i64
  %or.i118 = or i64 %shl.i115, %conv2.i117
  %port48 = getelementptr i8, ptr %.pn152, i32 -116
  %41 = ptrtoint ptr %port48 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %port48, align 4
  %conv49 = zext i8 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tb_find_dp_out.__UNIQUE_ID_ddebug248, ptr noundef %dev45, ptr noundef nonnull @.str.58, i64 noundef %or.i118, i32 noundef %conv49) #6
  br label %do.end52

do.end52:                                         ; preds = %if.then40, %do.body26
  br i1 %tobool55.not, label %do.end52.cleanup74_crit_edge, label %land.lhs.true

do.end52.cleanup74_crit_edge:                     ; preds = %do.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

land.lhs.true:                                    ; preds = %do.end52
  %sw56 = getelementptr i8, ptr %.pn152, i32 -148
  %43 = ptrtoint ptr %sw56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sw56, align 4
  %route_hi.i119 = getelementptr inbounds %struct.tb_switch, ptr %44, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %route_hi.i119 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %bf.load.i120 = load i64, ptr %route_hi.i119, align 4
  %46 = lshr i64 %bf.load.i120, 1
  %shl.i121 = and i64 %46, 9223372032559808512
  %route_lo.i122 = getelementptr inbounds %struct.tb_switch, ptr %44, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %route_lo.i122 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %route_lo.i122, align 8
  %conv2.i123 = zext i32 %48 to i64
  %or.i124 = or i64 %shl.i121, %conv2.i123
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i124)
  %tobool58.not = icmp eq i64 %or.i124, 0
  br i1 %tobool58.not, label %land.lhs.true.cleanup74_crit_edge, label %if.then59

land.lhs.true.cleanup74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

if.then59:                                        ; preds = %land.lhs.true
  %49 = ptrtoint ptr %root_switch62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %root_switch62, align 8
  %depth.i131 = getelementptr inbounds %struct.tb_switch, ptr %50, i32 0, i32 1, i32 2
  %51 = ptrtoint ptr %depth.i131 to i32
  call void @__asan_load4_noabort(i32 %51)
  %bf.load.i132 = load i32, ptr %depth.i131, align 4
  %52 = lshr i32 %bf.load.i132, 6
  %mul.i133 = and i32 %52, 56
  %sh_prom.i134 = zext i32 %mul.i133 to i64
  %shr.i135 = lshr i64 %or.i124, %sh_prom.i134
  %conv.i136 = trunc i64 %shr.i135 to i32
  %conv1.i137 = and i32 %conv.i136, 255
  %bf.lshr4.i138 = lshr i32 %bf.load.i132, 12
  %bf.clear5.i139 = and i32 %bf.lshr4.i138, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i137, i32 %bf.clear5.i139)
  %cmp.i140 = icmp ugt i32 %conv1.i137, %bf.clear5.i139
  br i1 %cmp.i140, label %do.end.i141, label %if.end27.i144, !prof !220

do.end.i141:                                      ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.36, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit146

if.end27.i144:                                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i142 = getelementptr inbounds %struct.tb_switch, ptr %50, i32 0, i32 2
  %53 = ptrtoint ptr %ports.i142 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ports.i142, align 4
  %arrayidx.i143 = getelementptr %struct.tb_port, ptr %54, i32 %conv1.i137
  br label %tb_port_at.exit146

tb_port_at.exit146:                               ; preds = %if.end27.i144, %do.end.i141
  %retval.0.i145 = phi ptr [ null, %do.end.i141 ], [ %arrayidx.i143, %if.end27.i144 ]
  %cmp64.not = icmp eq ptr %retval.0.i145, %cond
  br i1 %cmp64.not, label %tb_port_at.exit146.cleanup74_crit_edge, label %tb_port_at.exit146.for.inc_crit_edge

tb_port_at.exit146.for.inc_crit_edge:             ; preds = %tb_port_at.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_at.exit146.cleanup74_crit_edge:           ; preds = %tb_port_at.exit146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

for.inc:                                          ; preds = %tb_port_at.exit146.for.inc_crit_edge, %if.then16, %do.body, %tb_port_is_dpout.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %55 = ptrtoint ptr %.pn152 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn = load ptr, ptr %.pn152, align 4
  %cmp.not = icmp eq ptr %.pn, %dp_resources
  br i1 %cmp.not, label %for.inc.cleanup74_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup74_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup74

cleanup74:                                        ; preds = %for.inc.cleanup74_crit_edge, %tb_port_at.exit146.cleanup74_crit_edge, %land.lhs.true.cleanup74_crit_edge, %do.end52.cleanup74_crit_edge, %cond.end.cleanup74_crit_edge
  %retval.0 = phi ptr [ null, %cond.end.cleanup74_crit_edge ], [ %port.0153, %tb_port_at.exit146.cleanup74_crit_edge ], [ null, %for.inc.cleanup74_crit_edge ], [ %port.0153, %do.end52.cleanup74_crit_edge ], [ %port.0153, %land.lhs.true.cleanup74_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_alloc_dp_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_alloc_dp(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_tunnel_activate(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_tunnel_release_unused_bandwidth(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_find_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_tunnel_match_dma(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_is_xdomain_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_xdomain_find_by_route(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_xdomain_alloc(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_xdomain_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb4_port_configure_xdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_lc_configure_xdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb4_port_unconfigure_xdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_lc_unconfigure_xdomain(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_port_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_tmu_post_time(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_alloc_usb3(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_usb3_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_switch_discover_tunnels(ptr nocapture noundef readonly %sw, ptr noundef %list, i1 noundef zeroext %alloc_hopids) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tb1 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %tb1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb1, align 8
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %2 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.062 = getelementptr %struct.tb_port, ptr %3, i32 1
  %4 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %4)
  %bf.load63 = load i32, ptr %max_port_number, align 4
  %bf.lshr64 = lshr i32 %bf.load63, 12
  %bf.clear65 = and i32 %bf.lshr64, 63
  %arrayidx366 = getelementptr %struct.tb_port, ptr %3, i32 %bf.clear65
  %cmp.not67 = icmp ugt ptr %port.062, %arrayidx366
  br i1 %cmp.not67, label %entry.for.cond18.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond18.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader

for.body.lr.ph:                                   ; preds = %entry
  %prev.i = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  br label %for.body

for.cond18.preheader:                             ; preds = %if.end.for.cond18.preheader_crit_edge, %entry.for.cond18.preheader_crit_edge
  %.lcssa = phi ptr [ %3, %entry.for.cond18.preheader_crit_edge ], [ %18, %if.end.for.cond18.preheader_crit_edge ]
  %port.170 = getelementptr %struct.tb_port, ptr %.lcssa, i32 1
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %7 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load2271 = load i32, ptr %max_port_number, align 4
  %bf.lshr2372 = lshr i32 %bf.load2271, 12
  %bf.clear2473 = and i32 %bf.lshr2372, 63
  %arrayidx2574 = getelementptr %struct.tb_port, ptr %6, i32 %bf.clear2473
  %cmp26.not75 = icmp ugt ptr %port.170, %arrayidx2574
  br i1 %cmp26.not75, label %for.cond18.preheader.for.end35_crit_edge, label %for.cond18.preheader.for.body27_crit_edge

for.cond18.preheader.for.body27_crit_edge:        ; preds = %for.cond18.preheader
  br label %for.body27

for.cond18.preheader.for.end35_crit_edge:         ; preds = %for.cond18.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %port.069 = phi ptr [ %port.062, %for.body.lr.ph ], [ %port.0, %if.end.for.body_crit_edge ]
  %.pn68 = phi ptr [ %3, %for.body.lr.ph ], [ %port.069, %if.end.for.body_crit_edge ]
  %type = getelementptr %struct.tb_port, ptr %.pn68, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %type to i32
  call void @__asan_loadN_noabort(i32 %8, i32 12)
  %bf.load5 = load i96, ptr %type, align 4
  %bf.lshr6 = lshr i96 %bf.load5, 40
  %9 = trunc i96 %bf.lshr6 to i32
  %bf.cast = and i32 %9, 16777215
  %10 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %bf.cast, label %for.body.if.end_crit_edge [
    i32 917761, label %sw.bb
    i32 1048833, label %sw.bb8
    i32 2097409, label %sw.bb11
  ]

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call ptr @tb_tunnel_discover_dp(ptr noundef %1, ptr noundef %port.069, i1 noundef zeroext %alloc_hopids) #6
  br label %sw.epilog

sw.bb8:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = tail call ptr @tb_tunnel_discover_pci(ptr noundef %1, ptr noundef %port.069, i1 noundef zeroext %alloc_hopids) #6
  br label %sw.epilog

sw.bb11:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call ptr @tb_tunnel_discover_usb3(ptr noundef %1, ptr noundef %port.069, i1 noundef zeroext %alloc_hopids) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb11, %sw.bb8, %sw.bb
  %tunnel.0 = phi ptr [ %call13, %sw.bb11 ], [ %call10, %sw.bb8 ], [ %call, %sw.bb ]
  %tobool14.not = icmp eq ptr %tunnel.0, null
  br i1 %tobool14.not, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  %list15 = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel.0, i32 0, i32 11
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list15, ptr noundef %12, ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list15, ptr %prev.i, align 4
  %14 = ptrtoint ptr %list15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %list, ptr %list15, align 4
  %prev3.i.i = getelementptr inbounds %struct.tb_tunnel, ptr %tunnel.0, i32 0, i32 11, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %list15, ptr %12, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.then.if.end_crit_edge, %sw.epilog.if.end_crit_edge, %for.body.if.end_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.069, i32 1
  %17 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ports, align 4
  %19 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx3 = getelementptr %struct.tb_port, ptr %18, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx3
  br i1 %cmp.not, label %if.end.for.cond18.preheader_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end.for.cond18.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond18.preheader

for.body27:                                       ; preds = %for.inc33.for.body27_crit_edge, %for.cond18.preheader.for.body27_crit_edge
  %port.178 = phi ptr [ %port.1, %for.inc33.for.body27_crit_edge ], [ %port.170, %for.cond18.preheader.for.body27_crit_edge ]
  %.pn5876 = phi ptr [ %port.178, %for.inc33.for.body27_crit_edge ], [ %.lcssa, %for.cond18.preheader.for.body27_crit_edge ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn5876, i32 1, i32 1
  %20 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %21, i32 0, i32 1, i32 2
  %24 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %23, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.178
  br i1 %cmp.i.i, label %for.body27.for.inc33_crit_edge, label %tb_is_upstream_port.exit.i

for.body27.for.inc33_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

tb_is_upstream_port.exit.i:                       ; preds = %for.body27
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn5876, i32 1, i32 12
  %25 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %26, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc33_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.for.inc33_crit_edge:   ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn5876, i32 1, i32 2
  %27 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i.for.inc33_crit_edge, label %if.end2.i

if.end.i.for.inc33_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %26, null
  br i1 %tobool3.not.i, label %if.end2.i.if.then29_crit_edge, label %land.lhs.true.i

if.end2.i.if.then29_crit_edge:                    ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn5876, i32 1, i32 13
  %29 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.then29_crit_edge, label %land.lhs.true.i.for.inc33_crit_edge

land.lhs.true.i.for.inc33_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc33

land.lhs.true.i.if.then29_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then29

if.then29:                                        ; preds = %land.lhs.true.i.if.then29_crit_edge, %if.end2.i.if.then29_crit_edge
  %30 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %remote.i, align 4
  %sw30 = getelementptr inbounds %struct.tb_port, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %sw30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %sw30, align 4
  tail call fastcc void @tb_switch_discover_tunnels(ptr noundef %33, ptr noundef %list, i1 noundef zeroext %alloc_hopids)
  br label %for.inc33

for.inc33:                                        ; preds = %if.then29, %land.lhs.true.i.for.inc33_crit_edge, %if.end.i.for.inc33_crit_edge, %tb_is_upstream_port.exit.i.for.inc33_crit_edge, %for.body27.for.inc33_crit_edge
  %port.1 = getelementptr %struct.tb_port, ptr %port.178, i32 1
  %34 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ports, align 4
  %36 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %36)
  %bf.load22 = load i32, ptr %max_port_number, align 4
  %bf.lshr23 = lshr i32 %bf.load22, 12
  %bf.clear24 = and i32 %bf.lshr23, 63
  %arrayidx25 = getelementptr %struct.tb_port, ptr %35, i32 %bf.clear24
  %cmp26.not = icmp ugt ptr %port.1, %arrayidx25
  br i1 %cmp26.not, label %for.inc33.for.end35_crit_edge, label %for.inc33.for.body27_crit_edge

for.inc33.for.body27_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body27

for.inc33.for.end35_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end35

for.end35:                                        ; preds = %for.inc33.for.end35_crit_edge, %for.cond18.preheader.for.end35_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_discover_dp(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_discover_pci(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_discover_usb3(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_switch_query_dp_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tb_switch_suspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_resume(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_free_unplugged_children(ptr nocapture noundef readonly %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.037 = getelementptr %struct.tb_port, ptr %1, i32 1
  %2 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load38 = load i32, ptr %max_port_number, align 4
  %bf.lshr39 = lshr i32 %bf.load38, 12
  %bf.clear40 = and i32 %bf.lshr39, 63
  %arrayidx241 = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear40
  %cmp.not42 = icmp ugt ptr %port.037, %arrayidx241
  br i1 %cmp.not42, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.045 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.037, %entry.for.body_crit_edge ]
  %.pn43 = phi ptr [ %port.045, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn43, i32 1, i32 1
  %3 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %6, i32 %bf.clear.i.i.i
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.045
  br i1 %cmp.i.i, label %for.body.for.inc_crit_edge, label %tb_is_upstream_port.exit.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_is_upstream_port.exit.i:                       ; preds = %for.body
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn43, i32 1, i32 12
  %8 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %9, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc_crit_edge, label %if.end.i

tb_is_upstream_port.exit.i.for.inc_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i:                                         ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn43, i32 1, i32 2
  %10 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.end.i.for.inc_crit_edge, label %if.end2.i

if.end.i.for.inc_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end2.i:                                        ; preds = %if.end.i
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.end2.i.if.end_crit_edge, label %land.lhs.true.i

if.end2.i.if.end_crit_edge:                       ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn43, i32 1, i32 13
  %12 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool4.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end2.i.if.end_crit_edge
  %13 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %remote.i, align 4
  %sw3 = getelementptr inbounds %struct.tb_port, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %sw3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sw3, align 4
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %16, i32 0, i32 20
  %17 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %is_unplugged, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not = icmp eq i8 %18, 0
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  tail call void @tb_retimer_remove_all(ptr noundef %port.045) #6
  %19 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %remote.i, align 4
  %sw6 = getelementptr inbounds %struct.tb_port, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %sw6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw6, align 4
  tail call fastcc void @tb_remove_dp_resources(ptr noundef %22)
  %23 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %remote.i, align 4
  %sw8 = getelementptr inbounds %struct.tb_port, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %sw8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sw8, align 4
  tail call void @tb_switch_unconfigure_link(ptr noundef %26) #6
  %27 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %remote.i, align 4
  %sw10 = getelementptr inbounds %struct.tb_port, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %sw10 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sw10, align 4
  tail call void @tb_switch_lane_bonding_disable(ptr noundef %30) #6
  %31 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %remote.i, align 4
  %sw12 = getelementptr inbounds %struct.tb_port, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %sw12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %sw12, align 4
  tail call void @tb_switch_remove(ptr noundef %34) #6
  %35 = ptrtoint ptr %remote.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %remote.i, align 4
  %36 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dual_link_port.i.i, align 4
  %tobool14.not = icmp eq ptr %37, null
  br i1 %tobool14.not, label %if.then4.for.inc_crit_edge, label %if.then15

if.then4.for.inc_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then15:                                        ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %remote17 = getelementptr inbounds %struct.tb_port, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %remote17 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %remote17, align 4
  br label %for.inc

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @tb_free_unplugged_children(ptr noundef %16)
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then15, %if.then4.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %if.end.i.for.inc_crit_edge, %tb_is_upstream_port.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.045, i32 1
  %39 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ports, align 4
  %41 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %40, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tb_restore_children(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_unplugged = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %0 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_unplugged, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @tb_switch_enable_clx(ptr noundef %sw, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %do.body

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %2 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %7, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %8 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %9 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %9, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %11 to i64
  %or.i = or i64 %shl.i, %conv2.i
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.78, i64 noundef %or.i) #10
  br label %if.end7

if.end7:                                          ; preds = %do.body, %if.end.if.end7_crit_edge
  %rate.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 2
  %12 = ptrtoint ptr %rate.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %rate.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %13)
  %cmp.i.i = icmp eq i32 %13, 16
  br i1 %cmp.i.i, label %tb_switch_tmu_hifi_is_enabled.exit.i, label %if.end7.if.end.i_crit_edge

if.end7.if.end.i_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

tb_switch_tmu_hifi_is_enabled.exit.i:             ; preds = %if.end7
  %unidirectional_request.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %unidirectional_request.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %unidirectional_request.i, align 1, !range !222
  %unidirectional2.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 4, i32 3
  %16 = ptrtoint ptr %unidirectional2.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %unidirectional2.i.i, align 4, !range !222
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %15)
  %cmp5.i.i = icmp eq i8 %17, %15
  br i1 %cmp5.i.i, label %tb_switch_tmu_hifi_is_enabled.exit.i.if.end23_crit_edge, label %tb_switch_tmu_hifi_is_enabled.exit.i.if.end.i_crit_edge

tb_switch_tmu_hifi_is_enabled.exit.i.if.end.i_crit_edge: ; preds = %tb_switch_tmu_hifi_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

tb_switch_tmu_hifi_is_enabled.exit.i.if.end23_crit_edge: ; preds = %tb_switch_tmu_hifi_is_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.end.i:                                         ; preds = %tb_switch_tmu_hifi_is_enabled.exit.i.if.end.i_crit_edge, %if.end7.if.end.i_crit_edge
  %call1.i = tail call i32 @tb_switch_tmu_disable(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.do.body11_crit_edge

if.end.i.do.body11_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @tb_switch_tmu_post_time(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %tb_enable_tmu.exit, label %if.end4.i.do.body11_crit_edge

if.end4.i.do.body11_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

tb_enable_tmu.exit:                               ; preds = %if.end4.i
  %call9.i = tail call i32 @tb_switch_tmu_enable(ptr noundef %sw) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool9.not = icmp eq i32 %call9.i, 0
  br i1 %tobool9.not, label %tb_enable_tmu.exit.if.end23_crit_edge, label %tb_enable_tmu.exit.do.body11_crit_edge

tb_enable_tmu.exit.do.body11_crit_edge:           ; preds = %tb_enable_tmu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body11

tb_enable_tmu.exit.if.end23_crit_edge:            ; preds = %tb_enable_tmu.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

do.body11:                                        ; preds = %tb_enable_tmu.exit.do.body11_crit_edge, %if.end4.i.do.body11_crit_edge, %if.end.i.do.body11_crit_edge
  %tb16 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %18 = ptrtoint ptr %tb16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tb16, align 8
  %nhi17 = getelementptr inbounds %struct.tb, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %nhi17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %nhi17, align 4
  %pdev18 = getelementptr inbounds %struct.tb_nhi, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pdev18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %23, i32 0, i32 44
  %route_hi.i64 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %route_hi.i64 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %bf.load.i65 = load i64, ptr %route_hi.i64, align 4
  %25 = lshr i64 %bf.load.i65, 1
  %shl.i66 = and i64 %25, 9223372032559808512
  %route_lo.i67 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %route_lo.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %route_lo.i67, align 8
  %conv2.i68 = zext i32 %27 to i64
  %or.i69 = or i64 %shl.i66, %conv2.i68
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev19, ptr noundef nonnull @.str.81, i64 noundef %or.i69) #10
  br label %if.end23

if.end23:                                         ; preds = %do.body11, %tb_enable_tmu.exit.if.end23_crit_edge, %tb_switch_tmu_hifi_is_enabled.exit.i.if.end23_crit_edge
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %28 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.082 = getelementptr %struct.tb_port, ptr %29, i32 1
  %30 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load83 = load i32, ptr %max_port_number, align 4
  %bf.lshr84 = lshr i32 %bf.load83, 12
  %bf.clear85 = and i32 %bf.lshr84, 63
  %arrayidx2586 = getelementptr %struct.tb_port, ptr %29, i32 %bf.clear85
  %cmp.not87 = icmp ugt ptr %port.082, %arrayidx2586
  br i1 %cmp.not87, label %if.end23.cleanup_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23.for.body_crit_edge
  %port.089 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.082, %if.end23.for.body_crit_edge ]
  %.pn88 = phi ptr [ %port.089, %for.inc.for.body_crit_edge ], [ %29, %if.end23.for.body_crit_edge ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 1
  %31 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 1, i32 2
  %35 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %34, i32 %bf.clear.i.i.i
  %cmp.i.i70 = icmp eq ptr %arrayidx.i.i.i, %port.089
  br i1 %cmp.i.i70, label %for.body.land.lhs.true_crit_edge, label %tb_is_upstream_port.exit.i

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

tb_is_upstream_port.exit.i:                       ; preds = %for.body
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 12
  %36 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %37, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.land.lhs.true_crit_edge, label %if.end.i71

tb_is_upstream_port.exit.i.land.lhs.true_crit_edge: ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end.i71:                                       ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 2
  %38 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remote.i, align 4
  %tobool.not.i = icmp eq ptr %39, null
  br i1 %tobool.not.i, label %if.end.i71.land.lhs.true_crit_edge, label %if.end2.i

if.end.i71.land.lhs.true_crit_edge:               ; preds = %if.end.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

if.end2.i:                                        ; preds = %if.end.i71
  %tobool3.not.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i, label %if.end2.i.if.end29_crit_edge, label %land.lhs.true.i

if.end2.i.if.end29_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 13
  %40 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i72 = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i72)
  %tobool4.not.i = icmp sgt i8 %bf.load.i72, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end29_crit_edge, label %land.lhs.true.i.land.lhs.true_crit_edge

land.lhs.true.i.land.lhs.true_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true.i.if.end29_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true:                                    ; preds = %land.lhs.true.i.land.lhs.true_crit_edge, %if.end.i71.land.lhs.true_crit_edge, %tb_is_upstream_port.exit.i.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %xdomain = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 3
  %41 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %xdomain, align 4
  %tobool27.not = icmp eq ptr %42, null
  br i1 %tobool27.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true.if.end29_crit_edge

land.lhs.true.if.end29_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end29:                                         ; preds = %land.lhs.true.if.end29_crit_edge, %land.lhs.true.i.if.end29_crit_edge, %if.end2.i.if.end29_crit_edge
  %remote = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 2
  %43 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %remote, align 4
  %tobool30.not = icmp eq ptr %44, null
  br i1 %tobool30.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %sw33 = getelementptr inbounds %struct.tb_port, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %sw33 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %sw33, align 4
  %call34 = tail call i32 @tb_switch_lane_bonding_enable(ptr noundef %46) #6
  %47 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %remote, align 4
  %sw36 = getelementptr inbounds %struct.tb_port, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %sw36 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sw36, align 4
  %call37 = tail call i32 @tb_switch_configure_link(ptr noundef %50) #6
  %51 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %remote, align 4
  %sw39 = getelementptr inbounds %struct.tb_port, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %sw39 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %sw39, align 4
  tail call fastcc void @tb_restore_children(ptr noundef %54)
  br label %for.inc

if.else:                                          ; preds = %if.end29
  %xdomain40 = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 3
  %55 = ptrtoint ptr %xdomain40 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %xdomain40, align 4
  %tobool41.not = icmp eq ptr %56, null
  br i1 %tobool41.not, label %if.else.for.inc_crit_edge, label %if.then42

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then42:                                        ; preds = %if.else
  %dual_link_port.i = getelementptr %struct.tb_port, ptr %.pn88, i32 1, i32 12
  %57 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dual_link_port.i, align 4
  %call.i = tail call i32 @tb_port_disable(ptr noundef %58) #6
  %59 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %sw.i.i, align 4
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %60, i32 0, i32 1, i32 4
  %61 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %61, i32 8)
  %bf.load.i.i = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i74 = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i74, label %if.then.i, label %if.end.i75

if.then.i:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %call2.i = tail call i32 @usb4_port_configure_xdomain(ptr noundef %port.089) #6
  br label %for.inc

if.end.i75:                                       ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #8
  %call3.i = tail call i32 @tb_lc_configure_xdomain(ptr noundef %port.089) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end.i75, %if.then.i, %if.else.for.inc_crit_edge, %if.then31, %land.lhs.true.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.089, i32 1
  %62 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %ports, align 4
  %64 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %64)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx25 = getelementptr %struct.tb_port, ptr %63, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx25
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_tunnel_restart(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tb_free_unplugged_xdomains(ptr nocapture noundef readonly %sw) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.033 = getelementptr %struct.tb_port, ptr %1, i32 1
  %2 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load34 = load i32, ptr %max_port_number, align 4
  %bf.lshr35 = lshr i32 %bf.load34, 12
  %bf.clear36 = and i32 %bf.lshr35, 63
  %arrayidx237 = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear36
  %cmp.not38 = icmp ugt ptr %port.033, %arrayidx237
  br i1 %cmp.not38, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.042 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.033, %entry.for.body_crit_edge ]
  %ret.041 = phi i32 [ %ret.1, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %.pn39 = phi ptr [ %port.042, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %sw.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 1
  %3 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw.i, align 4
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 2
  %7 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %6, i32 %bf.clear.i.i
  %cmp.i = icmp eq ptr %arrayidx.i.i, %port.042
  br i1 %cmp.i, label %for.body.for.inc_crit_edge, label %tb_is_upstream_port.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_is_upstream_port.exit:                         ; preds = %for.body
  %dual_link_port.i = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 12
  %8 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %9, %arrayidx.i.i
  br i1 %cmp1.i, label %tb_is_upstream_port.exit.for.inc_crit_edge, label %if.end

tb_is_upstream_port.exit.for.inc_crit_edge:       ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %tb_is_upstream_port.exit
  %xdomain = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 3
  %10 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xdomain, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %is_unplugged = getelementptr inbounds %struct.tb_xdomain, ptr %11, i32 0, i32 14
  %12 = ptrtoint ptr %is_unplugged to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %is_unplugged, align 8, !range !222
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool4.not = icmp eq i8 %13, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  tail call void @tb_retimer_remove_all(ptr noundef %port.042) #6
  %14 = ptrtoint ptr %xdomain to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %xdomain, align 4
  tail call void @tb_xdomain_remove(ptr noundef %15) #6
  %16 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sw.i, align 4
  %thunderbolt_version.i.i = getelementptr inbounds %struct.tb_switch, ptr %17, i32 0, i32 1, i32 4
  %18 = ptrtoint ptr %thunderbolt_version.i.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 8)
  %bf.load.i.i31 = load i64, ptr %thunderbolt_version.i.i, align 4
  %bf.cast1.i.i = and i64 %bf.load.i.i31, 255
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %bf.cast1.i.i)
  %cmp.i.i = icmp eq i64 %bf.cast1.i.i, 32
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb4_port_unconfigure_xdomain(ptr noundef %port.042) #6
  br label %tb_port_unconfigure_xdomain.exit

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tb_lc_unconfigure_xdomain(ptr noundef %port.042) #6
  br label %tb_port_unconfigure_xdomain.exit

tb_port_unconfigure_xdomain.exit:                 ; preds = %if.else.i, %if.then.i
  %19 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dual_link_port.i, align 4
  %call1.i = tail call i32 @tb_port_enable(ptr noundef %20) #6
  %21 = ptrtoint ptr %xdomain to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %xdomain, align 4
  %inc = add i32 %ret.041, 1
  br label %for.inc

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %remote = getelementptr %struct.tb_port, ptr %.pn39, i32 1, i32 2
  %22 = ptrtoint ptr %remote to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %remote, align 4
  %tobool8.not = icmp eq ptr %23, null
  br i1 %tobool8.not, label %if.else.for.inc_crit_edge, label %if.then9

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %sw11 = getelementptr inbounds %struct.tb_port, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %sw11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sw11, align 4
  %call12 = tail call fastcc i32 @tb_free_unplugged_xdomains(ptr noundef %25)
  %add = add i32 %call12, %ret.041
  br label %for.inc

for.inc:                                          ; preds = %if.then9, %if.else.for.inc_crit_edge, %tb_port_unconfigure_xdomain.exit, %tb_is_upstream_port.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.1 = phi i32 [ %ret.041, %tb_is_upstream_port.exit.for.inc_crit_edge ], [ %inc, %tb_port_unconfigure_xdomain.exit ], [ %add, %if.then9 ], [ %ret.041, %if.else.for.inc_crit_edge ], [ %ret.041, %for.body.for.inc_crit_edge ]
  %port.0 = getelementptr %struct.tb_port, ptr %port.042, i32 1
  %26 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ports, align 4
  %28 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %27, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_ack_plug(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_alloc_pci(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_pcie_l1_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb4_switch_map_pcie_down(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tb_pci_port_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_tunnel_alloc_dma(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 97)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind "function-inline-cost-multiplier"="2" }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !80, !82, !83, !84, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !112, !113, !115, !116, !117, !119, !120, !122, !123, !125, !126, !127, !128, !130, !131, !133, !134, !136, !137, !138, !140, !142, !143, !144, !145, !146, !148, !149, !150, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !165, !167, !168, !170, !171, !172, !174, !175, !177, !178, !180, !181, !182, !183, !185, !186, !187, !189, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209}
!llvm.module.flags = !{!210, !211, !212, !213, !214, !215, !216, !217}
!llvm.ident = !{!218}

!0 = !{ptr @tb_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/tb.c", i32 1714, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @tb_probe.__key.1, !1, !"__key", i1 false, i1 false}
!4 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/thunderbolt/tb.c", i32 1716, i32 2}
!7 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @tb_probe.__UNIQUE_ID_ddebug274, !6, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!11 = !{ptr @tb_cm_ops, !12, !"tb_cm_ops", i1 false, i1 false}
!12 = !{!"../drivers/thunderbolt/tb.c", i32 1615, i32 31}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/tb.c", i32 590, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @tb_scan_port.__UNIQUE_ID_ddebug245, !14, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/tb.c", i32 606, i32 3}
!19 = !{ptr @tb_scan_port.__UNIQUE_ID_ddebug246, !18, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thunderbolt/tb.c", i32 673, i32 3}
!22 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tb_scan_port._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @tb_scan_port._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/tb.c", i32 679, i32 3}
!28 = !{ptr @tb_scan_port._entry.13, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @tb_scan_port._entry_ptr.15, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/thunderbolt/tb.c", i32 691, i32 3}
!32 = !{ptr @tb_scan_port._entry.16, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @tb_scan_port._entry_ptr.18, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @tb_queue_hotplug.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/thunderbolt/tb.c", i32 66, i32 2}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/thunderbolt/tb.c", i32 1203, i32 3}
!39 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @tb_handle_hotplug._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @tb_handle_hotplug._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.23, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/thunderbolt/tb.c", i32 1209, i32 3}
!44 = !{ptr @tb_handle_hotplug._entry.22, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tb_handle_hotplug._entry_ptr.24, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.25, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/thunderbolt/tb.c", i32 1216, i32 3}
!48 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug261, !47, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thunderbolt/tb.c", i32 1227, i32 4}
!51 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug262, !50, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/thunderbolt/tb.c", i32 1243, i32 4}
!54 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug263, !53, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/thunderbolt/tb.c", i32 1260, i32 4}
!57 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug264, !56, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/thunderbolt/tb.c", i32 1264, i32 3}
!60 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug265, !59, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thunderbolt/tb.c", i32 1267, i32 4}
!63 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug266, !62, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/thunderbolt/tb.c", i32 1270, i32 5}
!66 = !{ptr @tb_handle_hotplug.__UNIQUE_ID_ddebug267, !65, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/thunderbolt/tb.c", i32 431, i32 2}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug241, !68, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/thunderbolt/tb.c", i32 440, i32 3}
!73 = !{ptr @tb_reclaim_usb3_bandwidth._entry, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @tb_reclaim_usb3_bandwidth._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/thunderbolt/tb.c", i32 444, i32 2}
!77 = !{ptr @tb_reclaim_usb3_bandwidth.__UNIQUE_ID_ddebug242, !76, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/thunderbolt/tb.h", i32 538, i32 6}
!80 = !{ptr @.str.37, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/thunderbolt/tb.c", i32 326, i32 2}
!82 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @tb_available_bandwidth.__UNIQUE_ID_ddebug239, !81, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!84 = !{ptr @.str.39, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/thunderbolt/tb.c", i32 363, i32 3}
!86 = !{ptr @tb_available_bandwidth.__UNIQUE_ID_ddebug240, !85, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/thunderbolt/tb.c", i32 102, i32 4}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @tb_remove_dp_resources.__UNIQUE_ID_ddebug238, !88, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!91 = !{ptr @.str.42, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/thunderbolt/tb.c", i32 876, i32 3}
!93 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!94 = distinct !{null, !92, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!95 = !{ptr @.str.44, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/thunderbolt/tb.c", i32 884, i32 2}
!97 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug250, !96, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/thunderbolt/tb.c", i32 893, i32 4}
!100 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug251, !99, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/thunderbolt/tb.c", i32 897, i32 3}
!103 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug252, !102, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!104 = !{ptr @.str.47, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/thunderbolt/tb.c", i32 907, i32 3}
!106 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug253, !105, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/thunderbolt/tb.c", i32 911, i32 3}
!109 = distinct !{null, !108, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/thunderbolt/tb.c", i32 927, i32 3}
!112 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug255, !111, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/thunderbolt/tb.c", i32 934, i32 3}
!115 = !{ptr @tb_tunnel_dp._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @tb_tunnel_dp._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/thunderbolt/tb.c", i32 943, i32 2}
!119 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug256, !118, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!120 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/thunderbolt/tb.c", i32 948, i32 3}
!122 = !{ptr @tb_tunnel_dp.__UNIQUE_ID_ddebug257, !121, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/thunderbolt/tb.c", i32 953, i32 3}
!125 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @tb_tunnel_dp._entry.53, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @tb_tunnel_dp._entry_ptr.56, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.57, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/thunderbolt/tb.c", i32 844, i32 4}
!130 = !{ptr @tb_find_dp_out.__UNIQUE_ID_ddebug247, !129, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/thunderbolt/tb.c", i32 848, i32 3}
!133 = !{ptr @tb_find_dp_out.__UNIQUE_ID_ddebug248, !132, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!134 = !{ptr @.str.59, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/thunderbolt/tb.c", i32 980, i32 3}
!136 = !{ptr @.str.60, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @tb_dp_resource_unavailable.__UNIQUE_ID_ddebug258, !135, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!138 = !{ptr @tb_dp_resource_unavailable.__UNIQUE_ID_ddebug259, !139, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!139 = !{!"../drivers/thunderbolt/tb.c", i32 984, i32 3}
!140 = !{ptr @.str.61, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/thunderbolt/tb.c", i32 1013, i32 2}
!142 = !{ptr @.str.62, !141, !"<string literal>", i1 false, i1 false}
!143 = !{ptr @tb_dp_resource_available.__UNIQUE_ID_ddebug260, !141, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!144 = !{ptr @.str.63, !141, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @.str.65, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/thunderbolt/tb.c", i32 459, i32 3}
!148 = distinct !{null, !147, !"<string literal>", i1 false, i1 false}
!149 = distinct !{null, !147, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!150 = !{ptr @.str.67, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/thunderbolt/tb.c", i32 501, i32 2}
!152 = !{ptr @tb_tunnel_usb3.__UNIQUE_ID_ddebug244, !151, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/thunderbolt/tb.c", i32 512, i32 3}
!155 = !{ptr @tb_tunnel_usb3._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @tb_tunnel_usb3._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/thunderbolt/tb.c", i32 85, i32 3}
!159 = !{ptr @.str.70, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @tb_add_dp_resources.__UNIQUE_ID_ddebug237, !158, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/thunderbolt/tb.c", i32 1417, i32 2}
!163 = !{ptr @.str.72, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @tb_suspend_noirq.__UNIQUE_ID_ddebug268, !162, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/thunderbolt/tb.c", i32 1421, i32 2}
!167 = !{ptr @tb_suspend_noirq.__UNIQUE_ID_ddebug269, !166, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/thunderbolt/tb.c", i32 1467, i32 2}
!170 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @tb_resume_noirq.__UNIQUE_ID_ddebug270, !169, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/thunderbolt/tb.c", i32 1506, i32 3}
!174 = !{ptr @tb_resume_noirq.__UNIQUE_ID_ddebug271, !173, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!175 = !{ptr @.str.77, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/thunderbolt/tb.c", i32 1511, i32 2}
!177 = !{ptr @tb_resume_noirq.__UNIQUE_ID_ddebug272, !176, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/thunderbolt/tb.c", i32 1435, i32 3}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @tb_restore_children._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @tb_restore_children._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.81, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/thunderbolt/tb.c", i32 1443, i32 3}
!185 = !{ptr @tb_restore_children._entry.80, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @tb_restore_children._entry_ptr.82, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/thunderbolt/tb.c", i32 1302, i32 3}
!189 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @tb_handle_event._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @tb_handle_event._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.86, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/thunderbolt/tb.c", i32 1309, i32 3}
!194 = !{ptr @tb_handle_event._entry.85, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tb_handle_event._entry_ptr.87, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.88, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/thunderbolt/tb.c", i32 1089, i32 3}
!198 = !{ptr @.str.89, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @tb_tunnel_pci._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @tb_tunnel_pci._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/thunderbolt/tb.c", i32 1100, i32 3}
!203 = !{ptr @tb_tunnel_pci._entry.90, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @tb_tunnel_pci._entry_ptr.92, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/thunderbolt/tb.c", i32 1128, i32 3}
!207 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @tb_approve_xdomain_paths._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @tb_approve_xdomain_paths._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{i32 1, !"wchar_size", i32 2}
!211 = !{i32 1, !"min_enum_size", i32 4}
!212 = !{i32 8, !"branch-target-enforcement", i32 0}
!213 = !{i32 8, !"sign-return-address", i32 0}
!214 = !{i32 8, !"sign-return-address-all", i32 0}
!215 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!216 = !{i32 7, !"uwtable", i32 1}
!217 = !{i32 7, !"frame-pointer", i32 2}
!218 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!219 = !{i64 2148241948, i64 2148241953, i64 2148241966, i64 2148242010, i64 2148242044, i64 2148242065}
!220 = !{!"branch_weights", i32 1, i32 2000}
!221 = !{!"branch_weights", i32 2000, i32 1}
!222 = !{i8 0, i8 2}
!223 = !{!"auto-init"}
