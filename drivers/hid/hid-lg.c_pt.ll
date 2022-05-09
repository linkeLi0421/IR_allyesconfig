; ModuleID = '/llk/IR_all_yes/drivers/hid/hid-lg.c_pt.bc'
source_filename = "../drivers/hid/hid-lg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hid_driver = type { ptr, ptr, %struct.list_head, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.56 }
%union.anon.56 = type { ptr }
%struct.hid_device_id = type { i16, i16, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.hid_ll_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.hid_device = type { ptr, i32, ptr, i32, ptr, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, [3 x %struct.hid_report_enum], %struct.work_struct, %struct.semaphore, %struct.device, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, i32, i32, i32, i32, i8, i64, i32, i32, i32, i8, %struct.list_head, ptr, ptr, [128 x i8], [64 x i8], [64 x i8], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.wait_queue_head }
%struct.hid_report_enum = type { i32, %struct.list_head, [256 x ptr] }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.semaphore = type { %struct.raw_spinlock, i32, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.usb_interface_descriptor = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.hid_usage = type { i32, i32, i32, i8, i8, i16, i8, i8, i8, i8, i16 }
%struct.hid_field = type { i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i16 }
%struct.hid_input = type { %struct.list_head, ptr, ptr, ptr, i8, %struct.list_head, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }

@__initcall__kmod_hid_logitech__232_937_lg_driver_init6 = internal global ptr @lg_driver_init, section ".initcall6.init", align 4
@lg_driver = internal global { %struct.hid_driver, [56 x i8] } { %struct.hid_driver { ptr @.str.1, ptr @lg_devices, %struct.list_head zeroinitializer, %struct.spinlock zeroinitializer, ptr null, ptr @lg_probe, ptr @lg_remove, ptr null, ptr @lg_raw_event, ptr null, ptr @lg_event, ptr null, ptr @lg_report_fixup, ptr @lg_input_mapping, ptr @lg_input_mapped, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lg_driver_exit = internal global ptr @lg_driver_exit, section ".exitcall.exit", align 4
@lg4ff_no_autoswitch = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_str_lg4ff_no_autoswitch = internal constant [33 x i8] c"hid_logitech.lg4ff_no_autoswitch\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_lg4ff_no_autoswitch = internal constant %struct.kernel_param { ptr @__param_str_lg4ff_no_autoswitch, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.56 { ptr @lg4ff_no_autoswitch } }, section "__param", align 4
@__UNIQUE_ID_lg4ff_no_autoswitchtype233 = internal constant [46 x i8] c"hid_logitech.parmtype=lg4ff_no_autoswitch:int\00", section ".modinfo", align 1
@__UNIQUE_ID_lg4ff_no_autoswitch234 = internal constant [104 x i8] c"hid_logitech.parm=lg4ff_no_autoswitch:Do not switch multimode wheels to their native mode automatically\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [43 x i8] c"hid_logitech.file=drivers/hid/hid-logitech\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [25 x i8] c"hid_logitech.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hid_logitech\00", [19 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"logitech\00", [23 x i8] zeroinitializer }, align 32
@lg_devices = internal constant { [29 x %struct.hid_device_id], [112 x i8] } { [29 x %struct.hid_device_id] [%struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50444, i32 65 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49409, i32 2 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50948, i32 4 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49930, i32 48 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50450, i32 48 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49685, i32 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49686, i32 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49812, i32 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49674, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49681, i32 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49689, i32 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49743, i32 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49795, i32 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49798, i32 512 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49813, i32 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51715, i32 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 51716, i32 1024 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49817, i32 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49818, i32 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49819, i32 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49816, i32 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49820, i32 8192 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49678, i32 256 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49811, i32 8448 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49688, i32 1280 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 49799, i32 4096 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50726, i32 2048 }, %struct.hid_device_id { i16 3, i16 0, i32 1133, i32 50723, i32 2048 }, %struct.hid_device_id zeroinitializer], [112 x i8] zeroinitializer }, align 32
@hid_debug = external dso_local local_unnamed_addr global i32, align 4
@lg_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 767, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017%s: %s: ignoring ifnum %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lg_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"drivers/hid/hid-lg.c\00", [43 x i8] zeroinitializer }, align 32
@lg_probe._entry_ptr = internal global ptr @lg_probe._entry, section ".printk_index", align 4
@lg_probe._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 773, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Insufficient memory, cannot allocate driver data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lg_probe._entry_ptr.9 = internal global ptr @lg_probe._entry.5, section ".printk_index", align 4
@lg_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 785, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parse failed\0A\00", [18 x i8] zeroinitializer }, align 32
@lg_probe._entry_ptr.12 = internal global ptr @lg_probe._entry.10, section ".printk_index", align 4
@lg_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 794, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"hw start failed\0A\00", [47 x i8] zeroinitializer }, align 32
@lg_probe._entry_ptr.15 = internal global ptr @lg_probe._entry.13, section ".printk_index", align 4
@lg_probe.cbuf = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\00\AF\01\00\00\00\00\00\00", [23 x i8] zeroinitializer }, align 32
@lg_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"&wait\00", [26 x i8] zeroinitializer }, align 32
@usb_hid_driver = external dso_local global %struct.hid_ll_driver, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@lg_report_fixup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.4, i32 438, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"fixing up Logitech keyboard report descriptor\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"lg_report_fixup\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr = internal global ptr @lg_report_fixup._entry, section ".printk_index", align 4
@lg_report_fixup._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.18, ptr @.str.4, i32 446, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"fixing up rel/abs in Logitech report descriptor\0A\00", [47 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.22 = internal global ptr @lg_report_fixup._entry.20, section ".printk_index", align 4
@lg_report_fixup._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.18, ptr @.str.4, i32 455, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"fixing up Logitech Wingman Formula GP report descriptor\0A\00", [39 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.25 = internal global ptr @lg_report_fixup._entry.23, section ".printk_index", align 4
@fg_rdesc_fixed = internal global { [79 x i8], [49 x i8] } { [79 x i8] c"\05\01\09\04\A1\01\A1\02\15\00&\FF\005\00F\FF\00u\08\95\01\090\81\02\A4%\01E\01u\01\95\02\81\01\95\06\05\09\19\01)\06\81\02\05\01\B4\81\02\091\81\02\092\81\02\C0\A1\02&\FF\00F\FF\00u\08\95\04\09\02\B1\02\C0\C0", [49 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.18, ptr @.str.4, i32 460, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"rdesc size test failed for formula gp\0A\00", [57 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.28 = internal global ptr @lg_report_fixup._entry.26, section ".printk_index", align 4
@lg_report_fixup._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.18, ptr @.str.4, i32 468, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"fixing up Logitech Wingman Formula Force GP report descriptor\0A\00", [33 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.31 = internal global ptr @lg_report_fixup._entry.29, section ".printk_index", align 4
@ffg_rdesc_fixed = internal global { [89 x i8], [39 x i8] } { [89 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\06u\01%\01E\01\05\09\19\01)\06\81\02\95\01u\08&\FF\00F\FF\00\06\00\FF\09\01\81\02\05\01\81\01\091\81\02\092\81\02\06\00\FF\09\01\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", [39 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.18, ptr @.str.4, i32 478, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"fixing up Logitech Driving Force report descriptor\0A\00", [44 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.34 = internal global ptr @lg_report_fixup._entry.32, section ".printk_index", align 4
@df_rdesc_fixed = internal global { [132 x i8], [60 x i8] } { [132 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\14&\FF\034F\FF\03\090\81\02\95\0Cu\01%\01E\01\05\09\19\01)\0C\81\02\95\02\06\00\FF\09\01\81\02\05\01&\FF\00F\FF\00\95\01u\08\81\02%\07F;\01u\04e\14\099\81Bu\01\95\04e\00\06\00\FF\09\01%\01E\01\81\02\05\01\95\01u\08&\FF\00F\FF\00\091\81\02\095\81\02\C0\A1\02&\FF\00F\FF\00\95\07u\08\09\03\91\02\C0\C0", [60 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.18, ptr @.str.4, i32 487, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"fixing up Logitech Momo Force (Red) report descriptor\0A\00", [41 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.37 = internal global ptr @lg_report_fixup._entry.35, section ".printk_index", align 4
@momo_rdesc_fixed = internal global { [89 x i8], [39 x i8] } { [89 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\08u\01%\01E\01\05\09\19\01)\08\81\02\06\00\FFu\0E\95\01&\FF\00F\FF\00\09\00\81\02\05\01u\08\091\81\02\092\81\02\06\00\FF\09\01\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", [39 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.18, ptr @.str.4, i32 496, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"fixing up Logitech Momo Racing Force (Black) report descriptor\0A\00", [32 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.40 = internal global ptr @lg_report_fixup._entry.38, section ".printk_index", align 4
@momo2_rdesc_fixed = internal global { [93 x i8], [35 x i8] } { [93 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\0Au\01%\01E\01\05\09\19\01)\0A\81\02\06\00\FF\09\00\95\04\81\02\95\01u\08&\FF\00F\FF\00\09\01\81\02\05\01\091\81\02\092\81\02\06\00\FF\09\00\81\02\C0\A1\02\09\02\95\07\91\02\C0\C0", [35 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.18, ptr @.str.4, i32 505, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"fixing up Logitech Formula Vibration report descriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.43 = internal global ptr @lg_report_fixup._entry.41, section ".printk_index", align 4
@fv_rdesc_fixed = internal global { [136 x i8], [56 x i8] } { [136 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0A\15\00&\FF\035\00F\FF\03\090\81\02\95\0Cu\01%\01E\01\05\09\19\01)\0C\81\02\95\02\06\00\FF\09\01\81\02\09\02&\FF\00F\FF\00\95\01u\08\81\02\05\01%\07F;\01u\04e\14\099\81Bu\01\95\04e\00\06\00\FF\09\01%\01E\01\81\02\05\01\95\01u\08&\FF\00F\FF\00\091\81\02\092\81\02\C0\A1\02&\FF\00F\FF\00\95\07u\08\09\03\91\02\C0\C0", [56 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.18, ptr @.str.4, i32 514, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"fixing up Logitech Driving Force Pro report descriptor\0A\00", [40 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.46 = internal global ptr @lg_report_fixup._entry.44, section ".printk_index", align 4
@dfp_rdesc_fixed = internal global { [90 x i8], [38 x i8] } { [90 x i8] c"\05\01\09\04\A1\01\A1\02\95\01u\0E\14&\FF?4F\FF?\090\81\02\95\0Eu\01%\01E\01\05\09\19\01)\0E\81\02\05\01\95\01u\04%\07F;\01e\14\099\81Be\00&\FF\00F\FF\00u\08\81\01\091\81\02\095\81\02\81\01\C0\A1\02\09\02\95\07\91\02\C0\C0", [38 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.18, ptr @.str.4, i32 523, ptr @.str.19, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"fixing up Logitech Speed Force Wireless report descriptor\0A\00", [37 x i8] zeroinitializer }, align 32
@lg_report_fixup._entry_ptr.49 = internal global ptr @lg_report_fixup._entry.47, section ".printk_index", align 4
@lg_input_mapping.e_keymap = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\00\D8\00\D5\AF\9C\00\00\00\00\90\00\00\00\00\00\00\00\00\D4\AE\A7\98\A1p\00\00\00\9A\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\00\00\00", [48 x i8] zeroinitializer }, align 32
@__func__.hid_map_usage = private unnamed_addr constant [14 x i8] c"hid_map_usage\00", align 1
@hid_map_usage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @__func__.hid_map_usage, ptr @.str.52, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: Invalid code %d type %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"include/linux/hid.h\00", [44 x i8] zeroinitializer }, align 32
@hid_map_usage._entry_ptr = internal global ptr @hid_map_usage._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [10 x i64] [i64 8, i64 32, i64 49678, i64 49811, i64 49812, i64 49813, i64 49816, i64 49820, i64 51715, i64 51716]
@__sancov_gen_cov_switch_values.53 = internal global [19 x i64] [i64 17, i64 16, i64 4, i64 13, i64 36, i64 37, i64 38, i64 49, i64 50, i64 51, i64 71, i64 72, i64 73, i64 74, i64 75, i64 76, i64 77, i64 81, i64 82]
@__sancov_gen_cov_switch_values.54 = internal global [45 x i64] [i64 43, i64 16, i64 4097, i64 4099, i64 4100, i64 4101, i64 4106, i64 4111, i64 4112, i64 4113, i64 4114, i64 4115, i64 4116, i64 4117, i64 4118, i64 4119, i64 4120, i64 4121, i64 4122, i64 4123, i64 4124, i64 4127, i64 4128, i64 4129, i64 4131, i64 4135, i64 4136, i64 4137, i64 4138, i64 4139, i64 4141, i64 4145, i64 4146, i64 4161, i64 4162, i64 4163, i64 4164, i64 4165, i64 4166, i64 4167, i64 4168, i64 4169, i64 4170, i64 4171, i64 4172]
@__sancov_gen_cov_switch_values.55 = internal global [6 x i64] [i64 4, i64 16, i64 0, i64 1, i64 2, i64 5]
@__sancov_gen_cov_switch_values.56 = internal global [14 x i64] [i64 12, i64 32, i64 49678, i64 49743, i64 49811, i64 49812, i64 49813, i64 49816, i64 49817, i64 49818, i64 49819, i64 49820, i64 51715, i64 51716]
@___asan_gen_.57 = private unnamed_addr constant [10 x i8] c"lg_driver\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 926, i32 26 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"lg4ff_no_autoswitch\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 940, i32 5 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 937, i32 1 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 927, i32 10 }
@___asan_gen_.69 = private unnamed_addr constant [11 x i8] c"lg_devices\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 859, i32 35 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 767, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 773, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 785, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 794, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant [5 x i8] c"cbuf\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 800, i32 30 }
@___asan_gen_.111 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 815, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 437, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 445, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 454, i32 4 }
@___asan_gen_.141 = private unnamed_addr constant [15 x i8] c"fg_rdesc_fixed\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 382, i32 13 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 459, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 467, i32 4 }
@___asan_gen_.156 = private unnamed_addr constant [16 x i8] c"ffg_rdesc_fixed\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 336, i32 13 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 477, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"df_rdesc_fixed\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 61, i32 13 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 486, i32 4 }
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"momo_rdesc_fixed\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 242, i32 13 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 495, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [18 x i8] c"momo2_rdesc_fixed\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 288, i32 13 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 504, i32 4 }
@___asan_gen_.192 = private unnamed_addr constant [15 x i8] c"fv_rdesc_fixed\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 175, i32 13 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 513, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant [16 x i8] c"dfp_rdesc_fixed\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 127, i32 13 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 523, i32 4 }
@___asan_gen_.210 = private unnamed_addr constant [9 x i8] c"e_keymap\00", align 1
@___asan_gen_.211 = private constant [24 x i8] c"../drivers/hid/hid-lg.c\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.211, i32 638, i32 18 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"../include/linux/hid.h\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.220, i32 1036, i32 3 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_lg4ff_no_autoswitch234, ptr @__UNIQUE_ID_lg4ff_no_autoswitchtype233, ptr @__UNIQUE_ID_license236, ptr @__exitcall_lg_driver_exit, ptr @__initcall__kmod_hid_logitech__232_937_lg_driver_init6, ptr @__param_lg4ff_no_autoswitch, ptr @hid_map_usage._entry, ptr @hid_map_usage._entry_ptr, ptr @lg_driver_exit, ptr @lg_probe._entry, ptr @lg_probe._entry.10, ptr @lg_probe._entry.13, ptr @lg_probe._entry.5, ptr @lg_probe._entry_ptr, ptr @lg_probe._entry_ptr.12, ptr @lg_probe._entry_ptr.15, ptr @lg_probe._entry_ptr.9, ptr @lg_report_fixup._entry, ptr @lg_report_fixup._entry.20, ptr @lg_report_fixup._entry.23, ptr @lg_report_fixup._entry.26, ptr @lg_report_fixup._entry.29, ptr @lg_report_fixup._entry.32, ptr @lg_report_fixup._entry.35, ptr @lg_report_fixup._entry.38, ptr @lg_report_fixup._entry.41, ptr @lg_report_fixup._entry.44, ptr @lg_report_fixup._entry.47, ptr @lg_report_fixup._entry_ptr, ptr @lg_report_fixup._entry_ptr.22, ptr @lg_report_fixup._entry_ptr.25, ptr @lg_report_fixup._entry_ptr.28, ptr @lg_report_fixup._entry_ptr.31, ptr @lg_report_fixup._entry_ptr.34, ptr @lg_report_fixup._entry_ptr.37, ptr @lg_report_fixup._entry_ptr.40, ptr @lg_report_fixup._entry_ptr.43, ptr @lg_report_fixup._entry_ptr.46, ptr @lg_report_fixup._entry_ptr.49, ptr @lg_driver, ptr @lg4ff_no_autoswitch, ptr @.str, ptr @.str.1, ptr @lg_devices, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @lg_probe.cbuf, ptr @lg_probe.__key, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @fg_rdesc_fixed, ptr @.str.27, ptr @.str.30, ptr @ffg_rdesc_fixed, ptr @.str.33, ptr @df_rdesc_fixed, ptr @.str.36, ptr @momo_rdesc_fixed, ptr @.str.39, ptr @momo2_rdesc_fixed, ptr @.str.42, ptr @fv_rdesc_fixed, ptr @.str.45, ptr @dfp_rdesc_fixed, ptr @.str.48, ptr @lg_input_mapping.e_keymap, ptr @.str.51, ptr @.str.52], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_driver to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4ff_no_autoswitch to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_devices to i32), i32 464, i32 576, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_probe._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_probe.cbuf to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fg_rdesc_fixed to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ffg_rdesc_fixed to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @df_rdesc_fixed to i32), i32 132, i32 192, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @momo_rdesc_fixed to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @momo2_rdesc_fixed to i32), i32 93, i32 128, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fv_rdesc_fixed to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dfp_rdesc_fixed to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_report_fixup._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg_input_mapping.e_keymap to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hid_map_usage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__hid_register_driver(ptr noundef nonnull @lg_driver, ptr noundef null, ptr noundef nonnull @.str) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lg_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @hid_unregister_driver(ptr noundef nonnull @lg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__hid_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_probe(ptr noundef %hdev, ptr nocapture noundef readonly %id) #2 align 64 {
entry:
  %wait = alloca %struct.wait_queue_head, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ll_driver.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 20
  %0 = ptrtoint ptr %ll_driver.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ll_driver.i.i, align 4
  %cmp.i.i = icmp eq ptr %1, @usb_hid_driver
  br i1 %cmp.i.i, label %if.end, label %entry.cleanup148_crit_edge

entry.cleanup148_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %2 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 49743, i32 %3)
  %cmp = icmp eq i32 %3, 49743
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %parent = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %cur_altsetting = getelementptr i8, ptr %5, i32 -28
  %6 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cur_altsetting, align 4
  %bInterfaceNumber = getelementptr inbounds %struct.usb_interface_descriptor, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %bInterfaceNumber to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bInterfaceNumber, align 2
  %conv = zext i8 %9 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp1.not = icmp eq i8 %9, 0
  br i1 %cmp1.not, label %land.lhs.true.if.end12_crit_edge, label %do.body

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

do.body:                                          ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @hid_debug to i32))
  %10 = load i32, ptr @hid_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.cleanup148_crit_edge, label %do.end

do.body.cleanup148_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %conv) #9
  br label %cleanup148

if.end12:                                         ; preds = %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 8) #10
  %tobool14.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6) #9
  br label %cleanup148

if.end20:                                         ; preds = %if.end12
  %driver_data = getelementptr inbounds %struct.hid_device_id, ptr %id, i32 0, i32 4
  %12 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %driver_data, align 4
  %14 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %call7.i.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %and = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.end20.if.end25_crit_edge, label %if.then23

if.end20.if.end25_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %quirks24 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 34
  %16 = ptrtoint ptr %quirks24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %quirks24, align 8
  %or = or i32 %17, 8
  store i32 %or, ptr %quirks24, align 8
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end20.if.end25_crit_edge
  %call.i = tail call i32 @hid_open_report(ptr noundef %hdev) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not = icmp eq i32 %call.i, 0
  br i1 %tobool27.not, label %if.end33, label %do.end31

do.end31:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #9
  br label %err_free

if.end33:                                         ; preds = %if.end25
  %18 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %call7.i.i, align 8
  %and35 = and i32 %19, 13824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  %spec.select = select i1 %tobool36.not, i32 45, i32 13
  %call40 = tail call i32 @hid_hw_start(ptr noundef %hdev, i32 noundef %spec.select) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #9
  br label %err_free

if.end47:                                         ; preds = %if.end33
  %20 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 49820, i32 %21)
  %cmp49 = icmp eq i32 %21, 49820
  br i1 %cmp49, label %if.then51, label %if.end47.if.end118_crit_edge

if.end47.if.end118_crit_edge:                     ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

if.then51:                                        ; preds = %if.end47
  %call52 = tail call ptr @kmemdup(ptr noundef nonnull @lg_probe.cbuf, i32 noundef 9, i32 noundef 3264) #6
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.then51.err_stop_crit_edge, label %if.end55

if.then51.err_stop_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_stop

if.end55:                                         ; preds = %if.then51
  %22 = ptrtoint ptr %call52 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %call52, align 1
  %call56 = tail call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %23, ptr noundef nonnull %call52, i32 noundef 9, i8 noundef zeroext 2, i32 noundef 9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call56)
  %cmp57 = icmp sgt i32 %call56, -1
  br i1 %cmp57, label %if.then59, label %if.end55.cleanup115.thread_crit_edge

if.end55.cleanup115.thread_crit_edge:             ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup115.thread

if.then59:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %wait) #6
  %24 = call ptr @memset(ptr %wait, i32 255, i32 52)
  call void @__init_waitqueue_head(ptr noundef nonnull %wait, ptr noundef nonnull @.str.16, ptr noundef nonnull @lg_probe.__key) #6
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 817) #6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #6
  %25 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #6
  %call84209 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  br label %if.end102

if.end102:                                        ; preds = %cleanup.if.end102_crit_edge, %if.then59
  %call84211 = phi i32 [ %call84209, %if.then59 ], [ %call84, %cleanup.if.end102_crit_edge ]
  %__ret82.0210 = phi i32 [ 4, %if.then59 ], [ %call106, %cleanup.if.end102_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84211)
  %tobool103.not = icmp eq i32 %call84211, 0
  br i1 %tobool103.not, label %cleanup, label %if.end102.__out_crit_edge

if.end102.__out_crit_edge:                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %__out

cleanup:                                          ; preds = %if.end102
  %call106 = call i32 @schedule_timeout(i32 noundef %__ret82.0210) #6
  %call84 = call i32 @prepare_to_wait_event(ptr noundef nonnull %wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #6
  %tobool96.not = icmp eq i32 %call106, 0
  br i1 %tobool96.not, label %for.end, label %cleanup.if.end102_crit_edge

cleanup.if.end102_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  call void @finish_wait(ptr noundef nonnull %wait, ptr noundef nonnull %__wq_entry) #6
  br label %__out

__out:                                            ; preds = %for.end, %if.end102.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #6
  %arrayidx110 = getelementptr i8, ptr %call52, i32 1
  %26 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 -78, ptr %arrayidx110, align 1
  %arrayidx111 = getelementptr i8, ptr %call52, i32 2
  call void @get_random_bytes(ptr noundef %arrayidx111, i32 noundef 2) #6
  %27 = ptrtoint ptr %call52 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %call52, align 1
  %call113 = call i32 @hid_hw_raw_request(ptr noundef %hdev, i8 noundef zeroext %28, ptr noundef nonnull %call52, i32 noundef 9, i8 noundef zeroext 2, i32 noundef 9) #6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %wait) #6
  br label %cleanup115.thread

cleanup115.thread:                                ; preds = %__out, %if.end55.cleanup115.thread_crit_edge
  %ret.0 = phi i32 [ %call113, %__out ], [ %call56, %if.end55.cleanup115.thread_crit_edge ]
  call void @kfree(ptr noundef nonnull %call52) #6
  br label %if.end118

if.end118:                                        ; preds = %cleanup115.thread, %if.end47.if.end118_crit_edge
  %ret.2 = phi i32 [ 0, %if.end47.if.end118_crit_edge ], [ %ret.0, %cleanup115.thread ]
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i, align 8
  %and120 = and i32 %30, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and120)
  %tobool121.not = icmp eq i32 %and120, 0
  br i1 %tobool121.not, label %if.else, label %if.then122

if.then122:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  %call123 = call i32 @lgff_init(ptr noundef %hdev) #6
  br label %if.end144

if.else:                                          ; preds = %if.end118
  %and125 = and i32 %30, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and125)
  %tobool126.not = icmp eq i32 %and125, 0
  br i1 %tobool126.not, label %if.else129, label %if.then127

if.then127:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call128 = call i32 @lg2ff_init(ptr noundef %hdev) #6
  br label %if.end144

if.else129:                                       ; preds = %if.else
  %and131 = and i32 %30, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131)
  %tobool132.not = icmp eq i32 %and131, 0
  br i1 %tobool132.not, label %if.else135, label %if.then133

if.then133:                                       ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #8
  %call134 = call i32 @lg3ff_init(ptr noundef %hdev) #6
  br label %if.end144

if.else135:                                       ; preds = %if.else129
  %and137 = and i32 %30, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.else135.if.end144_crit_edge, label %if.then139

if.else135.if.end144_crit_edge:                   ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end144

if.then139:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #8
  %call140 = call i32 @lg4ff_init(ptr noundef %hdev) #6
  br label %if.end144

if.end144:                                        ; preds = %if.then139, %if.else135.if.end144_crit_edge, %if.then133, %if.then127, %if.then122
  %ret.3 = phi i32 [ %call123, %if.then122 ], [ %call128, %if.then127 ], [ %call134, %if.then133 ], [ %call140, %if.then139 ], [ %ret.2, %if.else135.if.end144_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.3)
  %tobool145.not = icmp eq i32 %ret.3, 0
  br i1 %tobool145.not, label %if.end144.cleanup148_crit_edge, label %if.end144.err_stop_crit_edge

if.end144.err_stop_crit_edge:                     ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_stop

if.end144.cleanup148_crit_edge:                   ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup148

err_stop:                                         ; preds = %if.end144.err_stop_crit_edge, %if.then51.err_stop_crit_edge
  %ret.4 = phi i32 [ %ret.3, %if.end144.err_stop_crit_edge ], [ -12, %if.then51.err_stop_crit_edge ]
  call void @hid_hw_stop(ptr noundef %hdev) #6
  br label %err_free

err_free:                                         ; preds = %err_stop, %do.end45, %do.end31
  %ret.5 = phi i32 [ %call.i, %do.end31 ], [ %call40, %do.end45 ], [ %ret.4, %err_stop ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup148

cleanup148:                                       ; preds = %err_free, %if.end144.cleanup148_crit_edge, %do.end18, %do.end, %do.body.cleanup148_crit_edge, %entry.cleanup148_crit_edge
  %retval.0 = phi i32 [ %ret.5, %err_free ], [ -12, %do.end18 ], [ -22, %entry.cleanup148_crit_edge ], [ -19, %do.end ], [ -19, %do.body.cleanup148_crit_edge ], [ 0, %if.end144.cleanup148_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lg_remove(ptr noundef %hdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @lg4ff_deinit(ptr noundef %hdev) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @hid_hw_stop(ptr noundef %hdev) #6
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %rd, i32 noundef %size) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @lg4ff_raw_event(ptr noundef %hdev, ptr noundef %report, ptr noundef %rd, i32 noundef %size, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_event(ptr noundef %hdev, ptr noundef %field, ptr noundef %usage, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %code, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %5)
  %cmp = icmp eq i16 %5, 6
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %hidinput = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 19
  %6 = ptrtoint ptr %hidinput to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hidinput, align 4
  %input = getelementptr inbounds %struct.hid_input, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input, align 4
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %10 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %type, align 4
  %conv2 = zext i8 %11 to i32
  %sub = sub i32 0, %value
  tail call void @input_event(ptr noundef %9, i32 noundef %conv2, i32 noundef 6, i32 noundef %sub) #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %and6 = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.then8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 @lg4ff_adjust_input_event(ptr noundef %hdev, ptr noundef %field, ptr noundef %usage, i32 noundef %value, ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ %call9, %if.then8 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @lg_report_fixup(ptr noundef %hdev, ptr noundef %rdesc, ptr nocapture noundef %rsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 90, i32 %5)
  %cmp = icmp ugt i32 %5, 90
  br i1 %cmp, label %land.lhs.true1, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true1:                                   ; preds = %land.lhs.true
  %arrayidx = getelementptr i8, ptr %rdesc, i32 83
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 38, i8 %7)
  %cmp2 = icmp eq i8 %7, 38
  br i1 %cmp2, label %land.lhs.true4, label %land.lhs.true1.if.end_crit_edge

land.lhs.true1.if.end_crit_edge:                  ; preds = %land.lhs.true1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true4:                                   ; preds = %land.lhs.true1
  %arrayidx5 = getelementptr i8, ptr %rdesc, i32 84
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -116, i8 %9)
  %cmp7 = icmp eq i8 %9, -116
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true4.if.end_crit_edge

land.lhs.true4.if.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true4
  %arrayidx10 = getelementptr i8, ptr %rdesc, i32 85
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %11)
  %cmp12 = icmp eq i8 %11, 2
  br i1 %cmp12, label %do.end, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17) #9
  %arrayidx14 = getelementptr i8, ptr %rdesc, i32 89
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 77, ptr %arrayidx14, align 1
  %13 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 77, ptr %arrayidx5, align 1
  %arrayidx16 = getelementptr i8, ptr %rdesc, i32 90
  %14 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 16, ptr %arrayidx16, align 1
  %15 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 16, ptr %arrayidx10, align 1
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true9.if.end_crit_edge, %land.lhs.true4.if.end_crit_edge, %land.lhs.true1.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %1, align 4
  %and19 = and i32 %17, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end.if.end51_crit_edge, label %land.lhs.true21

if.end.if.end51_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true21:                                  ; preds = %if.end
  %18 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 50, i32 %19)
  %cmp22 = icmp ugt i32 %19, 50
  br i1 %cmp22, label %land.lhs.true24, label %land.lhs.true21.if.end51_crit_edge

land.lhs.true21.if.end51_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true24:                                  ; preds = %land.lhs.true21
  %arrayidx25 = getelementptr i8, ptr %rdesc, i32 32
  %20 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %21)
  %cmp27 = icmp eq i8 %21, -127
  br i1 %cmp27, label %land.lhs.true29, label %land.lhs.true24.if.end51_crit_edge

land.lhs.true24.if.end51_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %arrayidx30 = getelementptr i8, ptr %rdesc, i32 33
  %22 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %23)
  %cmp32 = icmp eq i8 %23, 6
  br i1 %cmp32, label %land.lhs.true34, label %land.lhs.true29.if.end51_crit_edge

land.lhs.true29.if.end51_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %arrayidx35 = getelementptr i8, ptr %rdesc, i32 49
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -127, i8 %25)
  %cmp37 = icmp eq i8 %25, -127
  br i1 %cmp37, label %land.lhs.true39, label %land.lhs.true34.if.end51_crit_edge

land.lhs.true34.if.end51_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

land.lhs.true39:                                  ; preds = %land.lhs.true34
  %arrayidx40 = getelementptr i8, ptr %rdesc, i32 50
  %26 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx40, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %27)
  %cmp42 = icmp eq i8 %27, 6
  br i1 %cmp42, label %do.end47, label %land.lhs.true39.if.end51_crit_edge

land.lhs.true39.if.end51_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end51

do.end47:                                         ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #8
  %dev48 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev48, ptr noundef nonnull @.str.21) #9
  %28 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 2, ptr %arrayidx40, align 1
  %29 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %arrayidx30, align 1
  br label %if.end51

if.end51:                                         ; preds = %do.end47, %land.lhs.true39.if.end51_crit_edge, %land.lhs.true34.if.end51_crit_edge, %land.lhs.true29.if.end51_crit_edge, %land.lhs.true24.if.end51_crit_edge, %land.lhs.true21.if.end51_crit_edge, %if.end.if.end51_crit_edge
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %30 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %product, align 8
  %32 = zext i32 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values)
  switch i32 %31, label %if.end51.sw.epilog_crit_edge [
    i32 49678, label %sw.bb
    i32 49811, label %sw.bb64
    i32 49812, label %sw.bb73
    i32 49813, label %sw.bb82
    i32 51715, label %sw.bb91
    i32 51716, label %sw.bb100
    i32 49816, label %sw.bb109
    i32 49820, label %sw.bb118
  ]

if.end51.sw.epilog_crit_edge:                     ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end51
  %33 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 82, i32 %34)
  %cmp52 = icmp eq i32 %34, 82
  %dev58 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  br i1 %cmp52, label %do.end57, label %do.end61

do.end57:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.24) #9
  %35 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 79, ptr %rsize, align 4
  br label %sw.epilog

do.end61:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev58, ptr noundef nonnull @.str.27) #9
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end51
  %36 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 85, i32 %37)
  %cmp65 = icmp eq i32 %37, 85
  br i1 %cmp65, label %do.end70, label %sw.bb64.sw.epilog_crit_edge

sw.bb64.sw.epilog_crit_edge:                      ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end70:                                         ; preds = %sw.bb64
  call void @__sanitizer_cov_trace_pc() #8
  %dev71 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev71, ptr noundef nonnull @.str.30) #9
  %38 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 89, ptr %rsize, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %if.end51
  %39 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %40)
  %cmp74 = icmp eq i32 %40, 130
  br i1 %cmp74, label %do.end79, label %sw.bb73.sw.epilog_crit_edge

sw.bb73.sw.epilog_crit_edge:                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end79:                                         ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #8
  %dev80 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev80, ptr noundef nonnull @.str.33) #9
  %41 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 132, ptr %rsize, align 4
  br label %sw.epilog

sw.bb82:                                          ; preds = %if.end51
  %42 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %43)
  %cmp83 = icmp eq i32 %43, 87
  br i1 %cmp83, label %do.end88, label %sw.bb82.sw.epilog_crit_edge

sw.bb82.sw.epilog_crit_edge:                      ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end88:                                         ; preds = %sw.bb82
  call void @__sanitizer_cov_trace_pc() #8
  %dev89 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev89, ptr noundef nonnull @.str.36) #9
  %44 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 89, ptr %rsize, align 4
  br label %sw.epilog

sw.bb91:                                          ; preds = %if.end51
  %45 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 87, i32 %46)
  %cmp92 = icmp eq i32 %46, 87
  br i1 %cmp92, label %do.end97, label %sw.bb91.sw.epilog_crit_edge

sw.bb91.sw.epilog_crit_edge:                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end97:                                         ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #8
  %dev98 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev98, ptr noundef nonnull @.str.39) #9
  %47 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 93, ptr %rsize, align 4
  br label %sw.epilog

sw.bb100:                                         ; preds = %if.end51
  %48 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 130, i32 %49)
  %cmp101 = icmp eq i32 %49, 130
  br i1 %cmp101, label %do.end106, label %sw.bb100.sw.epilog_crit_edge

sw.bb100.sw.epilog_crit_edge:                     ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end106:                                        ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #8
  %dev107 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev107, ptr noundef nonnull @.str.42) #9
  %50 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 136, ptr %rsize, align 4
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end51
  %51 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 97, i32 %52)
  %cmp110 = icmp eq i32 %52, 97
  br i1 %cmp110, label %do.end115, label %sw.bb109.sw.epilog_crit_edge

sw.bb109.sw.epilog_crit_edge:                     ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end115:                                        ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #8
  %dev116 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev116, ptr noundef nonnull @.str.45) #9
  %53 = ptrtoint ptr %rsize to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 90, ptr %rsize, align 4
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end51
  %54 = ptrtoint ptr %rsize to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %55)
  %cmp119 = icmp ugt i32 %55, 100
  br i1 %cmp119, label %land.lhs.true121, label %sw.bb118.sw.epilog_crit_edge

sw.bb118.sw.epilog_crit_edge:                     ; preds = %sw.bb118
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true121:                                 ; preds = %sw.bb118
  %arrayidx122 = getelementptr i8, ptr %rdesc, i32 41
  %56 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx122, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -107, i8 %57)
  %cmp124 = icmp eq i8 %57, -107
  br i1 %cmp124, label %land.lhs.true126, label %land.lhs.true121.sw.epilog_crit_edge

land.lhs.true121.sw.epilog_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true126:                                 ; preds = %land.lhs.true121
  %arrayidx127 = getelementptr i8, ptr %rdesc, i32 42
  %58 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx127, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %59)
  %cmp129 = icmp eq i8 %59, 11
  br i1 %cmp129, label %land.lhs.true131, label %land.lhs.true126.sw.epilog_crit_edge

land.lhs.true126.sw.epilog_crit_edge:             ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true131:                                 ; preds = %land.lhs.true126
  %arrayidx132 = getelementptr i8, ptr %rdesc, i32 47
  %60 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %61)
  %cmp134 = icmp eq i8 %61, 5
  br i1 %cmp134, label %land.lhs.true136, label %land.lhs.true131.sw.epilog_crit_edge

land.lhs.true131.sw.epilog_crit_edge:             ; preds = %land.lhs.true131
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true136:                                 ; preds = %land.lhs.true131
  %arrayidx137 = getelementptr i8, ptr %rdesc, i32 48
  %62 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx137, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %63)
  %cmp139 = icmp eq i8 %63, 9
  br i1 %cmp139, label %do.end144, label %land.lhs.true136.sw.epilog_crit_edge

land.lhs.true136.sw.epilog_crit_edge:             ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end144:                                        ; preds = %land.lhs.true136
  call void @__sanitizer_cov_trace_pc() #8
  %dev145 = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev145, ptr noundef nonnull @.str.48) #9
  %64 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 5, ptr %arrayidx122, align 1
  %65 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 9, ptr %arrayidx127, align 1
  %66 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 -107, ptr %arrayidx132, align 1
  %67 = ptrtoint ptr %arrayidx137 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 11, ptr %arrayidx137, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end144, %land.lhs.true136.sw.epilog_crit_edge, %land.lhs.true131.sw.epilog_crit_edge, %land.lhs.true126.sw.epilog_crit_edge, %land.lhs.true121.sw.epilog_crit_edge, %sw.bb118.sw.epilog_crit_edge, %do.end115, %sw.bb109.sw.epilog_crit_edge, %do.end106, %sw.bb100.sw.epilog_crit_edge, %do.end97, %sw.bb91.sw.epilog_crit_edge, %do.end88, %sw.bb82.sw.epilog_crit_edge, %do.end79, %sw.bb73.sw.epilog_crit_edge, %do.end70, %sw.bb64.sw.epilog_crit_edge, %do.end61, %do.end57, %if.end51.sw.epilog_crit_edge
  %rdesc.addr.0 = phi ptr [ %rdesc, %if.end51.sw.epilog_crit_edge ], [ %rdesc, %do.end144 ], [ %rdesc, %land.lhs.true136.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true131.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true126.sw.epilog_crit_edge ], [ %rdesc, %land.lhs.true121.sw.epilog_crit_edge ], [ %rdesc, %sw.bb118.sw.epilog_crit_edge ], [ @dfp_rdesc_fixed, %do.end115 ], [ %rdesc, %sw.bb109.sw.epilog_crit_edge ], [ @fv_rdesc_fixed, %do.end106 ], [ %rdesc, %sw.bb100.sw.epilog_crit_edge ], [ @momo2_rdesc_fixed, %do.end97 ], [ %rdesc, %sw.bb91.sw.epilog_crit_edge ], [ @momo_rdesc_fixed, %do.end88 ], [ %rdesc, %sw.bb82.sw.epilog_crit_edge ], [ @df_rdesc_fixed, %do.end79 ], [ %rdesc, %sw.bb73.sw.epilog_crit_edge ], [ @ffg_rdesc_fixed, %do.end70 ], [ %rdesc, %sw.bb64.sw.epilog_crit_edge ], [ @fg_rdesc_fixed, %do.end57 ], [ %rdesc, %do.end61 ]
  ret ptr %rdesc.addr.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_input_mapping(ptr nocapture noundef readonly %hdev, ptr noundef readonly %hi, ptr nocapture noundef readonly %field, ptr noundef %usage, ptr nocapture noundef writeonly %bit, ptr nocapture noundef writeonly %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %usage, align 4
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %4 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %product, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 49409, i32 %5)
  %cmp = icmp eq i32 %5, 49409
  %and.i = and i32 %3, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4456448, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, -4456448
  %or.cond89 = select i1 %cmp, i1 %cmp.not.i, i1 false
  br i1 %or.cond89, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i:                                         ; preds = %entry
  %input.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 5
  tail call void @_set_bit(i32 noundef 20, ptr noundef %evbit.i) #6
  %8 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %usage, align 4
  %trunc.i = trunc i32 %9 to i16
  %10 = zext i16 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.53)
  switch i16 %trunc.i, label %if.end.i.if.end_crit_edge [
    i16 4, label %sw.bb.i
    i16 13, label %sw.bb3.i
    i16 36, label %sw.bb4.i
    i16 37, label %sw.bb5.i
    i16 38, label %sw.bb6.i
    i16 49, label %sw.bb7.i
    i16 50, label %sw.bb8.i
    i16 51, label %sw.bb9.i
    i16 71, label %sw.bb10.i
    i16 72, label %sw.bb11.i
    i16 73, label %sw.bb12.i
    i16 74, label %sw.bb13.i
    i16 75, label %sw.bb14.i
    i16 76, label %sw.bb15.i
    i16 77, label %sw.bb16.i
    i16 81, label %sw.bb17.i
    i16 82, label %sw.bb18.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %input.i, align 4
  %keybit.i.i.i = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 6
  %type19.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %13 = ptrtoint ptr %type19.i.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %type19.i.i.i, align 4
  %code.i.i.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %14 = ptrtoint ptr %code.i.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 129, ptr %code.i.i.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb3.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %input.i, align 4
  %keybit.i.i87.i = getelementptr inbounds %struct.input_dev, ptr %16, i32 0, i32 6
  %type19.i.i88.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type19.i.i88.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %type19.i.i88.i, align 4
  %code.i.i89.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %18 = ptrtoint ptr %code.i.i89.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 102, ptr %code.i.i89.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input.i, align 4
  %keybit.i.i92.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 6
  %type19.i.i93.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %21 = ptrtoint ptr %type19.i.i93.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 1, ptr %type19.i.i93.i, align 4
  %code.i.i94.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %22 = ptrtoint ptr %code.i.i94.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 410, ptr %code.i.i94.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb5.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input.i, align 4
  %keybit.i.i97.i = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 6
  %type19.i.i98.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %25 = ptrtoint ptr %type19.i.i98.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 1, ptr %type19.i.i98.i, align 4
  %code.i.i99.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %26 = ptrtoint ptr %code.i.i99.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 377, ptr %code.i.i99.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input.i, align 4
  %keybit.i.i102.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 6
  %type19.i.i103.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %29 = ptrtoint ptr %type19.i.i103.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %type19.i.i103.i, align 4
  %code.i.i104.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %30 = ptrtoint ptr %code.i.i104.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 139, ptr %code.i.i104.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb7.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %input.i, align 4
  %keybit.i.i107.i = getelementptr inbounds %struct.input_dev, ptr %32, i32 0, i32 6
  %type19.i.i108.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %33 = ptrtoint ptr %type19.i.i108.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %type19.i.i108.i, align 4
  %code.i.i109.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %34 = ptrtoint ptr %code.i.i109.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 392, ptr %code.i.i109.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb8.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input.i, align 4
  %keybit.i.i112.i = getelementptr inbounds %struct.input_dev, ptr %36, i32 0, i32 6
  %type19.i.i113.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %37 = ptrtoint ptr %type19.i.i113.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %type19.i.i113.i, align 4
  %code.i.i114.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %38 = ptrtoint ptr %code.i.i114.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 388, ptr %code.i.i114.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb9.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %input.i, align 4
  %keybit.i.i117.i = getelementptr inbounds %struct.input_dev, ptr %40, i32 0, i32 6
  %type19.i.i118.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %41 = ptrtoint ptr %type19.i.i118.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 1, ptr %type19.i.i118.i, align 4
  %code.i.i119.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %42 = ptrtoint ptr %code.i.i119.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 405, ptr %code.i.i119.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb10.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %input.i, align 4
  %keybit.i.i122.i = getelementptr inbounds %struct.input_dev, ptr %44, i32 0, i32 6
  %type19.i.i123.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %45 = ptrtoint ptr %type19.i.i123.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %type19.i.i123.i, align 4
  %code.i.i124.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %46 = ptrtoint ptr %code.i.i124.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 391, ptr %code.i.i124.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb11.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input.i, align 4
  %keybit.i.i127.i = getelementptr inbounds %struct.input_dev, ptr %48, i32 0, i32 6
  %type19.i.i128.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %49 = ptrtoint ptr %type19.i.i128.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %type19.i.i128.i, align 4
  %code.i.i129.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %50 = ptrtoint ptr %code.i.i129.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 389, ptr %code.i.i129.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb12.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %input.i, align 4
  %keybit.i.i132.i = getelementptr inbounds %struct.input_dev, ptr %52, i32 0, i32 6
  %type19.i.i133.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %53 = ptrtoint ptr %type19.i.i133.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %type19.i.i133.i, align 4
  %code.i.i134.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %54 = ptrtoint ptr %code.i.i134.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 226, ptr %code.i.i134.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb13.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input.i, align 4
  %keybit.i.i137.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 6
  %type19.i.i138.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %57 = ptrtoint ptr %type19.i.i138.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %type19.i.i138.i, align 4
  %code.i.i139.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %58 = ptrtoint ptr %code.i.i139.i to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 393, ptr %code.i.i139.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb14.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %input.i, align 4
  %keybit.i.i142.i = getelementptr inbounds %struct.input_dev, ptr %60, i32 0, i32 6
  %type19.i.i143.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %61 = ptrtoint ptr %type19.i.i143.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 1, ptr %type19.i.i143.i, align 4
  %code.i.i144.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %62 = ptrtoint ptr %code.i.i144.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 371, ptr %code.i.i144.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb15.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %input.i, align 4
  %keybit.i.i147.i = getelementptr inbounds %struct.input_dev, ptr %64, i32 0, i32 6
  %type19.i.i148.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %65 = ptrtoint ptr %type19.i.i148.i to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %type19.i.i148.i, align 4
  %code.i.i149.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %66 = ptrtoint ptr %code.i.i149.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 368, ptr %code.i.i149.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb16.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %input.i, align 4
  %keybit.i.i152.i = getelementptr inbounds %struct.input_dev, ptr %68, i32 0, i32 6
  %type19.i.i153.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %69 = ptrtoint ptr %type19.i.i153.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 1, ptr %type19.i.i153.i, align 4
  %code.i.i154.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %70 = ptrtoint ptr %code.i.i154.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 370, ptr %code.i.i154.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb17.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %71 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %input.i, align 4
  %keybit.i.i157.i = getelementptr inbounds %struct.input_dev, ptr %72, i32 0, i32 6
  %type19.i.i158.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %73 = ptrtoint ptr %type19.i.i158.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %type19.i.i158.i, align 4
  %code.i.i159.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %74 = ptrtoint ptr %code.i.i159.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 398, ptr %code.i.i159.i, align 2
  br label %lg_ultrax_remote_mapping.exit

sw.bb18.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %75 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input.i, align 4
  %keybit.i.i162.i = getelementptr inbounds %struct.input_dev, ptr %76, i32 0, i32 6
  %type19.i.i163.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %77 = ptrtoint ptr %type19.i.i163.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %type19.i.i163.i, align 4
  %code.i.i164.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %78 = ptrtoint ptr %code.i.i164.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 206, ptr %code.i.i164.i, align 2
  br label %lg_ultrax_remote_mapping.exit

lg_ultrax_remote_mapping.exit:                    ; preds = %sw.bb18.i, %sw.bb17.i, %sw.bb16.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %sw.bb.i
  %keybit.i.i.sink166.i = phi ptr [ %keybit.i.i.i, %sw.bb.i ], [ %keybit.i.i87.i, %sw.bb3.i ], [ %keybit.i.i92.i, %sw.bb4.i ], [ %keybit.i.i97.i, %sw.bb5.i ], [ %keybit.i.i102.i, %sw.bb6.i ], [ %keybit.i.i107.i, %sw.bb7.i ], [ %keybit.i.i112.i, %sw.bb8.i ], [ %keybit.i.i117.i, %sw.bb9.i ], [ %keybit.i.i122.i, %sw.bb10.i ], [ %keybit.i.i127.i, %sw.bb11.i ], [ %keybit.i.i132.i, %sw.bb12.i ], [ %keybit.i.i137.i, %sw.bb13.i ], [ %keybit.i.i142.i, %sw.bb14.i ], [ %keybit.i.i147.i, %sw.bb15.i ], [ %keybit.i.i152.i, %sw.bb16.i ], [ %keybit.i.i157.i, %sw.bb17.i ], [ %keybit.i.i162.i, %sw.bb18.i ]
  %code.i.i.sink.i = phi ptr [ %code.i.i.i, %sw.bb.i ], [ %code.i.i89.i, %sw.bb3.i ], [ %code.i.i94.i, %sw.bb4.i ], [ %code.i.i99.i, %sw.bb5.i ], [ %code.i.i104.i, %sw.bb6.i ], [ %code.i.i109.i, %sw.bb7.i ], [ %code.i.i114.i, %sw.bb8.i ], [ %code.i.i119.i, %sw.bb9.i ], [ %code.i.i124.i, %sw.bb10.i ], [ %code.i.i129.i, %sw.bb11.i ], [ %code.i.i134.i, %sw.bb12.i ], [ %code.i.i139.i, %sw.bb13.i ], [ %code.i.i144.i, %sw.bb14.i ], [ %code.i.i149.i, %sw.bb15.i ], [ %code.i.i154.i, %sw.bb16.i ], [ %code.i.i159.i, %sw.bb17.i ], [ %code.i.i164.i, %sw.bb18.i ]
  %79 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 767, ptr %max, align 4
  %80 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %keybit.i.i.sink166.i, ptr %bit, align 4
  %81 = ptrtoint ptr %code.i.i.sink.i to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %code.i.i.sink.i, align 2
  %conv1.i.i = zext i16 %82 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i, ptr noundef nonnull %keybit.i.i.sink166.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %1, align 4
  %and = and i32 %84, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end8_crit_edge, label %land.lhs.true4

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

land.lhs.true4:                                   ; preds = %if.end
  %85 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %usage, align 4
  %and.i57 = and i32 %86, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %and.i57)
  %cmp.not.i58 = icmp eq i32 %and.i57, 786432
  br i1 %cmp.not.i58, label %if.end.i60, label %land.lhs.true4.if.end8_crit_edge

land.lhs.true4.if.end8_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end.i60:                                       ; preds = %land.lhs.true4
  %trunc.i59 = trunc i32 %86 to i16
  %87 = zext i16 %trunc.i59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %87, ptr @__sancov_gen_cov_switch_values.54)
  switch i16 %trunc.i59, label %if.end.i60.if.end8_crit_edge [
    i16 4097, label %sw.bb.i64
    i16 4099, label %sw.bb3.i65
    i16 4100, label %sw.bb4.i66
    i16 4101, label %sw.bb5.i67
    i16 4106, label %sw.bb6.i68
    i16 4111, label %sw.bb7.i69
    i16 4112, label %sw.bb8.i70
    i16 4113, label %sw.bb9.i71
    i16 4114, label %sw.bb10.i72
    i16 4115, label %sw.bb11.i73
    i16 4116, label %sw.bb12.i74
    i16 4117, label %sw.bb13.i75
    i16 4118, label %sw.bb14.i76
    i16 4119, label %sw.bb15.i77
    i16 4120, label %sw.bb16.i78
    i16 4121, label %sw.bb17.i79
    i16 4122, label %sw.bb18.i80
    i16 4123, label %sw.bb19.i
    i16 4124, label %sw.bb20.i
    i16 4127, label %sw.bb21.i
    i16 4128, label %sw.bb22.i
    i16 4129, label %sw.bb23.i
    i16 4131, label %sw.bb24.i
    i16 4135, label %sw.bb25.i
    i16 4136, label %sw.bb26.i
    i16 4137, label %sw.bb27.i
    i16 4138, label %sw.bb28.i
    i16 4139, label %sw.bb29.i
    i16 4141, label %sw.bb30.i
    i16 4145, label %sw.bb31.i
    i16 4146, label %sw.bb32.i
    i16 4161, label %sw.bb33.i
    i16 4162, label %sw.bb34.i
    i16 4163, label %sw.bb35.i
    i16 4164, label %sw.bb36.i
    i16 4165, label %sw.bb37.i
    i16 4166, label %sw.bb38.i
    i16 4167, label %sw.bb39.i
    i16 4168, label %sw.bb40.i
    i16 4169, label %sw.bb41.i
    i16 4170, label %sw.bb42.i
    i16 4171, label %sw.bb43.i
    i16 4172, label %sw.bb44.i
  ]

if.end.i60.if.end8_crit_edge:                     ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

sw.bb.i64:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %88 = ptrtoint ptr %input1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %input1.i.i.i, align 4
  %keybit.i.i.i61 = getelementptr inbounds %struct.input_dev, ptr %89, i32 0, i32 6
  %type19.i.i.i62 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %90 = ptrtoint ptr %type19.i.i.i62 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %type19.i.i.i62, align 4
  %code.i.i.i63 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %91 = ptrtoint ptr %code.i.i.i63 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 430, ptr %code.i.i.i63, align 2
  br label %lg_wireless_mapping.exit

sw.bb3.i65:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i215.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %92 = ptrtoint ptr %input1.i.i215.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %input1.i.i215.i, align 4
  %keybit.i.i216.i = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 6
  %type19.i.i217.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %94 = ptrtoint ptr %type19.i.i217.i to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 1, ptr %type19.i.i217.i, align 4
  %code.i.i218.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %95 = ptrtoint ptr %code.i.i218.i to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 213, ptr %code.i.i218.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb4.i66:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i220.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %96 = ptrtoint ptr %input1.i.i220.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %input1.i.i220.i, align 4
  %keybit.i.i221.i = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 6
  %type19.i.i222.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %98 = ptrtoint ptr %type19.i.i222.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 1, ptr %type19.i.i222.i, align 4
  %code.i.i223.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %99 = ptrtoint ptr %code.i.i223.i to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 393, ptr %code.i.i223.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb5.i67:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i225.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %100 = ptrtoint ptr %input1.i.i225.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %input1.i.i225.i, align 4
  %keybit.i.i226.i = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 6
  %type19.i.i227.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %102 = ptrtoint ptr %type19.i.i227.i to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 1, ptr %type19.i.i227.i, align 4
  %code.i.i228.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %103 = ptrtoint ptr %code.i.i228.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 392, ptr %code.i.i228.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb6.i68:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i230.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %104 = ptrtoint ptr %input1.i.i230.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %input1.i.i230.i, align 4
  %keybit.i.i231.i = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 6
  %type19.i.i232.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %106 = ptrtoint ptr %type19.i.i232.i to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 1, ptr %type19.i.i232.i, align 4
  %code.i.i233.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %107 = ptrtoint ptr %code.i.i233.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 235, ptr %code.i.i233.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb7.i69:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i235.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %108 = ptrtoint ptr %input1.i.i235.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %input1.i.i235.i, align 4
  %keybit.i.i236.i = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 6
  %type19.i.i237.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %110 = ptrtoint ptr %type19.i.i237.i to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 1, ptr %type19.i.i237.i, align 4
  %code.i.i238.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %111 = ptrtoint ptr %code.i.i238.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 478, ptr %code.i.i238.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb8.i70:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i240.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %112 = ptrtoint ptr %input1.i.i240.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %input1.i.i240.i, align 4
  %keybit.i.i241.i = getelementptr inbounds %struct.input_dev, ptr %113, i32 0, i32 6
  %type19.i.i242.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %114 = ptrtoint ptr %type19.i.i242.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 1, ptr %type19.i.i242.i, align 4
  %code.i.i243.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %115 = ptrtoint ptr %code.i.i243.i to i32
  call void @__asan_store2_noabort(i32 %115)
  store i16 479, ptr %code.i.i243.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb9.i71:                                       ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i245.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %116 = ptrtoint ptr %input1.i.i245.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %input1.i.i245.i, align 4
  %keybit.i.i246.i = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 6
  %type19.i.i247.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %118 = ptrtoint ptr %type19.i.i247.i to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %type19.i.i247.i, align 4
  %code.i.i248.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %119 = ptrtoint ptr %code.i.i248.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 165, ptr %code.i.i248.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb10.i72:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i250.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %120 = ptrtoint ptr %input1.i.i250.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %input1.i.i250.i, align 4
  %keybit.i.i251.i = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 6
  %type19.i.i252.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %122 = ptrtoint ptr %type19.i.i252.i to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 1, ptr %type19.i.i252.i, align 4
  %code.i.i253.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %123 = ptrtoint ptr %code.i.i253.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 163, ptr %code.i.i253.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb11.i73:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i255.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %124 = ptrtoint ptr %input1.i.i255.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %input1.i.i255.i, align 4
  %keybit.i.i256.i = getelementptr inbounds %struct.input_dev, ptr %125, i32 0, i32 6
  %type19.i.i257.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %126 = ptrtoint ptr %type19.i.i257.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 1, ptr %type19.i.i257.i, align 4
  %code.i.i258.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %127 = ptrtoint ptr %code.i.i258.i to i32
  call void @__asan_store2_noabort(i32 %127)
  store i16 212, ptr %code.i.i258.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb12.i74:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i260.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %128 = ptrtoint ptr %input1.i.i260.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %input1.i.i260.i, align 4
  %keybit.i.i261.i = getelementptr inbounds %struct.input_dev, ptr %129, i32 0, i32 6
  %type19.i.i262.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %130 = ptrtoint ptr %type19.i.i262.i to i32
  call void @__asan_store1_noabort(i32 %130)
  store i8 1, ptr %type19.i.i262.i, align 4
  %code.i.i263.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %131 = ptrtoint ptr %code.i.i263.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 430, ptr %code.i.i263.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb13.i75:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i265.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %132 = ptrtoint ptr %input1.i.i265.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %input1.i.i265.i, align 4
  %keybit.i.i266.i = getelementptr inbounds %struct.input_dev, ptr %133, i32 0, i32 6
  %type19.i.i267.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %134 = ptrtoint ptr %type19.i.i267.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %type19.i.i267.i, align 4
  %code.i.i268.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %135 = ptrtoint ptr %code.i.i268.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 167, ptr %code.i.i268.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb14.i76:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i270.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %136 = ptrtoint ptr %input1.i.i270.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %input1.i.i270.i, align 4
  %keybit.i.i271.i = getelementptr inbounds %struct.input_dev, ptr %137, i32 0, i32 6
  %type19.i.i272.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %138 = ptrtoint ptr %type19.i.i272.i to i32
  call void @__asan_store1_noabort(i32 %138)
  store i8 1, ptr %type19.i.i272.i, align 4
  %code.i.i273.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %139 = ptrtoint ptr %code.i.i273.i to i32
  call void @__asan_store2_noabort(i32 %139)
  store i16 387, ptr %code.i.i273.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb15.i77:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i275.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %140 = ptrtoint ptr %input1.i.i275.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %input1.i.i275.i, align 4
  %keybit.i.i276.i = getelementptr inbounds %struct.input_dev, ptr %141, i32 0, i32 6
  %type19.i.i277.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %142 = ptrtoint ptr %type19.i.i277.i to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %type19.i.i277.i, align 4
  %code.i.i278.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %143 = ptrtoint ptr %code.i.i278.i to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 161, ptr %code.i.i278.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb16.i78:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i280.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %144 = ptrtoint ptr %input1.i.i280.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %input1.i.i280.i, align 4
  %keybit.i.i281.i = getelementptr inbounds %struct.input_dev, ptr %145, i32 0, i32 6
  %type19.i.i282.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %146 = ptrtoint ptr %type19.i.i282.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 1, ptr %type19.i.i282.i, align 4
  %code.i.i283.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %147 = ptrtoint ptr %code.i.i283.i to i32
  call void @__asan_store2_noabort(i32 %147)
  store i16 226, ptr %code.i.i283.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb17.i79:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i285.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %148 = ptrtoint ptr %input1.i.i285.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %input1.i.i285.i, align 4
  %keybit.i.i286.i = getelementptr inbounds %struct.input_dev, ptr %149, i32 0, i32 6
  %type19.i.i287.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %150 = ptrtoint ptr %type19.i.i287.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 1, ptr %type19.i.i287.i, align 4
  %code.i.i288.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %151 = ptrtoint ptr %code.i.i288.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 148, ptr %code.i.i288.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb18.i80:                                      ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i290.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %152 = ptrtoint ptr %input1.i.i290.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %input1.i.i290.i, align 4
  %keybit.i.i291.i = getelementptr inbounds %struct.input_dev, ptr %153, i32 0, i32 6
  %type19.i.i292.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %154 = ptrtoint ptr %type19.i.i292.i to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 1, ptr %type19.i.i292.i, align 4
  %code.i.i293.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %155 = ptrtoint ptr %code.i.i293.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 149, ptr %code.i.i293.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb19.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i295.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %156 = ptrtoint ptr %input1.i.i295.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %input1.i.i295.i, align 4
  %keybit.i.i296.i = getelementptr inbounds %struct.input_dev, ptr %157, i32 0, i32 6
  %type19.i.i297.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %158 = ptrtoint ptr %type19.i.i297.i to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %type19.i.i297.i, align 4
  %code.i.i298.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %159 = ptrtoint ptr %code.i.i298.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 202, ptr %code.i.i298.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb20.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i300.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %160 = ptrtoint ptr %input1.i.i300.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %input1.i.i300.i, align 4
  %keybit.i.i301.i = getelementptr inbounds %struct.input_dev, ptr %161, i32 0, i32 6
  %type19.i.i302.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %162 = ptrtoint ptr %type19.i.i302.i to i32
  call void @__asan_store1_noabort(i32 %162)
  store i8 1, ptr %type19.i.i302.i, align 4
  %code.i.i303.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %163 = ptrtoint ptr %code.i.i303.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 154, ptr %code.i.i303.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb21.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i305.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %164 = ptrtoint ptr %input1.i.i305.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %input1.i.i305.i, align 4
  %keybit.i.i306.i = getelementptr inbounds %struct.input_dev, ptr %165, i32 0, i32 6
  %type19.i.i307.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %166 = ptrtoint ptr %type19.i.i307.i to i32
  call void @__asan_store1_noabort(i32 %166)
  store i8 1, ptr %type19.i.i307.i, align 4
  %code.i.i308.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %167 = ptrtoint ptr %code.i.i308.i to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 418, ptr %code.i.i308.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb22.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i310.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %168 = ptrtoint ptr %input1.i.i310.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %input1.i.i310.i, align 4
  %keybit.i.i311.i = getelementptr inbounds %struct.input_dev, ptr %169, i32 0, i32 6
  %type19.i.i312.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %170 = ptrtoint ptr %type19.i.i312.i to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 1, ptr %type19.i.i312.i, align 4
  %code.i.i313.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %171 = ptrtoint ptr %code.i.i313.i to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 419, ptr %code.i.i313.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb23.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i315.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %172 = ptrtoint ptr %input1.i.i315.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %input1.i.i315.i, align 4
  %keybit.i.i316.i = getelementptr inbounds %struct.input_dev, ptr %173, i32 0, i32 6
  %type19.i.i317.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %174 = ptrtoint ptr %type19.i.i317.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 1, ptr %type19.i.i317.i, align 4
  %code.i.i318.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %175 = ptrtoint ptr %code.i.i318.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 420, ptr %code.i.i318.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb24.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i320.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %176 = ptrtoint ptr %input1.i.i320.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %input1.i.i320.i, align 4
  %keybit.i.i321.i = getelementptr inbounds %struct.input_dev, ptr %177, i32 0, i32 6
  %type19.i.i322.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %178 = ptrtoint ptr %type19.i.i322.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 1, ptr %type19.i.i322.i, align 4
  %code.i.i323.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %179 = ptrtoint ptr %code.i.i323.i to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 206, ptr %code.i.i323.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb25.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i325.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %180 = ptrtoint ptr %input1.i.i325.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %input1.i.i325.i, align 4
  %keybit.i.i326.i = getelementptr inbounds %struct.input_dev, ptr %181, i32 0, i32 6
  %type19.i.i327.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %182 = ptrtoint ptr %type19.i.i327.i to i32
  call void @__asan_store1_noabort(i32 %182)
  store i8 1, ptr %type19.i.i327.i, align 4
  %code.i.i328.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %183 = ptrtoint ptr %code.i.i328.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 139, ptr %code.i.i328.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb26.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i330.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %184 = ptrtoint ptr %input1.i.i330.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %input1.i.i330.i, align 4
  %keybit.i.i331.i = getelementptr inbounds %struct.input_dev, ptr %185, i32 0, i32 6
  %type19.i.i332.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %186 = ptrtoint ptr %type19.i.i332.i to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 1, ptr %type19.i.i332.i, align 4
  %code.i.i333.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %187 = ptrtoint ptr %code.i.i333.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 371, ptr %code.i.i333.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb27.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i335.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %188 = ptrtoint ptr %input1.i.i335.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %input1.i.i335.i, align 4
  %keybit.i.i336.i = getelementptr inbounds %struct.input_dev, ptr %189, i32 0, i32 6
  %type19.i.i337.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %190 = ptrtoint ptr %type19.i.i337.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 1, ptr %type19.i.i337.i, align 4
  %code.i.i338.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %191 = ptrtoint ptr %code.i.i338.i to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 410, ptr %code.i.i338.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb28.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i340.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %192 = ptrtoint ptr %input1.i.i340.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %input1.i.i340.i, align 4
  %keybit.i.i341.i = getelementptr inbounds %struct.input_dev, ptr %193, i32 0, i32 6
  %type19.i.i342.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %194 = ptrtoint ptr %type19.i.i342.i to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 1, ptr %type19.i.i342.i, align 4
  %code.i.i343.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %195 = ptrtoint ptr %code.i.i343.i to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 158, ptr %code.i.i343.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb29.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i345.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %196 = ptrtoint ptr %input1.i.i345.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %input1.i.i345.i, align 4
  %keybit.i.i346.i = getelementptr inbounds %struct.input_dev, ptr %197, i32 0, i32 6
  %type19.i.i347.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %198 = ptrtoint ptr %type19.i.i347.i to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 1, ptr %type19.i.i347.i, align 4
  %code.i.i348.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %199 = ptrtoint ptr %code.i.i348.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 154, ptr %code.i.i348.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb30.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i350.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %200 = ptrtoint ptr %input1.i.i350.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %input1.i.i350.i, align 4
  %keybit.i.i351.i = getelementptr inbounds %struct.input_dev, ptr %201, i32 0, i32 6
  %type19.i.i352.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %202 = ptrtoint ptr %type19.i.i352.i to i32
  call void @__asan_store1_noabort(i32 %202)
  store i8 1, ptr %type19.i.i352.i, align 4
  %code.i.i353.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %203 = ptrtoint ptr %code.i.i353.i to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 150, ptr %code.i.i353.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb31.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i355.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %204 = ptrtoint ptr %input1.i.i355.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %input1.i.i355.i, align 4
  %keybit.i.i356.i = getelementptr inbounds %struct.input_dev, ptr %205, i32 0, i32 6
  %type19.i.i357.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %206 = ptrtoint ptr %type19.i.i357.i to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 1, ptr %type19.i.i357.i, align 4
  %code.i.i358.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %207 = ptrtoint ptr %code.i.i358.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 352, ptr %code.i.i358.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb32.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i360.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %208 = ptrtoint ptr %input1.i.i360.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %input1.i.i360.i, align 4
  %keybit.i.i361.i = getelementptr inbounds %struct.input_dev, ptr %209, i32 0, i32 6
  %type19.i.i362.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %210 = ptrtoint ptr %type19.i.i362.i to i32
  call void @__asan_store1_noabort(i32 %210)
  store i8 1, ptr %type19.i.i362.i, align 4
  %code.i.i363.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %211 = ptrtoint ptr %code.i.i363.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 223, ptr %code.i.i363.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb33.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i365.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %212 = ptrtoint ptr %input1.i.i365.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %input1.i.i365.i, align 4
  %keybit.i.i366.i = getelementptr inbounds %struct.input_dev, ptr %213, i32 0, i32 6
  %type19.i.i367.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %214 = ptrtoint ptr %type19.i.i367.i to i32
  call void @__asan_store1_noabort(i32 %214)
  store i8 1, ptr %type19.i.i367.i, align 4
  %code.i.i368.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %215 = ptrtoint ptr %code.i.i368.i to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 236, ptr %code.i.i368.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb34.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i370.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %216 = ptrtoint ptr %input1.i.i370.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %input1.i.i370.i, align 4
  %keybit.i.i371.i = getelementptr inbounds %struct.input_dev, ptr %217, i32 0, i32 6
  %type19.i.i372.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %218 = ptrtoint ptr %type19.i.i372.i to i32
  call void @__asan_store1_noabort(i32 %218)
  store i8 1, ptr %type19.i.i372.i, align 4
  %code.i.i373.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %219 = ptrtoint ptr %code.i.i373.i to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 421, ptr %code.i.i373.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb35.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i375.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %220 = ptrtoint ptr %input1.i.i375.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %input1.i.i375.i, align 4
  %keybit.i.i376.i = getelementptr inbounds %struct.input_dev, ptr %221, i32 0, i32 6
  %type19.i.i377.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %222 = ptrtoint ptr %type19.i.i377.i to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 1, ptr %type19.i.i377.i, align 4
  %code.i.i378.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %223 = ptrtoint ptr %code.i.i378.i to i32
  call void @__asan_store2_noabort(i32 %223)
  store i16 423, ptr %code.i.i378.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb36.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i380.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %224 = ptrtoint ptr %input1.i.i380.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load ptr, ptr %input1.i.i380.i, align 4
  %keybit.i.i381.i = getelementptr inbounds %struct.input_dev, ptr %225, i32 0, i32 6
  %type19.i.i382.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %226 = ptrtoint ptr %type19.i.i382.i to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 1, ptr %type19.i.i382.i, align 4
  %code.i.i383.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %227 = ptrtoint ptr %code.i.i383.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 425, ptr %code.i.i383.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb37.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i385.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %228 = ptrtoint ptr %input1.i.i385.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %input1.i.i385.i, align 4
  %keybit.i.i386.i = getelementptr inbounds %struct.input_dev, ptr %229, i32 0, i32 6
  %type19.i.i387.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %230 = ptrtoint ptr %type19.i.i387.i to i32
  call void @__asan_store1_noabort(i32 %230)
  store i8 1, ptr %type19.i.i387.i, align 4
  %code.i.i388.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %231 = ptrtoint ptr %code.i.i388.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 131, ptr %code.i.i388.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb38.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i390.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %232 = ptrtoint ptr %input1.i.i390.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %input1.i.i390.i, align 4
  %keybit.i.i391.i = getelementptr inbounds %struct.input_dev, ptr %233, i32 0, i32 6
  %type19.i.i392.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %234 = ptrtoint ptr %type19.i.i392.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 1, ptr %type19.i.i392.i, align 4
  %code.i.i393.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %235 = ptrtoint ptr %code.i.i393.i to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 182, ptr %code.i.i393.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb39.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i395.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %236 = ptrtoint ptr %input1.i.i395.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %input1.i.i395.i, align 4
  %keybit.i.i396.i = getelementptr inbounds %struct.input_dev, ptr %237, i32 0, i32 6
  %type19.i.i397.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %238 = ptrtoint ptr %type19.i.i397.i to i32
  call void @__asan_store1_noabort(i32 %238)
  store i8 1, ptr %type19.i.i397.i, align 4
  %code.i.i398.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %239 = ptrtoint ptr %code.i.i398.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 210, ptr %code.i.i398.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb40.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i400.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %240 = ptrtoint ptr %input1.i.i400.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %input1.i.i400.i, align 4
  %keybit.i.i401.i = getelementptr inbounds %struct.input_dev, ptr %241, i32 0, i32 6
  %type19.i.i402.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %242 = ptrtoint ptr %type19.i.i402.i to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 1, ptr %type19.i.i402.i, align 4
  %code.i.i403.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %243 = ptrtoint ptr %code.i.i403.i to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 234, ptr %code.i.i403.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb41.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i405.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %244 = ptrtoint ptr %input1.i.i405.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %input1.i.i405.i, align 4
  %keybit.i.i406.i = getelementptr inbounds %struct.input_dev, ptr %245, i32 0, i32 6
  %type19.i.i407.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %246 = ptrtoint ptr %type19.i.i407.i to i32
  call void @__asan_store1_noabort(i32 %246)
  store i8 1, ptr %type19.i.i407.i, align 4
  %code.i.i408.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %247 = ptrtoint ptr %code.i.i408.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 148, ptr %code.i.i408.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb42.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i410.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %248 = ptrtoint ptr %input1.i.i410.i to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %input1.i.i410.i, align 4
  %keybit.i.i411.i = getelementptr inbounds %struct.input_dev, ptr %249, i32 0, i32 6
  %type19.i.i412.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %250 = ptrtoint ptr %type19.i.i412.i to i32
  call void @__asan_store1_noabort(i32 %250)
  store i8 1, ptr %type19.i.i412.i, align 4
  %code.i.i413.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %251 = ptrtoint ptr %code.i.i413.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 149, ptr %code.i.i413.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb43.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i415.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %252 = ptrtoint ptr %input1.i.i415.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %input1.i.i415.i, align 4
  %keybit.i.i416.i = getelementptr inbounds %struct.input_dev, ptr %253, i32 0, i32 6
  %type19.i.i417.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %254 = ptrtoint ptr %type19.i.i417.i to i32
  call void @__asan_store1_noabort(i32 %254)
  store i8 1, ptr %type19.i.i417.i, align 4
  %code.i.i418.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %255 = ptrtoint ptr %code.i.i418.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 202, ptr %code.i.i418.i, align 2
  br label %lg_wireless_mapping.exit

sw.bb44.i:                                        ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i.i420.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %256 = ptrtoint ptr %input1.i.i420.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %input1.i.i420.i, align 4
  %keybit.i.i421.i = getelementptr inbounds %struct.input_dev, ptr %257, i32 0, i32 6
  %type19.i.i422.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %258 = ptrtoint ptr %type19.i.i422.i to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 1, ptr %type19.i.i422.i, align 4
  %code.i.i423.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %259 = ptrtoint ptr %code.i.i423.i to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 203, ptr %code.i.i423.i, align 2
  br label %lg_wireless_mapping.exit

lg_wireless_mapping.exit:                         ; preds = %sw.bb44.i, %sw.bb43.i, %sw.bb42.i, %sw.bb41.i, %sw.bb40.i, %sw.bb39.i, %sw.bb38.i, %sw.bb37.i, %sw.bb36.i, %sw.bb35.i, %sw.bb34.i, %sw.bb33.i, %sw.bb32.i, %sw.bb31.i, %sw.bb30.i, %sw.bb29.i, %sw.bb28.i, %sw.bb27.i, %sw.bb26.i, %sw.bb25.i, %sw.bb24.i, %sw.bb23.i, %sw.bb22.i, %sw.bb21.i, %sw.bb20.i, %sw.bb19.i, %sw.bb18.i80, %sw.bb17.i79, %sw.bb16.i78, %sw.bb15.i77, %sw.bb14.i76, %sw.bb13.i75, %sw.bb12.i74, %sw.bb11.i73, %sw.bb10.i72, %sw.bb9.i71, %sw.bb8.i70, %sw.bb7.i69, %sw.bb6.i68, %sw.bb5.i67, %sw.bb4.i66, %sw.bb3.i65, %sw.bb.i64
  %keybit.i.i.sink425.i = phi ptr [ %keybit.i.i.i61, %sw.bb.i64 ], [ %keybit.i.i216.i, %sw.bb3.i65 ], [ %keybit.i.i221.i, %sw.bb4.i66 ], [ %keybit.i.i226.i, %sw.bb5.i67 ], [ %keybit.i.i231.i, %sw.bb6.i68 ], [ %keybit.i.i236.i, %sw.bb7.i69 ], [ %keybit.i.i241.i, %sw.bb8.i70 ], [ %keybit.i.i246.i, %sw.bb9.i71 ], [ %keybit.i.i251.i, %sw.bb10.i72 ], [ %keybit.i.i256.i, %sw.bb11.i73 ], [ %keybit.i.i261.i, %sw.bb12.i74 ], [ %keybit.i.i266.i, %sw.bb13.i75 ], [ %keybit.i.i271.i, %sw.bb14.i76 ], [ %keybit.i.i276.i, %sw.bb15.i77 ], [ %keybit.i.i281.i, %sw.bb16.i78 ], [ %keybit.i.i286.i, %sw.bb17.i79 ], [ %keybit.i.i291.i, %sw.bb18.i80 ], [ %keybit.i.i296.i, %sw.bb19.i ], [ %keybit.i.i301.i, %sw.bb20.i ], [ %keybit.i.i306.i, %sw.bb21.i ], [ %keybit.i.i311.i, %sw.bb22.i ], [ %keybit.i.i316.i, %sw.bb23.i ], [ %keybit.i.i321.i, %sw.bb24.i ], [ %keybit.i.i326.i, %sw.bb25.i ], [ %keybit.i.i331.i, %sw.bb26.i ], [ %keybit.i.i336.i, %sw.bb27.i ], [ %keybit.i.i341.i, %sw.bb28.i ], [ %keybit.i.i346.i, %sw.bb29.i ], [ %keybit.i.i351.i, %sw.bb30.i ], [ %keybit.i.i356.i, %sw.bb31.i ], [ %keybit.i.i361.i, %sw.bb32.i ], [ %keybit.i.i366.i, %sw.bb33.i ], [ %keybit.i.i371.i, %sw.bb34.i ], [ %keybit.i.i376.i, %sw.bb35.i ], [ %keybit.i.i381.i, %sw.bb36.i ], [ %keybit.i.i386.i, %sw.bb37.i ], [ %keybit.i.i391.i, %sw.bb38.i ], [ %keybit.i.i396.i, %sw.bb39.i ], [ %keybit.i.i401.i, %sw.bb40.i ], [ %keybit.i.i406.i, %sw.bb41.i ], [ %keybit.i.i411.i, %sw.bb42.i ], [ %keybit.i.i416.i, %sw.bb43.i ], [ %keybit.i.i421.i, %sw.bb44.i ]
  %code.i.i.sink.i81 = phi ptr [ %code.i.i.i63, %sw.bb.i64 ], [ %code.i.i218.i, %sw.bb3.i65 ], [ %code.i.i223.i, %sw.bb4.i66 ], [ %code.i.i228.i, %sw.bb5.i67 ], [ %code.i.i233.i, %sw.bb6.i68 ], [ %code.i.i238.i, %sw.bb7.i69 ], [ %code.i.i243.i, %sw.bb8.i70 ], [ %code.i.i248.i, %sw.bb9.i71 ], [ %code.i.i253.i, %sw.bb10.i72 ], [ %code.i.i258.i, %sw.bb11.i73 ], [ %code.i.i263.i, %sw.bb12.i74 ], [ %code.i.i268.i, %sw.bb13.i75 ], [ %code.i.i273.i, %sw.bb14.i76 ], [ %code.i.i278.i, %sw.bb15.i77 ], [ %code.i.i283.i, %sw.bb16.i78 ], [ %code.i.i288.i, %sw.bb17.i79 ], [ %code.i.i293.i, %sw.bb18.i80 ], [ %code.i.i298.i, %sw.bb19.i ], [ %code.i.i303.i, %sw.bb20.i ], [ %code.i.i308.i, %sw.bb21.i ], [ %code.i.i313.i, %sw.bb22.i ], [ %code.i.i318.i, %sw.bb23.i ], [ %code.i.i323.i, %sw.bb24.i ], [ %code.i.i328.i, %sw.bb25.i ], [ %code.i.i333.i, %sw.bb26.i ], [ %code.i.i338.i, %sw.bb27.i ], [ %code.i.i343.i, %sw.bb28.i ], [ %code.i.i348.i, %sw.bb29.i ], [ %code.i.i353.i, %sw.bb30.i ], [ %code.i.i358.i, %sw.bb31.i ], [ %code.i.i363.i, %sw.bb32.i ], [ %code.i.i368.i, %sw.bb33.i ], [ %code.i.i373.i, %sw.bb34.i ], [ %code.i.i378.i, %sw.bb35.i ], [ %code.i.i383.i, %sw.bb36.i ], [ %code.i.i388.i, %sw.bb37.i ], [ %code.i.i393.i, %sw.bb38.i ], [ %code.i.i398.i, %sw.bb39.i ], [ %code.i.i403.i, %sw.bb40.i ], [ %code.i.i408.i, %sw.bb41.i ], [ %code.i.i413.i, %sw.bb42.i ], [ %code.i.i418.i, %sw.bb43.i ], [ %code.i.i423.i, %sw.bb44.i ]
  %260 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 767, ptr %max, align 4
  %261 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %261)
  store ptr %keybit.i.i.sink425.i, ptr %bit, align 4
  %262 = ptrtoint ptr %code.i.i.sink.i81 to i32
  call void @__asan_load2_noabort(i32 %262)
  %263 = load i16, ptr %code.i.i.sink.i81, align 2
  %conv1.i.i82 = zext i16 %263 to i32
  tail call void @_clear_bit(i32 noundef %conv1.i.i82, ptr noundef nonnull %keybit.i.i.sink425.i) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end.i60.if.end8_crit_edge, %land.lhs.true4.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 589824, i32 %and.i)
  %cmp10.not = icmp eq i32 %and.i, 589824
  br i1 %cmp10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %and13 = and i32 %3, 65535
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %264 = ptrtoint ptr %application to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %application, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65538, i32 %265)
  %cmp14 = icmp eq i32 %265, 65538
  %266 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %1, align 4
  br i1 %cmp14, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.end12
  %and17 = and i32 %267, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp ne i32 %and17, 0
  %and13.off = add nsw i32 %and13, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and13.off)
  %switch = icmp ult i32 %and13.off, 2
  %or.cond56 = select i1 %tobool18.not, i1 %switch, i1 false
  br i1 %or.cond56, label %if.then15.cleanup_crit_edge, label %if.then15.if.end36_crit_edge

if.then15.if.end36_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %if.end12
  %and25 = and i32 %267, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp ne i32 %and25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %and13)
  %cmp28 = icmp ult i32 %and13, 80
  %or.cond = select i1 %tobool26.not, i1 %cmp28, i1 false
  br i1 %or.cond, label %land.lhs.true29, label %if.else.if.end36_crit_edge

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

land.lhs.true29:                                  ; preds = %if.else
  %arrayidx = getelementptr [80 x i8], ptr @lg_input_mapping.e_keymap, i32 0, i32 %and13
  %268 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %268)
  %269 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %269)
  %cmp30.not = icmp eq i8 %269, 0
  br i1 %cmp30.not, label %land.lhs.true29.if.end36_crit_edge, label %if.then32

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end36

if.then32:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #8
  %input1.i = getelementptr inbounds %struct.hid_input, ptr %hi, i32 0, i32 2
  %270 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %input1.i, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %271, i32 0, i32 6
  %type19.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %272 = ptrtoint ptr %type19.i to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 1, ptr %type19.i, align 4
  %conv20.i = zext i8 %269 to i16
  %code.i = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %273 = ptrtoint ptr %code.i to i32
  call void @__asan_store2_noabort(i32 %273)
  store i16 %conv20.i, ptr %code.i, align 2
  %274 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 767, ptr %max, align 4
  %275 = ptrtoint ptr %bit to i32
  call void @__asan_store4_noabort(i32 %275)
  store ptr %keybit.i, ptr %bit, align 4
  br label %cleanup

if.end36:                                         ; preds = %land.lhs.true29.if.end36_crit_edge, %if.else.if.end36_crit_edge, %if.then15.if.end36_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then32, %if.then15.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %lg_wireless_mapping.exit, %lg_ultrax_remote_mapping.exit
  %retval.0 = phi i32 [ 0, %if.end36 ], [ 1, %if.then32 ], [ 1, %lg_ultrax_remote_mapping.exit ], [ 1, %lg_wireless_mapping.exit ], [ 0, %if.end8.cleanup_crit_edge ], [ -1, %if.then15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg_input_mapped(ptr nocapture noundef readonly %hdev, ptr nocapture noundef readnone %hi, ptr nocapture noundef %field, ptr nocapture noundef readonly %usage, ptr nocapture noundef readonly %bit, ptr nocapture noundef readnone %max) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 18, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %type = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %5)
  %cmp = icmp eq i8 %5, 1
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %flags = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 5
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and3 = and i32 %7, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %land.lhs.true2.if.end_crit_edge, label %if.then

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #8
  %and6 = and i32 %7, -5
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and6, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %and8 = and i32 %10, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end.if.end26_crit_edge, label %land.lhs.true10

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

land.lhs.true10:                                  ; preds = %if.end
  %type11 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %11 = ptrtoint ptr %type11 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %type11, align 4
  %.off = add i8 %12, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %.off)
  %switch = icmp ult i8 %.off, 3
  br i1 %switch, label %if.then24, label %land.lhs.true10.if.end26_crit_edge

land.lhs.true10.if.end26_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26

if.then24:                                        ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #8
  %code = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %13 = ptrtoint ptr %code to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %code, align 2
  %conv25 = zext i16 %14 to i32
  %15 = ptrtoint ptr %bit to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bit, align 4
  tail call void @_clear_bit(i32 noundef %conv25, ptr noundef %16) #6
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %land.lhs.true10.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %type27 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 6
  %17 = ptrtoint ptr %type27 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type27, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %18)
  %cmp29 = icmp eq i8 %18, 3
  br i1 %cmp29, label %land.lhs.true31, label %if.end26.if.end52_crit_edge

if.end26.if.end52_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

land.lhs.true31:                                  ; preds = %if.end26
  %code32 = getelementptr inbounds %struct.hid_usage, ptr %usage, i32 0, i32 5
  %19 = ptrtoint ptr %code32 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %code32, align 2
  %21 = zext i16 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.55)
  switch i16 %20, label %land.lhs.true31.if.end52_crit_edge [
    i16 0, label %land.lhs.true31.if.then51_crit_edge
    i16 1, label %land.lhs.true31.if.then51_crit_edge66
    i16 2, label %land.lhs.true31.if.then51_crit_edge67
    i16 5, label %land.lhs.true31.if.then51_crit_edge68
  ]

land.lhs.true31.if.then51_crit_edge68:            ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

land.lhs.true31.if.then51_crit_edge67:            ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

land.lhs.true31.if.then51_crit_edge66:            ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

land.lhs.true31.if.then51_crit_edge:              ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then51

land.lhs.true31.if.end52_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then51:                                        ; preds = %land.lhs.true31.if.then51_crit_edge, %land.lhs.true31.if.then51_crit_edge66, %land.lhs.true31.if.then51_crit_edge67, %land.lhs.true31.if.then51_crit_edge68
  %product = getelementptr inbounds %struct.hid_device, ptr %hdev, i32 0, i32 11
  %22 = ptrtoint ptr %product to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %product, align 8
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %23, label %if.then51.if.end52_crit_edge [
    i32 49743, label %if.then51.sw.bb_crit_edge
    i32 49678, label %if.then51.sw.bb_crit_edge69
    i32 49811, label %if.then51.sw.bb_crit_edge70
    i32 49812, label %if.then51.sw.bb_crit_edge71
    i32 49813, label %if.then51.sw.bb_crit_edge72
    i32 49816, label %if.then51.sw.bb_crit_edge73
    i32 49817, label %if.then51.sw.bb_crit_edge74
    i32 49818, label %if.then51.sw.bb_crit_edge75
    i32 49819, label %if.then51.sw.bb_crit_edge76
    i32 49820, label %if.then51.sw.bb_crit_edge77
    i32 51715, label %if.then51.sw.bb_crit_edge78
    i32 51716, label %if.then51.sw.bb_crit_edge79
  ]

if.then51.sw.bb_crit_edge79:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge78:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge77:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge76:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge75:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge74:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge73:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge72:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge71:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge70:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge69:                      ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.sw.bb_crit_edge:                        ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.then51.if.end52_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

sw.bb:                                            ; preds = %if.then51.sw.bb_crit_edge, %if.then51.sw.bb_crit_edge69, %if.then51.sw.bb_crit_edge70, %if.then51.sw.bb_crit_edge71, %if.then51.sw.bb_crit_edge72, %if.then51.sw.bb_crit_edge73, %if.then51.sw.bb_crit_edge74, %if.then51.sw.bb_crit_edge75, %if.then51.sw.bb_crit_edge76, %if.then51.sw.bb_crit_edge77, %if.then51.sw.bb_crit_edge78, %if.then51.sw.bb_crit_edge79
  %application = getelementptr inbounds %struct.hid_field, ptr %field, i32 0, i32 2
  %25 = ptrtoint ptr %application to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 65544, ptr %application, align 4
  br label %if.end52

if.end52:                                         ; preds = %sw.bb, %if.then51.if.end52_crit_edge, %land.lhs.true31.if.end52_crit_edge, %if.end26.if.end52_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_start(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_hw_raw_request(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_random_bytes(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lgff_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lg2ff_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lg3ff_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lg4ff_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hid_hw_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hid_open_report(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lg4ff_deinit(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lg4ff_raw_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lg4ff_adjust_input_event(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !44, !45, !47, !48, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !110, !111, !112, !113, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_hid_logitech__232_937_lg_driver_init6, !1, !"__initcall__kmod_hid_logitech__232_937_lg_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/hid/hid-lg.c", i32 937, i32 1}
!2 = !{ptr @__exitcall_lg_driver_exit, !1, !"__exitcall_lg_driver_exit", i1 false, i1 false}
!3 = !{ptr @lg4ff_no_autoswitch, !4, !"lg4ff_no_autoswitch", i1 false, i1 false}
!4 = !{!"../drivers/hid/hid-lg.c", i32 940, i32 5}
!5 = !{ptr @__param_lg4ff_no_autoswitch, !6, !"__param_lg4ff_no_autoswitch", i1 false, i1 false}
!6 = !{!"../drivers/hid/hid-lg.c", i32 941, i32 1}
!7 = !{ptr @__UNIQUE_ID_lg4ff_no_autoswitchtype233, !6, !"__UNIQUE_ID_lg4ff_no_autoswitchtype233", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_lg4ff_no_autoswitch234, !9, !"__UNIQUE_ID_lg4ff_no_autoswitch234", i1 false, i1 false}
!9 = !{!"../drivers/hid/hid-lg.c", i32 942, i32 1}
!10 = !{ptr @__UNIQUE_ID_file235, !11, !"__UNIQUE_ID_file235", i1 false, i1 false}
!11 = !{!"../drivers/hid/hid-lg.c", i32 945, i32 1}
!12 = !{ptr @__UNIQUE_ID_license236, !11, !"__UNIQUE_ID_license236", i1 false, i1 false}
!13 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/hid/hid-lg.c", i32 927, i32 10}
!16 = !{ptr @lg_driver, !17, !"lg_driver", i1 false, i1 false}
!17 = !{!"../drivers/hid/hid-lg.c", i32 926, i32 26}
!18 = !{ptr @lg_devices, !19, !"lg_devices", i1 false, i1 false}
!19 = !{!"../drivers/hid/hid-lg.c", i32 859, i32 35}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/hid/hid-lg.c", i32 767, i32 3}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @lg_probe._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @lg_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/hid/hid-lg.c", i32 773, i32 3}
!28 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @lg_probe._entry.5, !27, !"_entry", i1 false, i1 false}
!31 = !{ptr @lg_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/hid/hid-lg.c", i32 785, i32 3}
!34 = !{ptr @lg_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @lg_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/hid/hid-lg.c", i32 794, i32 3}
!38 = !{ptr @lg_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @lg_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @lg_probe.cbuf, !41, !"cbuf", i1 false, i1 false}
!41 = !{!"../drivers/hid/hid-lg.c", i32 800, i32 30}
!42 = !{ptr @lg_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/hid/hid-lg.c", i32 815, i32 4}
!44 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/hid/hid-lg.c", i32 437, i32 3}
!47 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @lg_report_fixup._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @lg_report_fixup._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/hid/hid-lg.c", i32 445, i32 3}
!53 = !{ptr @lg_report_fixup._entry.20, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @lg_report_fixup._entry_ptr.22, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/hid/hid-lg.c", i32 454, i32 4}
!57 = !{ptr @lg_report_fixup._entry.23, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @lg_report_fixup._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/hid/hid-lg.c", i32 459, i32 4}
!61 = !{ptr @lg_report_fixup._entry.26, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @lg_report_fixup._entry_ptr.28, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/hid/hid-lg.c", i32 467, i32 4}
!65 = !{ptr @lg_report_fixup._entry.29, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @lg_report_fixup._entry_ptr.31, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/hid/hid-lg.c", i32 477, i32 4}
!69 = !{ptr @lg_report_fixup._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @lg_report_fixup._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.36, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/hid/hid-lg.c", i32 486, i32 4}
!73 = !{ptr @lg_report_fixup._entry.35, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @lg_report_fixup._entry_ptr.37, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/hid/hid-lg.c", i32 495, i32 4}
!77 = !{ptr @lg_report_fixup._entry.38, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @lg_report_fixup._entry_ptr.40, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/hid/hid-lg.c", i32 504, i32 4}
!81 = !{ptr @lg_report_fixup._entry.41, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @lg_report_fixup._entry_ptr.43, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.45, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/hid/hid-lg.c", i32 513, i32 4}
!85 = !{ptr @lg_report_fixup._entry.44, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @lg_report_fixup._entry_ptr.46, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/hid/hid-lg.c", i32 523, i32 4}
!89 = !{ptr @lg_report_fixup._entry.47, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @lg_report_fixup._entry_ptr.49, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @fg_rdesc_fixed, !92, !"fg_rdesc_fixed", i1 false, i1 false}
!92 = !{!"../drivers/hid/hid-lg.c", i32 382, i32 13}
!93 = !{ptr @ffg_rdesc_fixed, !94, !"ffg_rdesc_fixed", i1 false, i1 false}
!94 = !{!"../drivers/hid/hid-lg.c", i32 336, i32 13}
!95 = !{ptr @df_rdesc_fixed, !96, !"df_rdesc_fixed", i1 false, i1 false}
!96 = !{!"../drivers/hid/hid-lg.c", i32 61, i32 13}
!97 = !{ptr @momo_rdesc_fixed, !98, !"momo_rdesc_fixed", i1 false, i1 false}
!98 = !{!"../drivers/hid/hid-lg.c", i32 242, i32 13}
!99 = !{ptr @momo2_rdesc_fixed, !100, !"momo2_rdesc_fixed", i1 false, i1 false}
!100 = !{!"../drivers/hid/hid-lg.c", i32 288, i32 13}
!101 = !{ptr @fv_rdesc_fixed, !102, !"fv_rdesc_fixed", i1 false, i1 false}
!102 = !{!"../drivers/hid/hid-lg.c", i32 175, i32 13}
!103 = !{ptr @dfp_rdesc_fixed, !104, !"dfp_rdesc_fixed", i1 false, i1 false}
!104 = !{!"../drivers/hid/hid-lg.c", i32 127, i32 13}
!105 = !{ptr @lg_input_mapping.e_keymap, !106, !"e_keymap", i1 false, i1 false}
!106 = !{!"../drivers/hid/hid-lg.c", i32 638, i32 18}
!107 = distinct !{null, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../include/linux/hid.h", i32 1036, i32 3}
!109 = distinct !{null, !108, !"_rs", i1 false, i1 false}
!110 = !{ptr @__func__.hid_map_usage, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @hid_map_usage._entry, !108, !"_entry", i1 false, i1 false}
!114 = !{ptr @hid_map_usage._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @__param_str_lg4ff_no_autoswitch, !6, !"__param_str_lg4ff_no_autoswitch", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
