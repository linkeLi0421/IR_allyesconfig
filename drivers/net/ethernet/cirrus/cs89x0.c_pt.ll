; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/cirrus/cs89x0.c_pt.bc'
source_filename = "../drivers/net/ethernet/cirrus/cs89x0.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.net_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.103, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.117, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.103 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.117 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.sk_buff = type { %union.anon.43, %union.anon.46, %union.anon.47, [48 x i8], %union.anon.48, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.50, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.43 = type { %struct.anon.44 }
%struct.anon.44 = type { ptr, ptr, %union.anon.45 }
%union.anon.45 = type { ptr }
%union.anon.46 = type { ptr }
%union.anon.47 = type { i64 }
%union.anon.48 = type { %struct.anon.49 }
%struct.anon.49 = type { i32, ptr }
%union.anon.50 = type { %struct.anon.51 }
%struct.anon.51 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.52, i32, i32, i32, i16, i16, %union.anon.54, i32, %union.anon.55, %union.anon.56, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.52 = type { i32 }
%union.anon.54 = type { i32 }
%union.anon.55 = type { i32 }
%union.anon.56 = type { i16 }
%struct.sockaddr = type { i16, [14 x i8] }

@__setup_str_media_fn = internal constant [14 x i8] c"cs89x0_media=\00", section ".init.rodata", align 1
@__setup_media_fn = internal global %struct.obs_kernel_param { ptr @__setup_str_media_fn, ptr @media_fn, i32 0 }, section ".init.setup", align 4
@__initcall__kmod_cs89x0__352_1910_cs89x0_driver_init6 = internal global ptr @cs89x0_driver_init, section ".initcall6.init", align 4
@cs89x0_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @cs89x0_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.12, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cs89x0_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cs89x0_driver_exit = internal global ptr @cs89x0_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file353 = internal constant [47 x i8] c"cs89x0.file=drivers/net/ethernet/cirrus/cs89x0\00", section ".modinfo", align 1
@__UNIQUE_ID_license354 = internal constant [19 x i8] c"cs89x0.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [85 x i8] c"cs89x0.description=Crystal Semiconductor (Now Cirrus Logic) CS89[02]0 network driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author356 = internal constant [49 x i8] c"cs89x0.author=Russell Nelson <nelson@crynwr.com>\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rj45\00", [27 x i8] zeroinitializer }, align 32
@g_cs89x0_media__force = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aui\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"bnc\00", [28 x i8] zeroinitializer }, align 32
@cs89x0_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1857, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"interrupt resource missing\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs89x0_platform_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/net/ethernet/cirrus/cs89x0.c\00", [59 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cs89x0_platform_probe._entry_ptr = internal global ptr @cs89x0_platform_probe._entry, section ".printk_index", align 4
@cs89x0_platform_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 1870, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"no cs8900 or cs8920 detected\0A\00", [34 x i8] zeroinitializer }, align 32
@cs89x0_platform_probe._entry_ptr.10 = internal global ptr @cs89x0_platform_probe._entry.8, section ".printk_index", align 4
@cs89x0_probe1.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&lp->lock\00", [22 x i8] zeroinitializer }, align 32
@cs89x0_probe1.__UNIQUE_ID_ddebug348 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.14, i8 1, i8 78, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cs89x0\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs89x0_probe1\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"PP_addr at %p[%x]: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"cs89x0: PP_addr at %p[%x]: 0x%x\0A\00", [63 x i8] zeroinitializer }, align 32
@cs89x0_probe1.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.16, i8 1, i8 80, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"%s: incorrect signature at %p[%x]: 0x%x!=0x630E\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"cs89x0: %s: incorrect signature at %p[%x]: 0x%x!=0x630E\0A\00", [39 x i8] zeroinitializer }, align 32
@cs89x0_probe1.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@cs89x0_probe1._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.13, ptr @.str.5, i32 1366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016cs89x0: %s\0A\00", [18 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr = internal global ptr @cs89x0_probe1._entry, section ".printk_index", align 4
@version = internal global [62 x i8] c"v2.4.3-pre1 Russell Nelson <nelson@crynwr.com>, Andrew Morton\00", section ".init.data", align 1
@cs89x0_probe1._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.13, ptr @.str.5, i32 1373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016cs89x0: %s: cs89%c0%s rev %c found at %p \00", [52 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.21 = internal global ptr @cs89x0_probe1._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@cs89x0_probe1._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.13, ptr @.str.5, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016cs89x0: %s: PP_LineCTL=0x%x, adapter_cnf=0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.26 = internal global ptr @cs89x0_probe1._entry.24, section ".printk_index", align 4
@cs89x0_probe1._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.13, ptr @.str.5, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c[Cirrus EEPROM] \00", [45 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.29 = internal global ptr @cs89x0_probe1._entry.27, section ".printk_index", align 4
@cs89x0_probe1._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.13, ptr @.str.5, i32 1436, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.32 = internal global ptr @cs89x0_probe1._entry.30, section ".printk_index", align 4
@cs89x0_probe1._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.13, ptr @.str.5, i32 1441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\014cs89x0: No EEPROM, relying on command line....\0A\00", [46 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.35 = internal global ptr @cs89x0_probe1._entry.33, section ".printk_index", align 4
@cs89x0_probe1._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.13, ptr @.str.5, i32 1443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\014cs89x0: EEPROM read failed, relying on command line\0A\00", [41 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.38 = internal global ptr @cs89x0_probe1._entry.36, section ".printk_index", align 4
@cs89x0_probe1._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.13, ptr @.str.5, i32 1449, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\014cs89x0: Extended EEPROM checksum bad and no Cirrus EEPROM, relying on command line\0A\00", [42 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.41 = internal global ptr @cs89x0_probe1._entry.39, section ".printk_index", align 4
@cs89x0_probe1.__UNIQUE_ID_ddebug350 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.42, i8 1, i8 112, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: new adapter_cnf: 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cs89x0: %s: new adapter_cnf: 0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@cs89x0_probe1.__UNIQUE_ID_ddebug351 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.5, ptr @.str.44, i8 1, i8 119, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: after force 0x%x, adapter_cnf=0x%x\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"cs89x0: %s: after force 0x%x, adapter_cnf=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.13, ptr @.str.5, i32 1516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016cs89x0: media %s%s%s\00", [41 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.48 = internal global ptr @cs89x0_probe1._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RJ-45,\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AUI,\00", [27 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BNC,\00", [27 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.13, ptr @.str.5, i32 1554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c IRQ %d\00", [22 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.54 = internal global ptr @cs89x0_probe1._entry.52, section ".printk_index", align 4
@cs89x0_probe1._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.13, ptr @.str.5, i32 1562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\01c, programmed I/O\00", [45 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.57 = internal global ptr @cs89x0_probe1._entry.55, section ".printk_index", align 4
@cs89x0_probe1._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.13, ptr @.str.5, i32 1565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01c, MAC %pM\0A\00", [19 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.60 = internal global ptr @cs89x0_probe1._entry.58, section ".printk_index", align 4
@net_ops = internal constant { %struct.net_device_ops, [80 x i8] } { %struct.net_device_ops { ptr null, ptr null, ptr @net_open, ptr @net_close, ptr @net_send_packet, ptr null, ptr null, ptr null, ptr @set_multicast_list, ptr @set_mac_address, ptr @eth_validate_addr, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @net_timeout, ptr null, ptr null, ptr null, ptr @net_get_stats, ptr null, ptr null, ptr @net_poll_controller, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [80 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.13, ptr @.str.5, i32 1570, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cs89x0: cs89x0_probe1() successful\0A\00", [58 x i8] zeroinitializer }, align 32
@cs89x0_probe1._entry_ptr.63 = internal global ptr @cs89x0_probe1._entry.61, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@get_eeprom_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.65, ptr @.str.5, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016cs89x0: EEPROM data from %x for %x:\00", [58 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"get_eeprom_data\00", [16 x i8] zeroinitializer }, align 32
@get_eeprom_data._entry_ptr = internal global ptr @get_eeprom_data._entry, section ".printk_index", align 4
@get_eeprom_data._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.65, ptr @.str.5, i32 269, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c %04x\00", [24 x i8] zeroinitializer }, align 32
@get_eeprom_data._entry_ptr.68 = internal global ptr @get_eeprom_data._entry.66, section ".printk_index", align 4
@get_eeprom_data._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.65, ptr @.str.5, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@get_eeprom_data._entry_ptr.70 = internal global ptr @get_eeprom_data._entry.69, section ".printk_index", align 4
@net_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.72, ptr @.str.5, i32 857, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cs89x0: can't get an interrupt\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"net_open\00", [23 x i8] zeroinitializer }, align 32
@net_open._entry_ptr = internal global ptr @net_open._entry, section ".printk_index", align 4
@net_open._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.5, i32 879, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013cs89x0: request_irq(%d) failed\0A\00", [62 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.75 = internal global ptr @net_open._entry.73, section ".printk_index", align 4
@net_open._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.72, ptr @.str.5, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013cs89x0: %s: EEPROM is configured for unavailable media\0A\00", [38 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.78 = internal global ptr @net_open._entry.76, section ".printk_index", align 4
@net_open._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.72, ptr @.str.5, i32 978, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\014cs89x0: %s: 10Base-T (RJ-45) has no cable\0A\00", [51 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.81 = internal global ptr @net_open._entry.79, section ".printk_index", align 4
@net_open._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.72, ptr @.str.5, i32 986, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014cs89x0: %s: 10Base-5 (AUI) has no cable\0A\00", [53 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.84 = internal global ptr @net_open._entry.82, section ".printk_index", align 4
@net_open._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.72, ptr @.str.5, i32 994, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014cs89x0: %s: 10Base-2 (BNC) has no cable\0A\00", [53 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.87 = internal global ptr @net_open._entry.85, section ".printk_index", align 4
@net_open._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.72, ptr @.str.5, i32 1016, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cs89x0: %s: no media detected\0A\00", [63 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.90 = internal global ptr @net_open._entry.88, section ".printk_index", align 4
@net_open._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.72, ptr @.str.5, i32 1022, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013cs89x0: %s: no network cable attached to configured media\0A\00", [35 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.93 = internal global ptr @net_open._entry.91, section ".printk_index", align 4
@net_open._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.72, ptr @.str.5, i32 1025, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cs89x0: %s: using half-duplex 10Base-T (RJ-45)\0A\00", [46 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.96 = internal global ptr @net_open._entry.94, section ".printk_index", align 4
@net_open._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.72, ptr @.str.5, i32 1028, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\016cs89x0: %s: using full-duplex 10Base-T (RJ-45)\0A\00", [46 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.99 = internal global ptr @net_open._entry.97, section ".printk_index", align 4
@net_open._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.72, ptr @.str.5, i32 1031, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016cs89x0: %s: using 10Base-5 (AUI)\0A\00", [60 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.102 = internal global ptr @net_open._entry.100, section ".printk_index", align 4
@net_open._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.72, ptr @.str.5, i32 1034, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016cs89x0: %s: using 10Base-2 (BNC)\0A\00", [60 x i8] zeroinitializer }, align 32
@net_open._entry_ptr.105 = internal global ptr @net_open._entry.103, section ".printk_index", align 4
@net_open.__UNIQUE_ID_ddebug345 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.72, ptr @.str.5, ptr @.str.106, i8 1, i8 13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.106 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net_open() succeeded\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cs89x0: net_open() succeeded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"net_interrupt\00", [18 x i8] zeroinitializer }, align 32
@net_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.111, ptr @.str.108, ptr @.str.5, i32 769, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013cs89x0: %s: transmit underrun\0A\00", [63 x i8] zeroinitializer }, align 32
@net_interrupt._entry_ptr = internal global ptr @net_interrupt._entry, section ".printk_index", align 4
@detect_tp.__UNIQUE_ID_ddebug340 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.115, ptr @.str.5, ptr @.str.116, i8 0, i8 -115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"detect_tp\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Attempting TP\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cs89x0: %s: Attempting TP\0A\00", [37 x i8] zeroinitializer }, align 32
@detect_tp._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.115, ptr @.str.5, i32 621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016cs89x0: %s: negotiating duplex...\0A\00", [59 x i8] zeroinitializer }, align 32
@detect_tp._entry_ptr = internal global ptr @detect_tp._entry, section ".printk_index", align 4
@detect_tp._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.5, i32 624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013cs89x0: **** Full / half duplex auto-negotiation timed out ****\0A\00", [61 x i8] zeroinitializer }, align 32
@detect_tp._entry_ptr.121 = internal global ptr @detect_tp._entry.119, section ".printk_index", align 4
@detect_aui.__UNIQUE_ID_ddebug342 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.122, ptr @.str.5, ptr @.str.123, i8 0, i8 -92, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"detect_aui\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Attempting AUI\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs89x0: %s: Attempting AUI\0A\00", [36 x i8] zeroinitializer }, align 32
@__const.send_test_pkt.test_packet = private unnamed_addr constant [18 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00.\00\00\F3\00", align 1
@send_test_pkt.__UNIQUE_ID_ddebug339 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.125, ptr @.str.5, ptr @.str.126, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"send_test_pkt\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Sending test packet \00", [43 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"cs89x0: Sending test packet \00", [35 x i8] zeroinitializer }, align 32
@send_test_pkt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.125, ptr @.str.5, i32 544, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01csucceeded\0A\00", [19 x i8] zeroinitializer }, align 32
@send_test_pkt._entry_ptr = internal global ptr @send_test_pkt._entry, section ".printk_index", align 4
@send_test_pkt._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.125, ptr @.str.5, i32 547, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cfailed\0A\00", [22 x i8] zeroinitializer }, align 32
@send_test_pkt._entry_ptr.131 = internal global ptr @send_test_pkt._entry.129, section ".printk_index", align 4
@detect_bnc.__UNIQUE_ID_ddebug341 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.132, ptr @.str.5, ptr @.str.133, i8 0, i8 -96, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"detect_bnc\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: Attempting BNC\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cs89x0: %s: Attempting BNC\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net_send_packet\00", [16 x i8] zeroinitializer }, align 32
@net_send_packet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.135, ptr @.str.5, i32 1171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013cs89x0: Tx buffer not free!\0A\00", [33 x i8] zeroinitializer }, align 32
@net_send_packet._entry_ptr = internal global ptr @net_send_packet._entry, section ".printk_index", align 4
@set_mac_address.__UNIQUE_ID_ddebug347 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.139, ptr @.str.5, ptr @.str.140, i8 1, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.139 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"set_mac_address\00", [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Setting MAC address to %pM\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cs89x0: %s: Setting MAC address to %pM\0A\00", [56 x i8] zeroinitializer }, align 32
@net_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.5, i32 1137, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013cs89x0: %s: transmit timed out, %s?\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"net_timeout\00", [20 x i8] zeroinitializer }, align 32
@net_timeout._entry_ptr = internal global ptr @net_timeout._entry, section ".printk_index", align 4
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IRQ conflict\00", [19 x i8] zeroinitializer }, align 32
@cs89x0_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs8900\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"cirrus,cs8920\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@switch.table.net_open = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 256, i64 512]
@__sancov_gen_cov_switch_values.145 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 64]
@__sancov_gen_cov_switch_values.146 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 3, i64 6]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 4, i64 6, i64 7]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 5]
@__sancov_gen_cov_switch_values.149 = internal global [4 x i64] [i64 2, i64 8, i64 16, i64 48]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 8, i64 16, i64 32, i64 48]
@___asan_gen_.151 = private unnamed_addr constant [14 x i8] c"cs89x0_driver\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1902, i32 31 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 184, i32 19 }
@___asan_gen_.157 = private unnamed_addr constant [22 x i8] c"g_cs89x0_media__force\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 180, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 186, i32 24 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 188, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1857, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1870, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1323, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1336, i32 2 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1342, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1366, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1368, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1426, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1433, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1436, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1441, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1443, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1449, i32 4 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1473, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1502, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1513, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1554, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1562, i32 3 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1565, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant [8 x i8] c"net_ops\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1257, i32 36 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1570, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 260, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 269, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 271, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 857, i32 4 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 879, i32 4 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 957, i32 3 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 977, i32 4 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 986, i32 4 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 994, i32 4 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1016, i32 3 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1021, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1025, i32 3 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1028, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1031, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1034, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1079, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 730, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 768, i32 5 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 564, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 621, i32 4 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 624, i32 6 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 658, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 539, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 544, i32 3 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 547, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 642, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1147, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1171, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1232, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.517 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1135, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant [13 x i8] c"cs89x0_match\00", align 1
@___asan_gen_.521 = private constant [40 x i8] c"../drivers/net/ethernet/cirrus/cs89x0.c\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 1895, i32 49 }
@___asan_gen_.523 = private unnamed_addr constant [22 x i8] c"switch.table.net_open\00", align 1
@llvm.compiler.used = appending global [170 x ptr] [ptr @__UNIQUE_ID_author356, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file353, ptr @__UNIQUE_ID_license354, ptr @__exitcall_cs89x0_driver_exit, ptr @__initcall__kmod_cs89x0__352_1910_cs89x0_driver_init6, ptr @__setup_media_fn, ptr @cs89x0_driver_exit, ptr @cs89x0_platform_probe._entry, ptr @cs89x0_platform_probe._entry.8, ptr @cs89x0_platform_probe._entry_ptr, ptr @cs89x0_platform_probe._entry_ptr.10, ptr @cs89x0_probe1._entry, ptr @cs89x0_probe1._entry.19, ptr @cs89x0_probe1._entry.24, ptr @cs89x0_probe1._entry.27, ptr @cs89x0_probe1._entry.30, ptr @cs89x0_probe1._entry.33, ptr @cs89x0_probe1._entry.36, ptr @cs89x0_probe1._entry.39, ptr @cs89x0_probe1._entry.46, ptr @cs89x0_probe1._entry.52, ptr @cs89x0_probe1._entry.55, ptr @cs89x0_probe1._entry.58, ptr @cs89x0_probe1._entry.61, ptr @cs89x0_probe1._entry_ptr, ptr @cs89x0_probe1._entry_ptr.21, ptr @cs89x0_probe1._entry_ptr.26, ptr @cs89x0_probe1._entry_ptr.29, ptr @cs89x0_probe1._entry_ptr.32, ptr @cs89x0_probe1._entry_ptr.35, ptr @cs89x0_probe1._entry_ptr.38, ptr @cs89x0_probe1._entry_ptr.41, ptr @cs89x0_probe1._entry_ptr.48, ptr @cs89x0_probe1._entry_ptr.54, ptr @cs89x0_probe1._entry_ptr.57, ptr @cs89x0_probe1._entry_ptr.60, ptr @cs89x0_probe1._entry_ptr.63, ptr @detect_tp._entry, ptr @detect_tp._entry.119, ptr @detect_tp._entry_ptr, ptr @detect_tp._entry_ptr.121, ptr @get_eeprom_data._entry, ptr @get_eeprom_data._entry.66, ptr @get_eeprom_data._entry.69, ptr @get_eeprom_data._entry_ptr, ptr @get_eeprom_data._entry_ptr.68, ptr @get_eeprom_data._entry_ptr.70, ptr @net_interrupt._entry, ptr @net_interrupt._entry_ptr, ptr @net_open._entry, ptr @net_open._entry.100, ptr @net_open._entry.103, ptr @net_open._entry.73, ptr @net_open._entry.76, ptr @net_open._entry.79, ptr @net_open._entry.82, ptr @net_open._entry.85, ptr @net_open._entry.88, ptr @net_open._entry.91, ptr @net_open._entry.94, ptr @net_open._entry.97, ptr @net_open._entry_ptr, ptr @net_open._entry_ptr.102, ptr @net_open._entry_ptr.105, ptr @net_open._entry_ptr.75, ptr @net_open._entry_ptr.78, ptr @net_open._entry_ptr.81, ptr @net_open._entry_ptr.84, ptr @net_open._entry_ptr.87, ptr @net_open._entry_ptr.90, ptr @net_open._entry_ptr.93, ptr @net_open._entry_ptr.96, ptr @net_open._entry_ptr.99, ptr @net_send_packet._entry, ptr @net_send_packet._entry_ptr, ptr @net_timeout._entry, ptr @net_timeout._entry_ptr, ptr @send_test_pkt._entry, ptr @send_test_pkt._entry.129, ptr @send_test_pkt._entry_ptr, ptr @send_test_pkt._entry_ptr.131, ptr @cs89x0_driver, ptr @.str, ptr @g_cs89x0_media__force, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @cs89x0_probe1.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @net_ops, ptr @.str.62, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @.str.71, ptr @.str.72, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.111, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.130, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @cs89x0_match, ptr @switch.table.net_open], section "llvm.metadata"
@0 = internal global [125 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @g_cs89x0_media__force to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_platform_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_ops to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_probe1._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_eeprom_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_eeprom_data._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_eeprom_data._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_open._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_tp._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @detect_tp._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_test_pkt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @send_test_pkt._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_send_packet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cs89x0_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.net_open to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @media_fn(ptr nocapture noundef readonly %str) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(5) @.str) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end9.sink.split_crit_edge, label %if.else

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %call1 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else.if.end9.sink.split_crit_edge, label %if.else4

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

if.else4:                                         ; preds = %if.else
  %call5 = tail call i32 @strcmp(ptr noundef %str, ptr noundef nonnull dereferenceable(4) @.str.2) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.else4.if.end9.sink.split_crit_edge, label %if.else4.if.end9_crit_edge

if.else4.if.end9_crit_edge:                       ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.else4.if.end9.sink.split_crit_edge:            ; preds = %if.else4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else4.if.end9.sink.split_crit_edge, %if.else.if.end9.sink.split_crit_edge, %entry.if.end9.sink.split_crit_edge
  %.sink = phi i32 [ 1, %entry.if.end9.sink.split_crit_edge ], [ 2, %if.else.if.end9.sink.split_crit_edge ], [ 4, %if.else4.if.end9.sink.split_crit_edge ]
  store i32 %.sink, ptr @g_cs89x0_media__force, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else4.if.end9_crit_edge
  ret i32 1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs89x0_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @cs89x0_driver, ptr noundef nonnull @cs89x0_platform_probe, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cs89x0_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cs89x0_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cs89x0_platform_probe(ptr noundef %pdev) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @alloc_etherdev_mqs(i32 noundef 96, i32 noundef 1, i32 noundef 1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  %irq = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call1, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp = icmp slt i32 %call1, 1
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev4 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev4, ptr noundef nonnull @.str.3) #12
  br label %free

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call6 to i32
  br label %free

if.end10:                                         ; preds = %if.end5
  %call11 = tail call fastcc i32 @cs89x0_probe1(ptr noundef nonnull %call, ptr noundef %call6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end18, label %do.end16

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %dev17 = getelementptr inbounds %struct.net_device, ptr %call, i32 0, i32 133
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev17, ptr noundef nonnull @.str.9) #12
  br label %free

if.end18:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

free:                                             ; preds = %do.end16, %if.then8, %do.end
  %err.0 = phi i32 [ -6, %do.end ], [ %1, %if.then8 ], [ %call11, %do.end16 ]
  tail call void @free_netdev(ptr noundef nonnull %call) #8
  br label %cleanup

cleanup:                                          ; preds = %free, %if.end18, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %free ], [ 0, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_etherdev_mqs(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cs89x0_probe1(ptr noundef %dev, ptr noundef %ioaddr) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %eeprom_buff = alloca [20 x i32], align 4
  %addr = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %eeprom_buff) #8
  %0 = call ptr @memset(ptr %eeprom_buff, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %addr) #8
  %1 = call ptr @memset(ptr %addr, i32 255, i32 6)
  %2 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 96)
  %lock = getelementptr i8, ptr %dev, i32 2352
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @cs89x0_probe1.__key, i16 noundef signext 3) #8
  %3 = load i32, ptr @g_cs89x0_media__force, align 4
  %force = getelementptr i8, ptr %dev, i32 2348
  %4 = ptrtoint ptr %force to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %force, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs89x0_probe1.__UNIQUE_ID_ddebug348, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs89x0_probe1, %if.then9)) #8
          to label %do.end13 [label %if.then9], !srcloc !266

if.then9:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %ioaddr, i32 10
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !267
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv = zext i16 %6 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cs89x0_probe1.__UNIQUE_ID_ddebug348, ptr noundef nonnull @.str.15, ptr noundef %ioaddr, i32 noundef 10, i32 noundef %conv) #8
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %entry
  %add.ptr14 = getelementptr i8, ptr %ioaddr, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 0) #8, !srcloc !270
  %add.ptr15 = getelementptr i8, ptr %ioaddr, i32 12
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr15) #8, !srcloc !267
  %8 = tail call i16 @llvm.bswap.i16(i16 %7) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv17 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 3683, i16 %7)
  %cmp.not = icmp eq i16 %7, 3683
  br i1 %cmp.not, label %if.end36, label %do.body20

do.body20:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs89x0_probe1.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs89x0_probe1, %if.then32)) #8
          to label %cleanup [label %if.then32], !srcloc !266

if.then32:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cs89x0_probe1.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.17, ptr noundef %dev, ptr noundef %ioaddr, i32 noundef 12, i32 noundef %conv17) #8
  br label %cleanup

if.end36:                                         ; preds = %do.end13
  %virt_addr = getelementptr i8, ptr %dev, i32 2396
  %9 = ptrtoint ptr %virt_addr to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ioaddr, ptr %virt_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr14, i16 512) #8, !srcloc !270
  %10 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %14 = and i16 %13, -7937
  %and = zext i16 %14 to i32
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and, ptr %add.ptr.i, align 4
  %and39 = lshr i16 %13, 8
  %16 = trunc i16 %and39 to i8
  %17 = and i8 %16, 31
  %conv40 = add nuw nsw i8 %17, 65
  %chip_revision = getelementptr i8, ptr %dev, i32 2308
  %18 = ptrtoint ptr %chip_revision to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv40, ptr %chip_revision, align 4
  %send_cmd = getelementptr i8, ptr %dev, i32 2312
  %19 = ptrtoint ptr %send_cmd to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 64, ptr %send_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %14)
  %cmp42 = icmp eq i16 %14, 0
  br i1 %cmp42, label %land.lhs.true, label %land.lhs.true54

land.lhs.true:                                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %17)
  %cmp46 = icmp ugt i8 %17, 4
  br i1 %cmp46, label %land.lhs.true.land.end.sink.split_crit_edge, label %land.lhs.true.land.end_crit_edge

land.lhs.true.land.end_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true.land.end.sink.split_crit_edge:      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.sink.split

land.lhs.true54:                                  ; preds = %if.end36
  %20 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %chip_revision, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 66, i8 %21)
  %cmp57 = icmp ugt i8 %21, 66
  br i1 %cmp57, label %land.lhs.true54.land.end.sink.split_crit_edge, label %land.lhs.true54.land.end_crit_edge

land.lhs.true54.land.end_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.lhs.true54.land.end.sink.split_crit_edge:    ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end.sink.split

land.end.sink.split:                              ; preds = %land.lhs.true54.land.end.sink.split_crit_edge, %land.lhs.true.land.end.sink.split_crit_edge
  %22 = ptrtoint ptr %send_cmd to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %send_cmd, align 4
  br label %land.end

land.end:                                         ; preds = %land.end.sink.split, %land.lhs.true54.land.end_crit_edge, %land.lhs.true.land.end_crit_edge
  %.b1 = load i1, ptr @cs89x0_probe1.__already_done, align 1
  br i1 %.b1, label %land.end.if.end79_crit_edge, label %if.then73, !prof !271

land.end.if.end79_crit_edge:                      ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end79

if.then73:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cs89x0_probe1.__already_done, align 1
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @version) #12
  br label %if.end79

if.end79:                                         ; preds = %if.then73, %land.end.if.end79_crit_edge
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp94 = icmp eq i32 %24, 0
  %cond = select i1 %cmp94, i32 48, i32 50
  call void @__sanitizer_cov_trace_const_cmp4(i32 24576, i32 %24)
  %cmp97 = icmp eq i32 %24, 24576
  %cond99 = select i1 %cmp97, ptr @.str.22, ptr @.str.23
  %25 = ptrtoint ptr %chip_revision to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %chip_revision, align 4
  %conv101 = zext i8 %26 to i32
  %27 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %virt_addr, align 4
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %dev, i32 noundef %cond, ptr noundef nonnull %cond99, i32 noundef %conv101, ptr noundef %28) #12
  tail call fastcc void @reset_chip(ptr noundef %dev) #13
  %29 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %virt_addr, align 4
  %add.ptr.i13 = getelementptr i8, ptr %30, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i13, i16 13825) #8, !srcloc !270
  %31 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i14 = getelementptr i8, ptr %32, i32 12
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i14) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %34 = and i16 %33, 6
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %34)
  %cmp107 = icmp eq i16 %34, 6
  br i1 %cmp107, label %if.end79.for.body_crit_edge, label %if.end79.do.end192_crit_edge

if.end79.do.end192_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end192

if.end79.for.body_crit_edge:                      ; preds = %if.end79
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end79.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end79.for.body_crit_edge ]
  %mul = shl nuw i32 %i.031, 1
  %35 = trunc i32 %mul to i16
  %conv113 = add i16 %35, 344
  %36 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %virt_addr, align 4
  %add.ptr.i16 = getelementptr i8, ptr %37, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %38 = tail call i16 @llvm.bswap.i16(i16 %conv113) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 %38) #8, !srcloc !270
  %39 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i17 = getelementptr i8, ptr %40, i32 12
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i17) #8, !srcloc !267
  %42 = tail call i16 @llvm.bswap.i16(i16 %41) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv117 = trunc i16 %42 to i8
  %arrayidx = getelementptr [6 x i8], ptr %addr, i32 0, i32 %mul
  %43 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv117, ptr %arrayidx, align 1
  %44 = lshr i16 %42, 8
  %conv120 = trunc i16 %44 to i8
  %add122 = or i32 %mul, 1
  %arrayidx123 = getelementptr [6 x i8], ptr %addr, i32 0, i32 %add122
  %45 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv120, ptr %arrayidx123, align 1
  %inc = add nuw nsw i32 %i.031, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  %adapter_cnf = getelementptr i8, ptr %dev, i32 2320
  %46 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %adapter_cnf, align 4
  %47 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %virt_addr, align 4
  %add.ptr.i19 = getelementptr i8, ptr %48, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i19, i16 4609) #8, !srcloc !270
  %49 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i20 = getelementptr i8, ptr %50, i32 12
  %51 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i20) #8, !srcloc !267
  %52 = call i16 @llvm.bswap.i16(i16 %51) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv126 = zext i16 %52 to i32
  %and127 = and i32 %conv126, 40960
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %and127)
  %cmp128 = icmp eq i32 %and127, 40960
  br i1 %cmp128, label %if.then130, label %for.end.if.end132_crit_edge

for.end.if.end132_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end132

if.then130:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %adapter_cnf, align 4
  %or = or i32 %54, 128
  store i32 %or, ptr %adapter_cnf, align 4
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %for.end.if.end132_crit_edge
  %and133 = and i32 %conv126, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133)
  %cmp134.not = icmp eq i32 %and133, 0
  br i1 %cmp134.not, label %if.end132.if.end139_crit_edge, label %if.then136

if.end132.if.end139_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end139

if.then136:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %adapter_cnf, align 4
  %or138 = or i32 %56, 49152
  store i32 %or138, ptr %adapter_cnf, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then136, %if.end132.if.end139_crit_edge
  %and140 = and i32 %conv126, 768
  %57 = zext i32 %and140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and140, label %if.end139.do.end167_crit_edge [
    i32 0, label %if.end139.do.end167.sink.split_crit_edge
    i32 256, label %if.then150
    i32 512, label %if.then157
  ]

if.end139.do.end167.sink.split_crit_edge:         ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end167.sink.split

if.end139.do.end167_crit_edge:                    ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end167

if.then150:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end167.sink.split

if.then157:                                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end167.sink.split

do.end167.sink.split:                             ; preds = %if.then157, %if.then150, %if.end139.do.end167.sink.split_crit_edge
  %.sink34 = phi i32 [ 66, %if.then150 ], [ 115, %if.then157 ], [ 33, %if.end139.do.end167.sink.split_crit_edge ]
  %58 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %adapter_cnf, align 4
  %or152 = or i32 %59, %.sink34
  store i32 %or152, ptr %adapter_cnf, align 4
  br label %do.end167

do.end167:                                        ; preds = %do.end167.sink.split, %if.end139.do.end167_crit_edge
  %60 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %adapter_cnf, align 4
  %call172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %dev, i32 noundef %conv126, i32 noundef %61) #12
  %62 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp177 = icmp eq i32 %63, 0
  br i1 %cmp177, label %if.then179, label %do.end167.do.end186_crit_edge

do.end167.do.end186_crit_edge:                    ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end186

if.then179:                                       ; preds = %do.end167
  call void @__sanitizer_cov_trace_pc() #10
  %call180 = call fastcc zeroext i16 @readreg(ptr noundef %dev, i16 noundef zeroext 34)
  %64 = and i16 %call180, 15
  %and182 = zext i16 %64 to i32
  %isa_config = getelementptr i8, ptr %dev, i32 2324
  %65 = ptrtoint ptr %isa_config to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %and182, ptr %isa_config, align 4
  br label %do.end186

do.end186:                                        ; preds = %if.then179, %do.end167.do.end186_crit_edge
  %call188 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #12
  br label %do.end192

do.end192:                                        ; preds = %do.end186, %if.end79.do.end192_crit_edge
  %call194 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #12
  %66 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virt_addr, align 4
  %add.ptr.i22 = getelementptr i8, ptr %67, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i22, i16 13825) #8, !srcloc !270
  %68 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i23 = getelementptr i8, ptr %69, i32 12
  %70 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i23) #8, !srcloc !267
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %71 = and i16 %70, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %71)
  %cmp198 = icmp eq i16 %71, 0
  br i1 %cmp198, label %do.end203, label %if.else

do.end203:                                        ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #10
  %call205 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #12
  br label %if.end295

if.else:                                          ; preds = %do.end192
  %call207 = call fastcc i32 @get_eeprom_data(ptr noundef %dev, ptr noundef nonnull %eeprom_buff) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %cmp208 = icmp slt i32 %call207, 0
  br i1 %cmp208, label %do.end213, label %if.else.for.body.i_crit_edge

if.else.for.body.i_crit_edge:                     ; preds = %if.else
  br label %for.body.i

do.end213:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37) #12
  br label %if.end295

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.else.for.body.i_crit_edge
  %cksum.02.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %i.01.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.else.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %eeprom_buff, i32 %i.01.i
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %73, %cksum.02.i
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %get_eeprom_cksum.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

get_eeprom_cksum.exit:                            ; preds = %for.body.i
  %and.i = and i32 %add.i, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp1.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp1.i.not, label %if.else234, label %if.then221

if.then221:                                       ; preds = %get_eeprom_cksum.exit
  %call222 = call fastcc zeroext i16 @readreg(ptr noundef %dev, i16 noundef zeroext 310)
  %74 = and i16 %call222, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %74)
  %cmp225.not = icmp eq i16 %74, 1536
  br i1 %cmp225.not, label %if.then221.if.end295_crit_edge, label %do.end230

if.then221.if.end295_crit_edge:                   ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end295

do.end230:                                        ; preds = %if.then221
  call void @__sanitizer_cov_trace_pc() #10
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #12
  br label %if.end295

if.else234:                                       ; preds = %get_eeprom_cksum.exit
  %auto_neg_cnf = getelementptr i8, ptr %dev, i32 2316
  %75 = ptrtoint ptr %auto_neg_cnf to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %auto_neg_cnf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool235.not = icmp eq i32 %76, 0
  br i1 %tobool235.not, label %if.then236, label %if.else234.if.end239_crit_edge

if.else234.if.end239_crit_edge:                   ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239

if.then236:                                       ; preds = %if.else234
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx237 = getelementptr inbounds [20 x i32], ptr %eeprom_buff, i32 0, i32 7
  %77 = ptrtoint ptr %arrayidx237 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx237, align 4
  %79 = ptrtoint ptr %auto_neg_cnf to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %auto_neg_cnf, align 4
  br label %if.end239

if.end239:                                        ; preds = %if.then236, %if.else234.if.end239_crit_edge
  %adapter_cnf240 = getelementptr i8, ptr %dev, i32 2320
  %80 = ptrtoint ptr %adapter_cnf240 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %adapter_cnf240, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool241.not = icmp eq i32 %81, 0
  br i1 %tobool241.not, label %if.then242, label %if.end239.if.end245_crit_edge

if.end239.if.end245_crit_edge:                    ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end245

if.then242:                                       ; preds = %if.end239
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx243 = getelementptr inbounds [20 x i32], ptr %eeprom_buff, i32 0, i32 8
  %82 = ptrtoint ptr %arrayidx243 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx243, align 4
  %84 = ptrtoint ptr %adapter_cnf240 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %adapter_cnf240, align 4
  br label %if.end245

if.end245:                                        ; preds = %if.then242, %if.end239.if.end245_crit_edge
  %arrayidx246 = getelementptr inbounds [20 x i32], ptr %eeprom_buff, i32 0, i32 3
  %85 = ptrtoint ptr %arrayidx246 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx246, align 4
  %isa_config247 = getelementptr i8, ptr %dev, i32 2324
  %87 = ptrtoint ptr %isa_config247 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %isa_config247, align 4
  %arrayidx248 = getelementptr inbounds [20 x i32], ptr %eeprom_buff, i32 0, i32 4
  %88 = ptrtoint ptr %arrayidx248 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx248, align 4
  %shl = shl i32 %89, 8
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %90 = ptrtoint ptr %mem_start to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %shl, ptr %mem_start, align 4
  br label %for.body252

for.body252:                                      ; preds = %for.body252.for.body252_crit_edge, %if.end245
  %i.132 = phi i32 [ 0, %if.end245 ], [ %inc264, %for.body252.for.body252_crit_edge ]
  %arrayidx253 = getelementptr [20 x i32], ptr %eeprom_buff, i32 0, i32 %i.132
  %91 = ptrtoint ptr %arrayidx253 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %arrayidx253, align 4
  %conv254 = trunc i32 %92 to i8
  %mul255 = shl nuw i32 %i.132, 1
  %arrayidx256 = getelementptr [6 x i8], ptr %addr, i32 0, i32 %mul255
  %93 = ptrtoint ptr %arrayidx256 to i32
  call void @__asan_store1_noabort(i32 %93)
  store i8 %conv254, ptr %arrayidx256, align 1
  %94 = lshr i32 %92, 8
  %conv259 = trunc i32 %94 to i8
  %add261 = or i32 %mul255, 1
  %arrayidx262 = getelementptr [6 x i8], ptr %addr, i32 0, i32 %add261
  %95 = ptrtoint ptr %arrayidx262 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 %conv259, ptr %arrayidx262, align 1
  %inc264 = add nuw nsw i32 %i.132, 1
  %exitcond33.not = icmp eq i32 %inc264, 3
  br i1 %exitcond33.not, label %for.end265, label %for.body252.for.body252_crit_edge

for.body252.for.body252_crit_edge:                ; preds = %for.body252
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body252

for.end265:                                       ; preds = %for.body252
  call void @__sanitizer_cov_trace_pc() #10
  call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef nonnull %addr, i32 noundef 6) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs89x0_probe1.__UNIQUE_ID_ddebug350, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs89x0_probe1, %if.then283)) #8
          to label %if.end295 [label %if.then283], !srcloc !266

if.then283:                                       ; preds = %for.end265
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %adapter_cnf240 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %adapter_cnf240, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cs89x0_probe1.__UNIQUE_ID_ddebug350, ptr noundef nonnull @.str.43, ptr noundef %dev, i32 noundef %97) #8
  br label %if.end295

if.end295:                                        ; preds = %if.then283, %for.end265, %do.end230, %if.then221.if.end295_crit_edge, %do.end213, %do.end203
  %98 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %force, align 4
  %and297 = and i32 %99, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and297)
  %tobool298.not = icmp eq i32 %and297, 0
  br i1 %tobool298.not, label %if.end295.if.end303_crit_edge, label %if.then299

if.end295.if.end303_crit_edge:                    ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end303

if.then299:                                       ; preds = %if.end295
  call void @__sanitizer_cov_trace_pc() #10
  %adapter_cnf300 = getelementptr i8, ptr %dev, i32 2320
  %100 = ptrtoint ptr %adapter_cnf300 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %adapter_cnf300, align 4
  %or301 = or i32 %101, 1
  store i32 %or301, ptr %adapter_cnf300, align 4
  br label %if.end303

if.end303:                                        ; preds = %if.then299, %if.end295.if.end303_crit_edge
  %count.0 = phi i32 [ 1, %if.then299 ], [ 0, %if.end295.if.end303_crit_edge ]
  %and305 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and305)
  %tobool306.not = icmp eq i32 %and305, 0
  br i1 %tobool306.not, label %if.end303.if.end311_crit_edge, label %if.then307

if.end303.if.end311_crit_edge:                    ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end311

if.then307:                                       ; preds = %if.end303
  call void @__sanitizer_cov_trace_pc() #10
  %adapter_cnf308 = getelementptr i8, ptr %dev, i32 2320
  %102 = ptrtoint ptr %adapter_cnf308 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %adapter_cnf308, align 4
  %or309 = or i32 %103, 2
  store i32 %or309, ptr %adapter_cnf308, align 4
  %inc310 = add nuw nsw i32 %count.0, 1
  br label %if.end311

if.end311:                                        ; preds = %if.then307, %if.end303.if.end311_crit_edge
  %count.1 = phi i32 [ %inc310, %if.then307 ], [ %count.0, %if.end303.if.end311_crit_edge ]
  %and313 = and i32 %99, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and313)
  %tobool314.not = icmp eq i32 %and313, 0
  br i1 %tobool314.not, label %if.end311.if.end319_crit_edge, label %if.then315

if.end311.if.end319_crit_edge:                    ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end319

if.then315:                                       ; preds = %if.end311
  call void @__sanitizer_cov_trace_pc() #10
  %adapter_cnf316 = getelementptr i8, ptr %dev, i32 2320
  %104 = ptrtoint ptr %adapter_cnf316 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %adapter_cnf316, align 4
  %or317 = or i32 %105, 4
  store i32 %or317, ptr %adapter_cnf316, align 4
  %inc318 = add nuw nsw i32 %count.1, 1
  br label %if.end319

if.end319:                                        ; preds = %if.then315, %if.end311.if.end319_crit_edge
  %count.2 = phi i32 [ %inc318, %if.then315 ], [ %count.1, %if.end311.if.end319_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.2)
  %cmp320 = icmp ugt i32 %count.2, 1
  %tobool298.not.not = xor i1 %tobool298.not, true
  %brmerge = select i1 %cmp320, i1 true, i1 %tobool298.not.not
  %tobool306.not.not = xor i1 %tobool306.not, true
  %brmerge37 = select i1 %brmerge, i1 true, i1 %tobool306.not.not
  %tobool314.not.not = xor i1 %tobool314.not, true
  %brmerge38 = select i1 %brmerge37, i1 true, i1 %tobool314.not.not
  br i1 %brmerge38, label %do.body354.sink.split, label %if.end319.do.body354_crit_edge

if.end319.do.body354_crit_edge:                   ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body354

do.body354.sink.split:                            ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #10
  %.mux = select i1 %cmp320, i32 112, i32 32
  %.mux.mux = select i1 %brmerge, i32 %.mux, i32 64
  %.mux.mux.mux = select i1 %brmerge37, i32 %.mux.mux, i32 16
  %adapter_cnf330 = getelementptr i8, ptr %dev, i32 2320
  %106 = ptrtoint ptr %adapter_cnf330 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %adapter_cnf330, align 4
  %or324 = or i32 %107, %.mux.mux.mux
  store i32 %or324, ptr %adapter_cnf330, align 4
  br label %do.body354

do.body354:                                       ; preds = %do.body354.sink.split, %if.end319.do.body354_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cs89x0_probe1.__UNIQUE_ID_ddebug351, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cs89x0_probe1, %if.then366)) #8
          to label %do.end379 [label %if.then366], !srcloc !266

if.then366:                                       ; preds = %do.body354
  call void @__sanitizer_cov_trace_pc() #10
  %108 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %force, align 4
  %adapter_cnf370 = getelementptr i8, ptr %dev, i32 2320
  %110 = ptrtoint ptr %adapter_cnf370 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %adapter_cnf370, align 4
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @cs89x0_probe1.__UNIQUE_ID_ddebug351, ptr noundef nonnull @.str.45, ptr noundef %dev, i32 noundef %109, i32 noundef %111) #8
  br label %do.end379

do.end379:                                        ; preds = %if.then366, %do.body354
  %adapter_cnf381 = getelementptr i8, ptr %dev, i32 2320
  %112 = ptrtoint ptr %adapter_cnf381 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %adapter_cnf381, align 4
  %and382 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and382)
  %tobool383.not = icmp eq i32 %and382, 0
  %cond384 = select i1 %tobool383.not, ptr @.str.23, ptr @.str.49
  %and386 = and i32 %113, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and386)
  %tobool387.not = icmp eq i32 %and386, 0
  %cond388 = select i1 %tobool387.not, ptr @.str.23, ptr @.str.50
  %and390 = and i32 %113, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and390)
  %tobool391.not = icmp eq i32 %and390, 0
  %cond392 = select i1 %tobool391.not, ptr @.str.23, ptr @.str.51
  %call393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, ptr noundef nonnull %cond384, ptr noundef nonnull %cond388, ptr noundef nonnull %cond392) #12
  %irq_map = getelementptr i8, ptr %dev, i32 2328
  %114 = ptrtoint ptr %irq_map to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 65535, ptr %irq_map, align 4
  %115 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %116)
  %cmp395.not = icmp eq i32 %116, 0
  br i1 %cmp395.not, label %do.end379.if.else412_crit_edge, label %land.lhs.true397

do.end379.if.else412_crit_edge:                   ; preds = %do.end379
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else412

land.lhs.true397:                                 ; preds = %do.end379
  %117 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %virt_addr, align 4
  %add.ptr.i25 = getelementptr i8, ptr %118, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i25, i16 28675) #8, !srcloc !270
  %119 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i26 = getelementptr i8, ptr %120, i32 12
  %121 = call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i26) #8, !srcloc !267
  %122 = lshr i16 %121, 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %and400 = zext i16 %122 to i32
  %123 = add i16 %121, -256
  call void @__sanitizer_cov_trace_const_cmp2(i16 3584, i16 %123)
  %124 = icmp ult i16 %123, 3584
  br i1 %124, label %if.then407, label %land.lhs.true397.if.else412_crit_edge

land.lhs.true397.if.else412_crit_edge:            ; preds = %land.lhs.true397
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else412

if.then407:                                       ; preds = %land.lhs.true397
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %125 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool408.not = icmp eq i32 %126, 0
  br i1 %tobool408.not, label %if.then409, label %if.then407.do.end423_crit_edge

if.then407.do.end423_crit_edge:                   ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end423

if.then409:                                       ; preds = %if.then407
  call void @__sanitizer_cov_trace_pc() #10
  %127 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %and400, ptr %irq, align 4
  br label %do.end423

if.else412:                                       ; preds = %land.lhs.true397.if.else412_crit_edge, %do.end379.if.else412_crit_edge
  %irq415 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %128 = ptrtoint ptr %irq415 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %irq415, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool416.not = icmp eq i32 %129, 0
  br i1 %tobool416.not, label %if.then417, label %if.else412.do.end423_crit_edge

if.else412.do.end423_crit_edge:                   ; preds = %if.else412
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end423

if.then417:                                       ; preds = %if.else412
  call void @__sanitizer_cov_trace_pc() #10
  %isa_config413 = getelementptr i8, ptr %dev, i32 2324
  %130 = ptrtoint ptr %isa_config413 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %isa_config413, align 4
  %and414 = and i32 %131, 15
  %132 = ptrtoint ptr %irq415 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %and414, ptr %irq415, align 4
  br label %do.end423

do.end423:                                        ; preds = %if.then417, %if.else412.do.end423_crit_edge, %if.then409, %if.then407.do.end423_crit_edge
  %irq425 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %133 = ptrtoint ptr %irq425 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq425, align 4
  %call426 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %134) #12
  %call431 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #12
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %135 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev_addr, align 64
  %call436 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, ptr noundef %136) #12
  %netdev_ops = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 16
  %137 = ptrtoint ptr %netdev_ops to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr @net_ops, ptr %netdev_ops, align 8
  %watchdog_timeo = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 115
  %138 = ptrtoint ptr %watchdog_timeo to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 100, ptr %watchdog_timeo, align 4
  %call445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #12
  %call449 = call i32 @register_netdev(ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call449)
  %tobool450.not = icmp eq i32 %call449, 0
  br i1 %tobool450.not, label %do.end423.cleanup_crit_edge, label %out2

do.end423.cleanup_crit_edge:                      ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

out2:                                             ; preds = %do.end423
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %virt_addr, align 4
  %add.ptr454 = getelementptr i8, ptr %140, i32 10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  call void @arm_heavy_mb() #8
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr454, i16 0) #8, !srcloc !270
  br label %cleanup

cleanup:                                          ; preds = %out2, %do.end423.cleanup_crit_edge, %if.then32, %do.body20
  %retval.0 = phi i32 [ 0, %do.end423.cleanup_crit_edge ], [ %call449, %out2 ], [ -19, %if.then32 ], [ -19, %do.body20 ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %addr) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %eeprom_buff) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @readreg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %regno) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_addr = getelementptr i8, ptr %dev, i32 2396
  %0 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %regno) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !270
  %3 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2) #8, !srcloc !267
  %6 = tail call i16 @llvm.bswap.i16(i16 %5) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  ret i16 %6
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @reset_chip(ptr nocapture noundef readonly %dev) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %0 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i41 = getelementptr i8, ptr %1, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i41, i16 5121) #8, !srcloc !270
  %2 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %5 = or i16 %4, 16384
  %6 = tail call i16 @llvm.bswap.i16(i16 %5)
  tail call fastcc void @writereg(ptr noundef %dev, i16 noundef zeroext 276, i16 noundef zeroext %6)
  tail call void @msleep(i32 noundef 30) #8
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not = icmp eq i32 %8, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 28675) #8, !srcloc !270
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 4
  %conv4 = trunc i32 %12 to i8
  %13 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr6 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr6, i8 %conv4) #8, !srcloc !273
  %15 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr9 = getelementptr i8, ptr %16, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 0) #8, !srcloc !273
  %17 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr11, i16 18435) #8, !srcloc !270
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %19 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mem_start, align 4
  %shr = lshr i32 %20, 16
  %conv12 = trunc i32 %shr to i8
  %21 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr14 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %conv12) #8, !srcloc !273
  %23 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mem_start, align 4
  %shr16 = lshr i32 %24, 8
  %conv18 = trunc i32 %shr16 to i8
  %25 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr21 = getelementptr i8, ptr %26, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !272
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr21, i8 %conv18) #8, !srcloc !273
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -2, %27
  br label %while.cond

while.cond:                                       ; preds = %land.rhs.while.cond_crit_edge, %if.end
  %28 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i43 = getelementptr i8, ptr %29, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i43, i16 13825) #8, !srcloc !270
  %30 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i44 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i44) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %32)
  %cmp25 = icmp sgt i16 %32, -1
  br i1 %cmp25, label %land.rhs, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs:                                         ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %33 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %33
  %cmp27 = icmp slt i32 %sub, 0
  br i1 %cmp27, label %land.rhs.while.cond_crit_edge, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

land.rhs.while.cond_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %land.rhs.while.end_crit_edge, %while.cond.while.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_eeprom_data(ptr nocapture noundef readonly %dev, ptr nocapture noundef writeonly %buffer) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  br label %for.body

for.body:                                         ; preds = %if.end13.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %if.end13.for.body_crit_edge ]
  %call5 = tail call fastcc i32 @wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %for.body.cleanup_crit_edge, label %if.end8

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %for.body
  %0 = trunc i32 %i.01 to i16
  %1 = add i16 %0, 28
  %conv = or i16 %1, 512
  tail call fastcc void @writereg(ptr noundef %dev, i16 noundef zeroext 64, i16 noundef zeroext %conv)
  %call9 = tail call fastcc i32 @wait_eeprom_ready(ptr noundef %dev) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end13

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  %2 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 16896) #8, !srcloc !270
  %4 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  %7 = tail call i16 @llvm.bswap.i16(i16 %6) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv15 = zext i16 %7 to i32
  %arrayidx = getelementptr i32, ptr %buffer, i32 %i.01
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv15, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %if.end13.cleanup_crit_edge, label %if.end13.for.body_crit_edge

if.end13.for.body_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %for.body.cleanup_crit_edge ], [ -1, %if.end8.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @writereg(ptr nocapture noundef readonly %dev, i16 noundef zeroext %regno, i16 noundef zeroext %value) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_addr = getelementptr i8, ptr %dev, i32 2396
  %0 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %2 = tail call i16 @llvm.bswap.i16(i16 %regno) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %2) #8, !srcloc !270
  %3 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_addr, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %5 = tail call i16 @llvm.bswap.i16(i16 %value) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2, i16 %5) #8, !srcloc !270
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_addr_mod(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_eeprom_ready(ptr nocapture noundef readonly %dev) unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %add.neg = sub i32 -40, %0
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  %1 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 13825) #8, !srcloc !270
  %3 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %4, i32 12
  %5 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %6 = and i16 %5, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %tobool.not = icmp eq i16 %6, 0
  br i1 %tobool.not, label %while.cond.cleanup_crit_edge, label %while.body

while.cond.cleanup_crit_edge:                     ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %7 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %7
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %while.body.cleanup_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %while.body.cleanup_crit_edge, %while.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %while.body.cleanup_crit_edge ], [ 0, %while.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_open(ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp slt i32 %1, 2
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %2 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i353 = getelementptr i8, ptr %3, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i353, i16 5633) #8
  %4 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 12
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 132) #8, !srcloc !270
  %irq_map = getelementptr i8, ptr %dev, i32 2328
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then
  %i.0423 = phi i32 [ 2, %if.then ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0423
  %6 = ptrtoint ptr %irq_map to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_map, align 4
  %and = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then2

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then2:                                         ; preds = %for.body
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %i.0423, ptr noundef nonnull @net_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp4 = icmp eq i32 %call.i, 0
  br i1 %cmp4, label %if.then5, label %if.then2.for.inc_crit_edge

if.then2.for.inc_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then5:                                         ; preds = %if.then2
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %i.0423, ptr %irq, align 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp.i = icmp eq i32 %10, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 8704) #8, !srcloc !270
  %13 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 0) #8, !srcloc !270
  br label %if.end29

if.else.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i = trunc i32 %i.0423 to i16
  %15 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %16, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i, i16 28675) #8, !srcloc !270
  %17 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i5.i = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv1.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i5.i, i16 %19) #8, !srcloc !270
  br label %if.end29

for.inc:                                          ; preds = %if.then2.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0423, 1
  %exitcond.not = icmp eq i32 %inc, 15
  br i1 %exitcond.not, label %if.then9, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.then9:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i355 = getelementptr i8, ptr %21, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i355, i16 5633) #8, !srcloc !270
  %22 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i356 = getelementptr i8, ptr %23, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i356, i16 0) #8, !srcloc !270
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71) #12
  br label %cleanup

if.else:                                          ; preds = %entry
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %25 = or i16 %24, 128
  %26 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i361 = getelementptr i8, ptr %27, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i361, i16 5633) #8, !srcloc !270
  %28 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i362 = getelementptr i8, ptr %29, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i362, i16 %25) #8, !srcloc !270
  %30 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp.i363 = icmp eq i32 %31, 0
  br i1 %cmp.i363, label %if.then.i367, label %if.else.i372

if.then.i367:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i.i365 = getelementptr i8, ptr %33, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i365, i16 8704) #8, !srcloc !270
  %34 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i.i366 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i366, i16 0) #8, !srcloc !270
  br label %write_irq.exit373

if.else.i372:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %irq, align 4
  %conv1.i368 = trunc i32 %37 to i16
  %38 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i4.i370 = getelementptr i8, ptr %39, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i4.i370, i16 28675) #8, !srcloc !270
  %40 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i5.i371 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv1.i368) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i5.i371, i16 %42) #8, !srcloc !270
  br label %write_irq.exit373

write_irq.exit373:                                ; preds = %if.else.i372, %if.then.i367
  %43 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %irq, align 4
  %call.i374 = tail call i32 @request_threaded_irq(i32 noundef %44, ptr noundef nonnull @net_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %dev, ptr noundef %dev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i374)
  %tobool20.not = icmp eq i32 %call.i374, 0
  br i1 %tobool20.not, label %write_irq.exit373.if.end29_crit_edge, label %do.end24

write_irq.exit373.if.end29_crit_edge:             ; preds = %write_irq.exit373
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end24:                                         ; preds = %write_irq.exit373
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, i32 noundef %46) #12
  br label %cleanup

if.end29:                                         ; preds = %write_irq.exit373.if.end29_crit_edge, %if.else.i, %if.then.i
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %virt_addr.i375 = getelementptr i8, ptr %dev, i32 2396
  %47 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %dev_addr, align 64
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv36 = zext i8 %50 to i16
  %arrayidx40 = getelementptr i8, ptr %48, i32 1
  %51 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %52 to i16
  %shl42 = shl nuw i16 %conv41, 8
  %or43 = or i16 %shl42, %conv36
  %53 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i376 = getelementptr i8, ptr %54, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i376, i16 22529) #8, !srcloc !270
  %55 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i377 = getelementptr i8, ptr %56, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %57 = tail call i16 @llvm.bswap.i16(i16 %or43) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i377, i16 %57) #8, !srcloc !270
  %58 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev_addr, align 64
  %arrayidx.1 = getelementptr i8, ptr %59, i32 2
  %60 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx.1, align 1
  %conv36.1 = zext i8 %61 to i16
  %arrayidx40.1 = getelementptr i8, ptr %59, i32 3
  %62 = ptrtoint ptr %arrayidx40.1 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx40.1, align 1
  %conv41.1 = zext i8 %63 to i16
  %shl42.1 = shl nuw i16 %conv41.1, 8
  %or43.1 = or i16 %shl42.1, %conv36.1
  %64 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i376.1 = getelementptr i8, ptr %65, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i376.1, i16 23041) #8, !srcloc !270
  %66 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i377.1 = getelementptr i8, ptr %67, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %68 = tail call i16 @llvm.bswap.i16(i16 %or43.1) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i377.1, i16 %68) #8, !srcloc !270
  %69 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev_addr, align 64
  %arrayidx.2 = getelementptr i8, ptr %70, i32 4
  %71 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.2, align 1
  %conv36.2 = zext i8 %72 to i16
  %arrayidx40.2 = getelementptr i8, ptr %70, i32 5
  %73 = ptrtoint ptr %arrayidx40.2 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx40.2, align 1
  %conv41.2 = zext i8 %74 to i16
  %shl42.2 = shl nuw i16 %conv41.2, 8
  %or43.2 = or i16 %shl42.2, %conv36.2
  %75 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i376.2 = getelementptr i8, ptr %76, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i376.2, i16 23553) #8, !srcloc !270
  %77 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i377.2 = getelementptr i8, ptr %78, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %79 = tail call i16 @llvm.bswap.i16(i16 %or43.2) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i377.2, i16 %79) #8, !srcloc !270
  %80 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i379 = getelementptr i8, ptr %81, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i379, i16 5633) #8, !srcloc !270
  %82 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i380 = getelementptr i8, ptr %83, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i380, i16 4) #8, !srcloc !270
  %adapter_cnf = getelementptr i8, ptr %dev, i32 2320
  %84 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %adapter_cnf, align 4
  %86 = and i32 %85, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 49152, i32 %86)
  %.not = icmp eq i32 %86, 49152
  %spec.select = select i1 %.not, i32 16384, i32 0
  %87 = getelementptr i8, ptr %dev, i32 2340
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %spec.select, ptr %87, align 4
  %and58 = and i32 %85, 112
  %89 = zext i32 %and58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %and58, label %sw.default [
    i32 32, label %if.end29.sw.epilog_crit_edge
    i32 64, label %sw.bb61
    i32 16, label %sw.bb64
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb64:                                          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.default:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb64, %sw.bb61, %if.end29.sw.epilog_crit_edge
  %.sink = phi i32 [ 7, %sw.default ], [ 4, %sw.bb64 ], [ 2, %sw.bb61 ], [ 1, %if.end29.sw.epilog_crit_edge ]
  %and68 = and i32 %85, %.sink
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  br i1 %tobool69.not, label %sw.epilog.release_dma_crit_edge, label %if.end84

sw.epilog.release_dma_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dma

release_dma:                                      ; preds = %if.then167.release_dma_crit_edge, %if.end163.release_dma_crit_edge, %do.end129.release_dma_crit_edge, %do.end111.release_dma_crit_edge, %do.end94.release_dma_crit_edge, %sw.epilog.release_dma_crit_edge
  %.str.92.sink = phi ptr [ @.str.89, %if.end163.release_dma_crit_edge ], [ @.str.89, %if.then167.release_dma_crit_edge ], [ @.str.92, %do.end129.release_dma_crit_edge ], [ @.str.92, %do.end111.release_dma_crit_edge ], [ @.str.92, %do.end94.release_dma_crit_edge ], [ @.str.77, %sw.epilog.release_dma_crit_edge ]
  %call189 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.92.sink, ptr noundef %dev) #12
  %90 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i382 = getelementptr i8, ptr %91, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i382, i16 4609) #8, !srcloc !270
  %92 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i383 = getelementptr i8, ptr %93, i32 12
  %94 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i383) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %95 = and i16 %94, 16383
  %96 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i385 = getelementptr i8, ptr %97, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i385, i16 4609) #8, !srcloc !270
  %98 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i386 = getelementptr i8, ptr %99, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i386, i16 %95) #8, !srcloc !270
  %100 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %irq, align 4
  %call83 = tail call ptr @free_irq(i32 noundef %101, ptr noundef %dev) #8
  br label %cleanup

if.end84:                                         ; preds = %sw.epilog
  %102 = add nsw i32 %and58, -16
  %103 = lshr exact i32 %102, 4
  %104 = zext i32 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.146)
  switch i32 %103, label %if.end84.sw.epilog181_crit_edge [
    i32 1, label %sw.bb87
    i32 3, label %sw.bb104
    i32 0, label %sw.bb122
    i32 6, label %sw.bb140
  ]

if.end84.sw.epilog181_crit_edge:                  ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

sw.bb87:                                          ; preds = %if.end84
  %call88 = tail call fastcc i32 @detect_tp(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call88)
  %cmp89 = icmp eq i32 %call88, 0
  br i1 %cmp89, label %do.end94, label %sw.bb87.sw.epilog181_crit_edge

sw.bb87.sw.epilog181_crit_edge:                   ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

do.end94:                                         ; preds = %sw.bb87
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %dev) #12
  %auto_neg_cnf = getelementptr i8, ptr %dev, i32 2316
  %105 = ptrtoint ptr %auto_neg_cnf to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %auto_neg_cnf, align 4
  %and99 = and i32 %106, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %do.end94.release_dma_crit_edge, label %do.end94.sw.epilog222.sink.split_crit_edge

do.end94.sw.epilog222.sink.split_crit_edge:       ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog222.sink.split

do.end94.release_dma_crit_edge:                   ; preds = %do.end94
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dma

sw.bb104:                                         ; preds = %if.end84
  %call105 = tail call fastcc i32 @detect_aui(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call105)
  %cmp106 = icmp eq i32 %call105, 0
  br i1 %cmp106, label %do.end111, label %sw.bb104.sw.epilog181_crit_edge

sw.bb104.sw.epilog181_crit_edge:                  ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

do.end111:                                        ; preds = %sw.bb104
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %dev) #12
  %auto_neg_cnf116 = getelementptr i8, ptr %dev, i32 2316
  %107 = ptrtoint ptr %auto_neg_cnf116 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %auto_neg_cnf116, align 4
  %and117 = and i32 %108, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  br i1 %tobool118.not, label %do.end111.release_dma_crit_edge, label %do.end111.sw.epilog222.sink.split_crit_edge

do.end111.sw.epilog222.sink.split_crit_edge:      ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog222.sink.split

do.end111.release_dma_crit_edge:                  ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dma

sw.bb122:                                         ; preds = %if.end84
  %call123 = tail call fastcc i32 @detect_bnc(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %cmp124 = icmp eq i32 %call123, 0
  br i1 %cmp124, label %do.end129, label %sw.bb122.sw.epilog181_crit_edge

sw.bb122.sw.epilog181_crit_edge:                  ; preds = %sw.bb122
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

do.end129:                                        ; preds = %sw.bb122
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %dev) #12
  %auto_neg_cnf134 = getelementptr i8, ptr %dev, i32 2316
  %109 = ptrtoint ptr %auto_neg_cnf134 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %auto_neg_cnf134, align 4
  %and135 = and i32 %110, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %do.end129.release_dma_crit_edge, label %do.end129.sw.epilog222.sink.split_crit_edge

do.end129.sw.epilog222.sink.split_crit_edge:      ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog222.sink.split

do.end129.release_dma_crit_edge:                  ; preds = %do.end129
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dma

sw.bb140:                                         ; preds = %if.end84
  %111 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %87, align 4
  %113 = trunc i32 %112 to i16
  %conv143 = or i16 %113, 512
  %114 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i388 = getelementptr i8, ptr %115, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i388, i16 4609) #8, !srcloc !270
  %116 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i389 = getelementptr i8, ptr %117, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %118 = tail call i16 @llvm.bswap.i16(i16 %conv143) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i389, i16 %118) #8, !srcloc !270
  %119 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %adapter_cnf, align 4
  %and145 = and i32 %120, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %sw.bb140.if.end153_crit_edge, label %if.then147

sw.bb140.if.end153_crit_edge:                     ; preds = %sw.bb140
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.then147:                                       ; preds = %sw.bb140
  %call148 = tail call fastcc i32 @detect_tp(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call148)
  %cmp149.not = icmp eq i32 %call148, 0
  br i1 %cmp149.not, label %if.then147.if.end153_crit_edge, label %if.then147.sw.epilog181_crit_edge

if.then147.sw.epilog181_crit_edge:                ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

if.then147.if.end153_crit_edge:                   ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end153

if.end153:                                        ; preds = %if.then147.if.end153_crit_edge, %sw.bb140.if.end153_crit_edge
  %121 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %adapter_cnf, align 4
  %and155 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155)
  %tobool156.not = icmp eq i32 %and155, 0
  br i1 %tobool156.not, label %if.end153.if.end163_crit_edge, label %if.then157

if.end153.if.end163_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.then157:                                       ; preds = %if.end153
  %call158 = tail call fastcc i32 @detect_aui(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call158)
  %cmp159.not = icmp eq i32 %call158, 0
  br i1 %cmp159.not, label %if.then157.if.end163_crit_edge, label %if.then157.sw.epilog181_crit_edge

if.then157.sw.epilog181_crit_edge:                ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

if.then157.if.end163_crit_edge:                   ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end163

if.end163:                                        ; preds = %if.then157.if.end163_crit_edge, %if.end153.if.end163_crit_edge
  %123 = ptrtoint ptr %adapter_cnf to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %adapter_cnf, align 4
  %and165 = and i32 %124, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and165)
  %tobool166.not = icmp eq i32 %and165, 0
  br i1 %tobool166.not, label %if.end163.release_dma_crit_edge, label %if.then167

if.end163.release_dma_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dma

if.then167:                                       ; preds = %if.end163
  %call168 = tail call fastcc i32 @detect_bnc(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %cmp169.not = icmp eq i32 %call168, 0
  br i1 %cmp169.not, label %if.then167.release_dma_crit_edge, label %if.then167.sw.epilog181_crit_edge

if.then167.sw.epilog181_crit_edge:                ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog181

if.then167.release_dma_crit_edge:                 ; preds = %if.then167
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_dma

sw.epilog181:                                     ; preds = %if.then167.sw.epilog181_crit_edge, %if.then157.sw.epilog181_crit_edge, %if.then147.sw.epilog181_crit_edge, %sw.bb122.sw.epilog181_crit_edge, %sw.bb104.sw.epilog181_crit_edge, %sw.bb87.sw.epilog181_crit_edge, %if.end84.sw.epilog181_crit_edge
  %result.1 = phi i32 [ %and68, %if.end84.sw.epilog181_crit_edge ], [ %call148, %if.then147.sw.epilog181_crit_edge ], [ %call158, %if.then157.sw.epilog181_crit_edge ], [ %call168, %if.then167.sw.epilog181_crit_edge ], [ %call123, %sw.bb122.sw.epilog181_crit_edge ], [ %call105, %sw.bb104.sw.epilog181_crit_edge ], [ %call88, %sw.bb87.sw.epilog181_crit_edge ]
  %switch.tableidx = add i32 %result.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %125 = icmp ult i32 %switch.tableidx, 4
  br i1 %125, label %switch.lookup, label %sw.epilog181.sw.epilog222_crit_edge

sw.epilog181.sw.epilog222_crit_edge:              ; preds = %sw.epilog181
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog222

switch.lookup:                                    ; preds = %sw.epilog181
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.net_open, i32 0, i32 %switch.tableidx
  %126 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %126)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog222.sink.split

sw.epilog222.sink.split:                          ; preds = %switch.lookup, %do.end129.sw.epilog222.sink.split_crit_edge, %do.end111.sw.epilog222.sink.split_crit_edge, %do.end94.sw.epilog222.sink.split_crit_edge
  %.str.104.sink = phi ptr [ @.str.95, %do.end94.sw.epilog222.sink.split_crit_edge ], [ %switch.load, %switch.lookup ], [ @.str.101, %do.end111.sw.epilog222.sink.split_crit_edge ], [ @.str.104, %do.end129.sw.epilog222.sink.split_crit_edge ]
  %call221 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.104.sink, ptr noundef %dev) #12
  br label %sw.epilog222

sw.epilog222:                                     ; preds = %sw.epilog222.sink.split, %sw.epilog181.sw.epilog222_crit_edge
  %127 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i391 = getelementptr i8, ptr %128, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i391, i16 4609) #8, !srcloc !270
  %129 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i392 = getelementptr i8, ptr %130, i32 12
  %131 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i392) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %132 = or i16 %131, -16384
  %133 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i394 = getelementptr i8, ptr %134, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i394, i16 4609) #8, !srcloc !270
  %135 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i395 = getelementptr i8, ptr %136, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i395, i16 %132) #8, !srcloc !270
  %rx_mode = getelementptr i8, ptr %dev, i32 2332
  %137 = ptrtoint ptr %rx_mode to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %rx_mode, align 4
  %138 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i397 = getelementptr i8, ptr %139, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i397, i16 1025) #8, !srcloc !270
  %140 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i398 = getelementptr i8, ptr %141, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i398, i16 13) #8, !srcloc !270
  %curr_rx_cfg = getelementptr i8, ptr %dev, i32 2336
  %isa_config = getelementptr i8, ptr %dev, i32 2324
  %142 = ptrtoint ptr %isa_config to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %isa_config, align 4
  %and228 = and i32 %143, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and228)
  %tobool229.not = icmp eq i32 %and228, 0
  %spec.store.select = select i1 %tobool229.not, i32 4352, i32 4480
  %144 = ptrtoint ptr %curr_rx_cfg to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %spec.store.select, ptr %curr_rx_cfg, align 4
  %conv235 = trunc i32 %spec.store.select to i16
  %145 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i400 = getelementptr i8, ptr %146, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i400, i16 513) #8, !srcloc !270
  %147 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i401 = getelementptr i8, ptr %148, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %149 = tail call i16 @llvm.bswap.i16(i16 %conv235) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i401, i16 %149) #8, !srcloc !270
  %150 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i403 = getelementptr i8, ptr %151, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i403, i16 1537) #8, !srcloc !270
  %152 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i404 = getelementptr i8, ptr %153, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i404, i16 -16241) #8, !srcloc !270
  %154 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i406 = getelementptr i8, ptr %155, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i406, i16 2561) #8, !srcloc !270
  %156 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i407 = getelementptr i8, ptr %157, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i407, i16 51) #8, !srcloc !270
  %mem_start = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 4
  %158 = ptrtoint ptr %mem_start to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %mem_start, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool236.not = icmp eq i32 %159, 0
  %conv238 = select i1 %tobool236.not, i16 128, i16 132
  %160 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr.i409 = getelementptr i8, ptr %161, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i409, i16 5633) #8, !srcloc !270
  %162 = ptrtoint ptr %virt_addr.i375 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %virt_addr.i375, align 4
  %add.ptr2.i410 = getelementptr i8, ptr %163, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i410, i16 %conv238) #8, !srcloc !270
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %164 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %165, i32 0, i32 13
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @net_open.__UNIQUE_ID_ddebug345, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@net_open, %if.then249)) #8
          to label %cleanup [label %if.then249], !srcloc !266

if.then249:                                       ; preds = %sw.epilog222
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @net_open.__UNIQUE_ID_ddebug345, ptr noundef nonnull @.str.107) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then249, %sw.epilog222, %release_dma, %do.end24, %if.then9
  %retval.0 = phi i32 [ 0, %if.then249 ], [ -11, %if.then9 ], [ -11, %release_dma ], [ %call.i374, %do.end24 ], [ 0, %sw.epilog222 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_close(ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %2 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 513) #8, !srcloc !270
  %4 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 0) #8, !srcloc !270
  %6 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i8 = getelementptr i8, ptr %7, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8, i16 1537) #8, !srcloc !270
  %8 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i9 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i9, i16 0) #8, !srcloc !270
  %10 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %11, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i11, i16 2561) #8, !srcloc !270
  %12 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i12 = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i12, i16 0) #8, !srcloc !270
  %14 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i14 = getelementptr i8, ptr %15, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i14, i16 5633) #8, !srcloc !270
  %16 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i15 = getelementptr i8, ptr %17, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i15, i16 0) #8, !srcloc !270
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %19, ptr noundef %dev) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_send_packet(ptr noundef %skb, ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2352
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  %state.i.i = getelementptr inbounds %struct.netdev_queue, ptr %1, i32 0, i32 13
  tail call void @_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  %send_cmd = getelementptr i8, ptr %dev, i32 2312
  %2 = ptrtoint ptr %send_cmd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %send_cmd, align 4
  %conv23 = trunc i32 %3 to i16
  %virt_addr = getelementptr i8, ptr %dev, i32 2396
  %4 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %6 = tail call i16 @llvm.bswap.i16(i16 %conv23) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %6) #8, !srcloc !270
  %len24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %7 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len24, align 4
  %conv25 = trunc i32 %8 to i16
  %9 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %virt_addr, align 4
  %add.ptr27 = getelementptr i8, ptr %10, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %11 = tail call i16 @llvm.bswap.i16(i16 %conv25) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr27, i16 %11) #8, !srcloc !270
  %12 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt_addr, align 4
  %add.ptr.i71 = getelementptr i8, ptr %13, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i71, i16 14337) #8, !srcloc !270
  %14 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_addr, align 4
  %add.ptr2.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %17 = and i16 %16, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %cmp30 = icmp eq i16 %17, 0
  br i1 %cmp30, label %if.then32, label %if.end46

if.then32:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #8
  %call42 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.138) #12
  br label %cleanup

if.end46:                                         ; preds = %entry
  %data47 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data47, align 4
  %20 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len24, align 4
  %add = add i32 %21, 1
  %shr = lshr i32 %add, 1
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end46
  %buf8.0.i = phi ptr [ %19, %if.end46 ], [ %incdec.ptr1.i, %do.body.i.do.body.i_crit_edge ]
  %length.addr.0.i = phi i32 [ %shr, %if.end46 ], [ %dec.i, %do.body.i.do.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %buf8.0.i, i32 1
  %22 = ptrtoint ptr %buf8.0.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %buf8.0.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %buf8.0.i, i32 2
  %24 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %incdec.ptr.i, align 1
  %conv2.i = zext i8 %25 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %conv3.i = zext i8 %23 to i16
  %or.i = or i16 %shl.i, %conv3.i
  %26 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %virt_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %28 = tail call i16 @llvm.bswap.i16(i16 %or.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %28) #8, !srcloc !270
  %dec.i = add i32 %length.addr.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %writewords.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

writewords.exit:                                  ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #8
  %29 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len24, align 4
  %tx_bytes = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 3
  %31 = ptrtoint ptr %tx_bytes to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tx_bytes, align 4
  %add51 = add i32 %32, %30
  store i32 %add51, ptr %tx_bytes, align 4
  tail call void @__dev_kfree_skb_any(ptr noundef %skb, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %writewords.exit, %if.then32
  %retval.0 = phi i32 [ 16, %if.then32 ], [ 0, %writewords.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @set_multicast_list(ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2352
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %flags6 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 14
  %0 = ptrtoint ptr %flags6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags6, align 8
  %and = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.else:                                          ; preds = %entry
  %and8 = and i32 %1, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %lor.lhs.false, label %if.else.if.end16_crit_edge

if.else.if.end16_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

lor.lhs.false:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %count = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 66, i32 1
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp10 = icmp eq i32 %3, 0
  %spec.select = select i1 %cmp10, i32 0, i32 512
  br label %if.end16

if.end16:                                         ; preds = %lor.lhs.false, %if.else.if.end16_crit_edge, %entry.if.end16_crit_edge
  %.sink = phi i32 [ 28800, %entry.if.end16_crit_edge ], [ 512, %if.else.if.end16_crit_edge ], [ %spec.select, %lor.lhs.false ]
  %rx_mode13 = getelementptr i8, ptr %dev, i32 2332
  %4 = ptrtoint ptr %rx_mode13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink, ptr %rx_mode13, align 4
  %rx_mode17 = getelementptr i8, ptr %dev, i32 2332
  %5 = trunc i32 %.sink to i16
  %conv18 = or i16 %5, 3328
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %6 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %7, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i42, i16 1025) #8, !srcloc !270
  %8 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv18) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %10) #8, !srcloc !270
  %curr_rx_cfg = getelementptr i8, ptr %dev, i32 2336
  %11 = ptrtoint ptr %curr_rx_cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %curr_rx_cfg, align 4
  %conv19 = trunc i32 %12 to i16
  %13 = ptrtoint ptr %rx_mode17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_mode17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 28800, i32 %14)
  %cmp21 = icmp eq i32 %14, 28800
  %conv26 = or i16 %conv19, 28672
  %cfg.0 = select i1 %cmp21, i16 %conv26, i16 %conv19
  %15 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %16, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i44, i16 513) #8, !srcloc !270
  %17 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i45 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %19 = tail call i16 @llvm.bswap.i16(i16 %cfg.0) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i45, i16 %19) #8, !srcloc !270
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_mac_address(ptr noundef %dev, ptr noundef %p) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 6
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sa_data = getelementptr inbounds %struct.sockaddr, ptr %p, i32 0, i32 1
  tail call void @dev_addr_mod(ptr noundef %dev, i32 noundef 0, ptr noundef %sa_data, i32 noundef 6) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_mac_address.__UNIQUE_ID_ddebug347, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_mac_address, %if.then6)) #8
          to label %do.end11 [label %if.then6], !srcloc !266

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_addr, align 64
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_mac_address.__UNIQUE_ID_ddebug347, ptr noundef nonnull @.str.141, ptr noundef %dev, ptr noundef %3) #8
  br label %do.end11

do.end11:                                         ; preds = %if.then6, %if.end
  %dev_addr13 = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %4 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev_addr13, align 64
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv15 = zext i8 %7 to i16
  %arrayidx19 = getelementptr i8, ptr %5, i32 1
  %8 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %9 to i16
  %shl = shl nuw i16 %conv20, 8
  %or = or i16 %shl, %conv15
  %10 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 22529) #8, !srcloc !270
  %12 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %14 = tail call i16 @llvm.bswap.i16(i16 %or) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %14) #8, !srcloc !270
  %15 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_addr13, align 64
  %arrayidx.1 = getelementptr i8, ptr %16, i32 2
  %17 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.1, align 1
  %conv15.1 = zext i8 %18 to i16
  %arrayidx19.1 = getelementptr i8, ptr %16, i32 3
  %19 = ptrtoint ptr %arrayidx19.1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx19.1, align 1
  %conv20.1 = zext i8 %20 to i16
  %shl.1 = shl nuw i16 %conv20.1, 8
  %or.1 = or i16 %shl.1, %conv15.1
  %21 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %22, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.1, i16 23041) #8, !srcloc !270
  %23 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i.1 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %25 = tail call i16 @llvm.bswap.i16(i16 %or.1) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.1, i16 %25) #8, !srcloc !270
  %26 = ptrtoint ptr %dev_addr13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev_addr13, align 64
  %arrayidx.2 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx.2, align 1
  %conv15.2 = zext i8 %29 to i16
  %arrayidx19.2 = getelementptr i8, ptr %27, i32 5
  %30 = ptrtoint ptr %arrayidx19.2 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx19.2, align 1
  %conv20.2 = zext i8 %31 to i16
  %shl.2 = shl nuw i16 %conv20.2, 8
  %or.2 = or i16 %shl.2, %conv15.2
  %32 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %33, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.2, i16 23553) #8, !srcloc !270
  %34 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i.2 = getelementptr i8, ptr %35, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %36 = tail call i16 @llvm.bswap.i16(i16 %or.2) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.2, i16 %36) #8, !srcloc !270
  br label %cleanup

cleanup:                                          ; preds = %do.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %entry.cleanup_crit_edge ], [ 0, %do.end11 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @eth_validate_addr(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_timeout(ptr noundef %dev, i32 noundef %txqueue) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef %dev, ptr noundef nonnull @.str.144) #12
  %_tx.i.i = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 103
  %0 = ptrtoint ptr %_tx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %_tx.i.i, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @net_get_stats(ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr i8, ptr %dev, i32 2352
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %0 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i21 = getelementptr i8, ptr %1, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i21, i16 12289) #8, !srcloc !270
  %2 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 12
  %4 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  %5 = tail call i16 @llvm.bswap.i16(i16 %4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %6 = lshr i16 %5, 6
  %7 = zext i16 %6 to i32
  %stats = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 15
  %8 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %9, %7
  store i32 %add, ptr %rx_missed_errors, align 4
  %10 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i23 = getelementptr i8, ptr %11, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i23, i16 12801) #8, !srcloc !270
  %12 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i24 = getelementptr i8, ptr %13, i32 12
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i24) #8, !srcloc !267
  %15 = tail call i16 @llvm.bswap.i16(i16 %14) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %16 = lshr i16 %15, 6
  %17 = zext i16 %16 to i32
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 36, i32 9
  %18 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %collisions, align 4
  %add12 = add i32 %19, %17
  store i32 %add12, ptr %collisions, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret ptr %stats
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_poll_controller(ptr noundef %dev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 64
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @disable_irq(i32 noundef %1) #8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call i32 @net_interrupt(i32 noundef %3, ptr noundef %dev)
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_interrupt(i32 noundef %irq, ptr noundef %dev_id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %virt_addr = getelementptr i8, ptr %dev_id, i32 2396
  %0 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %virt_addr, align 4
  %add.ptr123 = getelementptr i8, ptr %1, i32 8
  %2 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr123) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not125 = icmp eq i16 %2, 0
  br i1 %tobool.not125, label %entry.while.end_crit_edge, label %do.end11.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end11.lr.ph:                                   ; preds = %entry
  %3 = tail call i16 @llvm.bswap.i16(i16 %2) #8
  %collisions = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 9
  %rx_missed_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 15
  %_tx.i.i121 = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 103
  %send_underrun = getelementptr i8, ptr %dev_id, i32 2344
  %send_cmd80 = getelementptr i8, ptr %dev_id, i32 2312
  %tx_packets = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 1
  %tx_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 5
  %tx_carrier_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 17
  %tx_heartbeat_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 19
  %tx_window_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 20
  %tx_aborted_errors = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 16
  %stats41.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36
  %rx_bytes.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 2
  %rx_dropped.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 6
  %rx_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 4
  %rx_length_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 10
  %rx_crc_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 12
  %rx_frame_errors.i.i = getelementptr inbounds %struct.net_device, ptr %dev_id, i32 0, i32 36, i32 13
  br label %do.end11

do.end11:                                         ; preds = %sw.epilog.do.end11_crit_edge, %do.end11.lr.ph
  %conv126.in = phi i16 [ %3, %do.end11.lr.ph ], [ %84, %sw.epilog.do.end11_crit_edge ]
  %conv126 = zext i16 %conv126.in to i32
  %and = and i32 %conv126, 63
  %4 = add nsw i32 %and, -4
  %5 = tail call i32 @llvm.fshl.i32(i32 %4, i32 %4, i32 31)
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %5, label %do.end11.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 2, label %sw.bb12
    i32 4, label %sw.bb49
    i32 6, label %sw.bb84
    i32 7, label %sw.bb86
  ]

do.end11.sw.epilog_crit_edge:                     ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end11
  %7 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %virt_addr, align 4
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %8) #8, !srcloc !267
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv.i = zext i16 %10 to i32
  %11 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %virt_addr, align 4
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %12) #8, !srcloc !267
  %14 = tail call i16 @llvm.bswap.i16(i16 %13) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv5.i = zext i16 %14 to i32
  %and.i = and i32 %conv.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %sw.bb
  %15 = ptrtoint ptr %rx_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rx_errors.i.i, align 8
  %inc.i.i = add i32 %16, 1
  store i32 %inc.i.i, ptr %rx_errors.i.i, align 8
  %and.i.i = and i32 %conv.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end.i.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rx_length_errors.i.i, align 8
  %inc2.i.i = add i32 %18, 1
  store i32 %inc2.i.i, ptr %rx_length_errors.i.i, align 8
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i.if.end.i.i_crit_edge
  %and3.i.i = and i32 %conv.i, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i.i)
  %tobool4.not.i.i = icmp eq i32 %and3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end9.i.i_crit_edge, label %if.then5.i.i

if.end.i.i.if.end9.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i.i

if.then5.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %rx_length_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_length_errors.i.i, align 8
  %inc8.i.i = add i32 %20, 1
  store i32 %inc8.i.i, ptr %rx_length_errors.i.i, align 8
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %if.then5.i.i, %if.end.i.i.if.end9.i.i_crit_edge
  %21 = and i32 %conv.i, 28672
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %21)
  %22 = icmp eq i32 %21, 4096
  br i1 %22, label %if.then14.i.i, label %if.end9.i.i.if.end17.i.i_crit_edge

if.end9.i.i.if.end17.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then14.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %rx_crc_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %rx_crc_errors.i.i, align 8
  %inc16.i.i = add i32 %24, 1
  store i32 %inc16.i.i, ptr %rx_crc_errors.i.i, align 8
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then14.i.i, %if.end9.i.i.if.end17.i.i_crit_edge
  %and18.i.i = and i32 %conv.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i.i)
  %tobool19.not.i.i = icmp eq i32 %and18.i.i, 0
  br i1 %tobool19.not.i.i, label %if.end17.i.i.sw.epilog_crit_edge, label %if.then20.i.i

if.end17.i.i.sw.epilog_crit_edge:                 ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then20.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %rx_frame_errors.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rx_frame_errors.i.i, align 4
  %inc22.i.i = add i32 %26, 1
  store i32 %inc22.i.i, ptr %rx_frame_errors.i.i, align 4
  br label %sw.epilog

if.end.i:                                         ; preds = %sw.bb
  %add.i = add nuw nsw i32 %conv5.i, 2
  %call.i.i = tail call ptr @__netdev_alloc_skb(ptr noundef %dev_id, i32 noundef %add.i, i32 noundef 2592) #8
  %cmp8.i = icmp eq ptr %call.i.i, null
  br i1 %cmp8.i, label %if.then10.i, label %if.end11.i

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %rx_dropped.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %rx_dropped.i, align 8
  %inc.i = add i32 %28, 1
  store i32 %inc.i, ptr %rx_dropped.i, align 8
  br label %sw.epilog

if.end11.i:                                       ; preds = %if.end.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %29 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i73.i = getelementptr i8, ptr %30, i32 2
  store ptr %add.ptr.i73.i, ptr %data.i.i, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %add.ptr1.i.i = getelementptr i8, ptr %32, i32 2
  store ptr %add.ptr1.i.i, ptr %tail.i.i, align 8
  %call12.i = tail call ptr @skb_put(ptr noundef nonnull %call.i.i, i32 noundef %conv5.i) #8
  %33 = lshr i32 %conv5.i, 1
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %if.end11.i
  %buf8.0.i.i = phi ptr [ %call12.i, %if.end11.i ], [ %incdec.ptr3.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %length.addr.0.i.i = phi i32 [ %33, %if.end11.i ], [ %dec.i.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %34 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr, align 4
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %35) #8, !srcloc !267
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv.i.i = trunc i16 %37 to i8
  %incdec.ptr.i.i = getelementptr i8, ptr %buf8.0.i.i, i32 1
  %38 = ptrtoint ptr %buf8.0.i.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv.i.i, ptr %buf8.0.i.i, align 1
  %39 = lshr i16 %37, 8
  %conv2.i.i = trunc i16 %39 to i8
  %incdec.ptr3.i.i = getelementptr i8, ptr %buf8.0.i.i, i32 2
  %40 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv2.i.i, ptr %incdec.ptr.i.i, align 1
  %dec.i.i = add i32 %length.addr.0.i.i, -1
  %tobool.not.i74.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i74.i, label %readwords.exit.i, label %do.body.i.i.do.body.i.i_crit_edge

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i.i

readwords.exit.i:                                 ; preds = %do.body.i.i
  %and13.i = and i32 %conv5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i = icmp eq i32 %and13.i, 0
  br i1 %tobool.not.i, label %readwords.exit.i.do.end38.i_crit_edge, label %if.then14.i

readwords.exit.i.do.end38.i_crit_edge:            ; preds = %readwords.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end38.i

if.then14.i:                                      ; preds = %readwords.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt_addr, align 4
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #8, !srcloc !267
  %44 = lshr i16 %43, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %conv18.i = trunc i16 %44 to i8
  %45 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i.i, align 4
  %sub.i = add nsw i32 %conv5.i, -1
  %arrayidx.i = getelementptr i8, ptr %46, i32 %sub.i
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv18.i, ptr %arrayidx.i, align 1
  br label %do.end38.i

do.end38.i:                                       ; preds = %if.then14.i, %readwords.exit.i.do.end38.i_crit_edge
  %call39.i = tail call zeroext i16 @eth_type_trans(ptr noundef nonnull %call.i.i, ptr noundef %dev_id) #8
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 15, i32 0, i32 18
  %48 = ptrtoint ptr %protocol.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %call39.i, ptr %protocol.i, align 8
  %call40.i = tail call i32 @netif_rx(ptr noundef nonnull %call.i.i) #8
  %49 = ptrtoint ptr %stats41.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %stats41.i, align 8
  %inc42.i = add i32 %50, 1
  store i32 %inc42.i, ptr %stats41.i, align 8
  %51 = ptrtoint ptr %rx_bytes.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %rx_bytes.i, align 8
  %add44.i = add i32 %52, %conv5.i
  store i32 %add44.i, ptr %rx_bytes.i, align 8
  br label %sw.epilog

sw.bb12:                                          ; preds = %do.end11
  %53 = ptrtoint ptr %tx_packets to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %tx_packets, align 4
  %inc = add i32 %54, 1
  store i32 %inc, ptr %tx_packets, align 4
  %55 = ptrtoint ptr %_tx.i.i121 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %_tx.i.i121, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %56) #8
  %and13 = and i32 %conv126, 33728
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and13)
  %cmp14.not = icmp eq i32 %and13, 256
  br i1 %cmp14.not, label %sw.bb12.sw.epilog_crit_edge, label %if.then16

sw.bb12.sw.epilog_crit_edge:                      ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then16:                                        ; preds = %sw.bb12
  %and17 = and i32 %conv126, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp18 = icmp eq i32 %and17, 0
  br i1 %cmp18, label %if.then20, label %if.then16.if.end23_crit_edge

if.then16.if.end23_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %tx_errors to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %tx_errors, align 4
  %inc22 = add i32 %58, 1
  store i32 %inc22, ptr %tx_errors, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.then16.if.end23_crit_edge
  %and24 = and i32 %conv126, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.if.end29_crit_edge, label %if.then26

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %59 = ptrtoint ptr %tx_carrier_errors to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %tx_carrier_errors, align 4
  %inc28 = add i32 %60, 1
  store i32 %inc28, ptr %tx_carrier_errors, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.end23.if.end29_crit_edge
  %and30 = and i32 %conv126, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end29.if.end35_crit_edge, label %if.then32

if.end29.if.end35_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %tx_heartbeat_errors to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %tx_heartbeat_errors, align 4
  %inc34 = add i32 %62, 1
  store i32 %inc34, ptr %tx_heartbeat_errors, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %if.end29.if.end35_crit_edge
  %and36 = and i32 %conv126, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end35.if.end41_crit_edge, label %if.then38

if.end35.if.end41_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then38:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %tx_window_errors to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %tx_window_errors, align 8
  %inc40 = add i32 %64, 1
  store i32 %inc40, ptr %tx_window_errors, align 8
  br label %if.end41

if.end41:                                         ; preds = %if.then38, %if.end35.if.end41_crit_edge
  %and42 = and i32 %conv126, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end41.sw.epilog_crit_edge, label %if.then44

if.end41.sw.epilog_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %tx_aborted_errors to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %tx_aborted_errors, align 8
  %inc46 = add i32 %66, 1
  store i32 %inc46, ptr %tx_aborted_errors, align 8
  br label %sw.epilog

sw.bb49:                                          ; preds = %do.end11
  %and50 = and i32 %conv126, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %sw.bb49.if.end53_crit_edge, label %if.then52

sw.bb49.if.end53_crit_edge:                       ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then52:                                        ; preds = %sw.bb49
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %_tx.i.i121 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %_tx.i.i121, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %68) #8
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %sw.bb49.if.end53_crit_edge
  %and54 = and i32 %conv126, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.end53.sw.epilog_crit_edge, label %do.end63

if.end53.sw.epilog_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.end63:                                         ; preds = %if.end53
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.111, ptr noundef %dev_id) #12
  %69 = ptrtoint ptr %send_underrun to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %send_underrun, align 4
  %inc71 = add i32 %70, 1
  store i32 %inc71, ptr %send_underrun, align 4
  %71 = zext i32 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %70, label %do.end63.if.end82_crit_edge [
    i32 2, label %do.end63.if.end82.sink.split_crit_edge
    i32 5, label %if.then79
  ]

do.end63.if.end82.sink.split_crit_edge:           ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.sink.split

do.end63.if.end82_crit_edge:                      ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82

if.then79:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end82.sink.split

if.end82.sink.split:                              ; preds = %if.then79, %do.end63.if.end82.sink.split_crit_edge
  %.sink = phi i32 [ 192, %if.then79 ], [ 64, %do.end63.if.end82.sink.split_crit_edge ]
  %72 = ptrtoint ptr %send_cmd80 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %.sink, ptr %send_cmd80, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.end82.sink.split, %do.end63.if.end82_crit_edge
  %73 = ptrtoint ptr %_tx.i.i121 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %_tx.i.i121, align 128
  tail call void @netif_tx_wake_queue(ptr noundef %74) #8
  br label %sw.epilog

sw.bb84:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %75 = lshr i32 %conv126, 6
  %76 = ptrtoint ptr %rx_missed_errors to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %rx_missed_errors, align 4
  %add = add i32 %77, %75
  store i32 %add, ptr %rx_missed_errors, align 4
  br label %sw.epilog

sw.bb86:                                          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #10
  %78 = lshr i32 %conv126, 6
  %79 = ptrtoint ptr %collisions to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %collisions, align 4
  %add89 = add i32 %80, %78
  store i32 %add89, ptr %collisions, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb86, %sw.bb84, %if.end82, %if.end53.sw.epilog_crit_edge, %if.then44, %if.end41.sw.epilog_crit_edge, %sw.bb12.sw.epilog_crit_edge, %do.end38.i, %if.then10.i, %if.then20.i.i, %if.end17.i.i.sw.epilog_crit_edge, %do.end11.sw.epilog_crit_edge
  %81 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %virt_addr, align 4
  %add.ptr = getelementptr i8, ptr %82, i32 8
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr) #8, !srcloc !267
  %84 = tail call i16 @llvm.bswap.i16(i16 %83) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %tobool.not = icmp eq i16 %83, 0
  br i1 %tobool.not, label %sw.epilog.while.end_crit_edge, label %sw.epilog.do.end11_crit_edge

sw.epilog.do.end11_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end11

sw.epilog.while.end_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %sw.epilog.while.end_crit_edge, %entry.while.end_crit_edge
  %tobool90.not.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ 1, %sw.epilog.while.end_crit_edge ]
  ret i32 %tobool90.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @detect_tp(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 2304
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detect_tp.__UNIQUE_ID_ddebug340, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@detect_tp, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !266

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @detect_tp.__UNIQUE_ID_ddebug340, ptr noundef nonnull @.str.117, ptr noundef %dev) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %entry
  %linectl = getelementptr i8, ptr %dev, i32 2340
  %1 = ptrtoint ptr %linectl to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %linectl, align 4
  %3 = trunc i32 %2 to i16
  %conv = and i16 %3, -257
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %4 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i104 = getelementptr i8, ptr %5, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i104, i16 4609) #8, !srcloc !270
  %6 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %8 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %8) #8, !srcloc !270
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %9 = load volatile i32, ptr @jiffies, align 128
  %adapter_cnf.i = getelementptr i8, ptr %dev, i32 2320
  %10 = ptrtoint ptr %adapter_cnf.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %adapter_cnf.i, align 4
  %12 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i = icmp eq i32 %12, 0
  %..i = select i1 %tobool.not.i, i16 32, i16 160
  %13 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %14, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 5121) #8, !srcloc !270
  %15 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 %..i) #8, !srcloc !270
  %add.neg.i = sub i32 -100, %9
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %17
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %while.cond.i.while.cond.i_crit_edge, label %control_dc_dc.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

control_dc_dc.exit:                               ; preds = %while.cond.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -15, %18
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %control_dc_dc.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %19 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %19
  %cmp9 = icmp slt i32 %sub, 0
  br i1 %cmp9, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %20 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i106 = getelementptr i8, ptr %21, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i106, i16 13313) #8, !srcloc !270
  %22 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i107 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i107) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %24)
  %cmp14 = icmp sgt i16 %24, -1
  br i1 %cmp14, label %for.end.cleanup_crit_edge, label %if.end17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %for.end
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp18 = icmp eq i32 %26, 0
  %force = getelementptr i8, ptr %dev, i32 2348
  %27 = ptrtoint ptr %force to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %force, align 4
  %29 = trunc i32 %28 to i8
  %trunc103 = and i8 %29, -16
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end17
  %30 = zext i8 %trunc103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.149)
  switch i8 %trunc103, label %if.then20.sw.epilog_crit_edge [
    i8 16, label %sw.bb
    i8 48, label %sw.bb25
  ]

if.then20.sw.epilog_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %and23 = and i32 %28, -49
  %or = or i32 %and23, 32
  %31 = ptrtoint ptr %force to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or, ptr %force, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %33, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i109, i16 6145) #8, !srcloc !270
  %34 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i110 = getelementptr i8, ptr %35, i32 12
  %36 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i110) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %37 = or i16 %36, 64
  %38 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %39, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i112, i16 6145) #8, !srcloc !270
  %40 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i113 = getelementptr i8, ptr %41, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i113, i16 %37) #8, !srcloc !270
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25, %sw.bb, %if.then20.sw.epilog_crit_edge
  %42 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %43, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i115, i16 6145) #8, !srcloc !270
  %44 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i116 = getelementptr i8, ptr %45, i32 12
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i116) #8, !srcloc !267
  %47 = shl i16 %46, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %48 = and i16 %47, 16384
  br label %if.end75

if.else:                                          ; preds = %if.end17
  %49 = zext i8 %trunc103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.150)
  switch i8 %trunc103, label %if.else.sw.epilog40_crit_edge [
    i8 16, label %if.else.sw.epilog40.sink.split_crit_edge
    i8 32, label %sw.bb36
    i8 48, label %sw.bb38
  ]

if.else.sw.epilog40.sink.split_crit_edge:         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog40.sink.split

if.else.sw.epilog40_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog40

sw.bb36:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog40.sink.split

sw.bb38:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog40.sink.split

sw.epilog40.sink.split:                           ; preds = %sw.bb38, %sw.bb36, %if.else.sw.epilog40.sink.split_crit_edge
  %.sink = phi i32 [ 192, %sw.bb38 ], [ 0, %sw.bb36 ], [ 256, %if.else.sw.epilog40.sink.split_crit_edge ]
  %auto_neg_cnf39 = getelementptr i8, ptr %dev, i32 2316
  %50 = ptrtoint ptr %auto_neg_cnf39 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %.sink, ptr %auto_neg_cnf39, align 4
  br label %sw.epilog40

sw.epilog40:                                      ; preds = %sw.epilog40.sink.split, %if.else.sw.epilog40_crit_edge
  %auto_neg_cnf41 = getelementptr i8, ptr %dev, i32 2316
  %51 = ptrtoint ptr %auto_neg_cnf41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %auto_neg_cnf41, align 4
  %53 = trunc i32 %52 to i16
  %conv43 = and i16 %53, -31808
  %54 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %55, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i118, i16 7169) #8, !srcloc !270
  %56 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i119 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %58 = tail call i16 @llvm.bswap.i16(i16 %conv43) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i119, i16 %58) #8, !srcloc !270
  %59 = ptrtoint ptr %auto_neg_cnf41 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %auto_neg_cnf41, align 4
  %and45 = and i32 %60, 33536
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %and45)
  %cmp46 = icmp eq i32 %and45, 256
  br i1 %cmp46, label %do.end51, label %sw.epilog40.if.end71_crit_edge

sw.epilog40.if.end71_crit_edge:                   ; preds = %sw.epilog40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

do.end51:                                         ; preds = %sw.epilog40
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef %dev) #12
  %add60 = add i32 %18, 4000
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %do.end51
  %61 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %62, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i121, i16 15873) #8, !srcloc !270
  %63 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i122 = getelementptr i8, ptr %64, i32 12
  %65 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i122) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %65)
  %tobool59.not = icmp sgt i16 %65, -1
  br i1 %tobool59.not, label %while.cond.if.end71_crit_edge, label %while.body

while.cond.if.end71_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end71

while.body:                                       ; preds = %while.cond
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub61 = sub i32 %add60, %66
  %cmp62 = icmp slt i32 %sub61, 0
  br i1 %cmp62, label %do.end67, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

do.end67:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120) #12
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %while.cond.if.end71_crit_edge, %sw.epilog40.if.end71_crit_edge
  %67 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i124 = getelementptr i8, ptr %68, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i124, i16 15873) #8, !srcloc !270
  %69 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i125 = getelementptr i8, ptr %70, i32 12
  %71 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i125) #8, !srcloc !267
  %72 = shl i16 %71, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %73 = and i16 %72, -32768
  br label %if.end75

if.end75:                                         ; preds = %if.end71, %sw.epilog
  %fdx.0.in = phi i16 [ %48, %sw.epilog ], [ %73, %if.end71 ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %fdx.0.in)
  %tobool76.not = icmp eq i16 %fdx.0.in, 0
  %. = select i1 %tobool76.not, i32 1, i32 2
  br label %cleanup

cleanup:                                          ; preds = %if.end75, %for.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end.cleanup_crit_edge ], [ %., %if.end75 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @detect_aui(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detect_aui.__UNIQUE_ID_ddebug342, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@detect_aui, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !266

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @detect_aui.__UNIQUE_ID_ddebug342, ptr noundef nonnull @.str.124, ptr noundef %dev) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %adapter_cnf.i = getelementptr i8, ptr %dev, i32 2320
  %1 = ptrtoint ptr %adapter_cnf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adapter_cnf.i, align 4
  %3 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  %..i = select i1 %tobool.not.i, i16 32, i16 160
  %virt_addr.i.i = getelementptr i8, ptr %dev, i32 2396
  %4 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 5121) #8, !srcloc !270
  %6 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 %..i) #8, !srcloc !270
  %add.neg.i = sub i32 -100, %0
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %8
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %while.cond.i.while.cond.i_crit_edge, label %control_dc_dc.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

control_dc_dc.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %linectl = getelementptr i8, ptr %dev, i32 2340
  %9 = ptrtoint ptr %linectl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linectl, align 4
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, -769
  %conv = or i16 %12, 256
  %13 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %14, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 4609) #8, !srcloc !270
  %15 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %17) #8, !srcloc !270
  %call9 = tail call fastcc i32 @send_test_pkt(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 3
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @detect_bnc(ptr noundef %dev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @detect_bnc.__UNIQUE_ID_ddebug341, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@detect_bnc, %if.then5)) #8
          to label %do.end8 [label %if.then5], !srcloc !266

if.then5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @detect_bnc.__UNIQUE_ID_ddebug341, ptr noundef nonnull @.str.134, ptr noundef %dev) #8
  br label %do.end8

do.end8:                                          ; preds = %if.then5, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %adapter_cnf.i = getelementptr i8, ptr %dev, i32 2320
  %1 = ptrtoint ptr %adapter_cnf.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %adapter_cnf.i, align 4
  %3 = and i32 %2, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i.not = icmp eq i32 %3, 0
  %..i = select i1 %tobool.not.i.not, i16 160, i16 32
  %virt_addr.i.i = getelementptr i8, ptr %dev, i32 2396
  %4 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr.i8.i = getelementptr i8, ptr %5, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i8.i, i16 5121) #8, !srcloc !270
  %6 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 %..i) #8, !srcloc !270
  %add.neg.i = sub i32 -100, %0
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.while.cond.i_crit_edge, %do.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %8 = load volatile i32, ptr @jiffies, align 128
  %sub.i = add i32 %add.neg.i, %8
  %cmp3.i = icmp slt i32 %sub.i, 0
  br i1 %cmp3.i, label %while.cond.i.while.cond.i_crit_edge, label %control_dc_dc.exit

while.cond.i.while.cond.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.i

control_dc_dc.exit:                               ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  %linectl = getelementptr i8, ptr %dev, i32 2340
  %9 = ptrtoint ptr %linectl to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %linectl, align 4
  %11 = trunc i32 %10 to i16
  %12 = and i16 %11, -769
  %conv = or i16 %12, 256
  %13 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %14, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i16, i16 4609) #8, !srcloc !270
  %15 = ptrtoint ptr %virt_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %virt_addr.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %16, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %17) #8, !srcloc !270
  %call9 = tail call fastcc i32 @send_test_pkt(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  %. = select i1 %tobool10.not, i32 0, i32 4
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @eth_type_trans(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netif_rx(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__netdev_alloc_skb(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netif_tx_wake_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @send_test_pkt(ptr nocapture noundef readonly %dev) unnamed_addr #6 align 64 {
entry:
  %test_packet = alloca [18 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %test_packet) #8
  %0 = call ptr @memcpy(ptr %test_packet, ptr @__const.send_test_pkt.test_packet, i32 18)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %virt_addr.i = getelementptr i8, ptr %dev, i32 2396
  %2 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i78 = getelementptr i8, ptr %3, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i78, i16 4609) #8, !srcloc !270
  %4 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %7 = or i16 %6, -32768
  %8 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i80 = getelementptr i8, ptr %9, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i80, i16 4609) #8, !srcloc !270
  %10 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i81 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i81, i16 %7) #8, !srcloc !270
  %dev_addr = getelementptr inbounds %struct.net_device, ptr %dev, i32 0, i32 86
  %12 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev_addr, align 64
  %14 = call ptr @memcpy(ptr %test_packet, ptr %13, i32 6)
  %add.ptr = getelementptr inbounds i8, ptr %test_packet, i32 6
  %15 = call ptr @memcpy(ptr %add.ptr, ptr %13, i32 6)
  %16 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr5 = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr5, i16 -16384) #8, !srcloc !270
  %18 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr7 = getelementptr i8, ptr %19, i32 6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr7, i16 15360) #8, !srcloc !270
  %add = add i32 %1, 5
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %20 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %20, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %while.body, label %while.cond.while.end_crit_edge

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %while.cond
  %21 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i83 = getelementptr i8, ptr %22, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i83, i16 14337) #8, !srcloc !270
  %23 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i84 = getelementptr i8, ptr %24, i32 12
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i84) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %26 = and i16 %25, 1
  %tobool.not = icmp eq i16 %26, 0
  br i1 %tobool.not, label %while.body.while.cond_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %27 = load volatile i32, ptr @jiffies, align 128
  %sub12 = sub i32 %27, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub12)
  %cmp13 = icmp sgt i32 %sub12, -1
  br i1 %cmp13, label %while.end.cleanup_crit_edge, label %while.end.do.body.i_crit_edge

while.end.do.body.i_crit_edge:                    ; preds = %while.end
  br label %do.body.i

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %while.end.do.body.i_crit_edge
  %buf8.0.i = phi ptr [ %incdec.ptr1.i, %do.body.i.do.body.i_crit_edge ], [ %test_packet, %while.end.do.body.i_crit_edge ]
  %length.addr.0.i = phi i32 [ %dec.i, %do.body.i.do.body.i_crit_edge ], [ 30, %while.end.do.body.i_crit_edge ]
  %incdec.ptr.i = getelementptr i8, ptr %buf8.0.i, i32 1
  %28 = ptrtoint ptr %buf8.0.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %buf8.0.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %buf8.0.i, i32 2
  %30 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %incdec.ptr.i, align 1
  %conv2.i = zext i8 %31 to i16
  %shl.i = shl nuw i16 %conv2.i, 8
  %conv3.i = zext i8 %29 to i16
  %or.i = or i16 %shl.i, %conv3.i
  %32 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %virt_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  %34 = tail call i16 @llvm.bswap.i16(i16 %or.i) #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 %34) #8, !srcloc !270
  %dec.i = add nsw i32 %length.addr.0.i, -1
  %tobool.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i, label %writewords.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.i

writewords.exit:                                  ; preds = %do.body.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @send_test_pkt.__UNIQUE_ID_ddebug339, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@send_test_pkt, %if.then26)) #8
          to label %do.end30 [label %if.then26], !srcloc !266

if.then26:                                        ; preds = %writewords.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @send_test_pkt.__UNIQUE_ID_ddebug339, ptr noundef nonnull @.str.127) #8
  br label %do.end30

do.end30:                                         ; preds = %if.then26, %writewords.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %add31.neg = sub i32 -3, %35
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %do.end30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %36 = load volatile i32, ptr @jiffies, align 128
  %sub32 = add i32 %add31.neg, %36
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %37 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %38, i32 10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !269
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i87, i16 10241) #8, !srcloc !270
  %39 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %virt_addr.i, align 4
  %add.ptr2.i88 = getelementptr i8, ptr %40, i32 12
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i88) #8, !srcloc !267
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !268
  %42 = and i16 %41, 16385
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %42)
  %cmp38 = icmp eq i16 %42, 1
  %.str.128..str.130 = select i1 %cmp38, ptr @.str.128, ptr @.str.130
  %. = zext i1 %cmp38 to i32
  %call62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.128..str.130) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %while.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %while.end.cleanup_crit_edge ], [ %., %for.end ]
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %test_packet) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dev_kfree_skb_any(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cs89x0_platform_remove(ptr nocapture noundef readonly %pdev) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @unregister_netdev(ptr noundef %1) #8
  tail call void @free_netdev(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdev(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 125)
  ret void
}

attributes #0 = { cold mustprogress nofree nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }
attributes #13 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !116, !118, !119, !120, !121, !123, !124, !125, !127, !128, !130, !132, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !188, !190, !191, !192, !194, !195, !196, !197, !199, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !215, !217, !218, !219, !220, !222, !223, !224, !226, !227, !228, !230, !231, !232, !233, !235, !236, !237, !238, !240, !241, !242, !244, !245, !246, !247, !249, !250, !251, !252, !253, !255}
!llvm.module.flags = !{!257, !258, !259, !260, !261, !262, !263, !264}
!llvm.ident = !{!265}

!0 = !{ptr @__setup_media_fn, !1, !"__setup_media_fn", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 194, i32 1}
!2 = !{ptr @__initcall__kmod_cs89x0__352_1910_cs89x0_driver_init6, !3, !"__initcall__kmod_cs89x0__352_1910_cs89x0_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1910, i32 1}
!4 = !{ptr @__exitcall_cs89x0_driver_exit, !3, !"__exitcall_cs89x0_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_file353, !6, !"__UNIQUE_ID_file353", i1 false, i1 false}
!6 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1914, i32 1}
!7 = !{ptr @__UNIQUE_ID_license354, !6, !"__UNIQUE_ID_license354", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description355, !9, !"__UNIQUE_ID_description355", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1915, i32 1}
!10 = !{ptr @__UNIQUE_ID_author356, !11, !"__UNIQUE_ID_author356", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1916, i32 1}
!12 = !{ptr @__setup_str_media_fn, !1, !"__setup_str_media_fn", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 184, i32 19}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 186, i32 24}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 188, i32 24}
!19 = !{ptr @g_cs89x0_media__force, !20, !"g_cs89x0_media__force", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 180, i32 12}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1857, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cs89x0_platform_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @cs89x0_platform_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1870, i32 3}
!31 = !{ptr @cs89x0_platform_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cs89x0_platform_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @cs89x0_probe1.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1323, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1336, i32 2}
!38 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @cs89x0_probe1.__UNIQUE_ID_ddebug348, !37, !"__UNIQUE_ID_ddebug348", i1 false, i1 false}
!41 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1342, i32 3}
!44 = !{ptr @cs89x0_probe1.__UNIQUE_ID_ddebug349, !43, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!45 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__already_done", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1366, i32 2}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @cs89x0_probe1._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @cs89x0_probe1._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1368, i32 2}
!53 = !{ptr @cs89x0_probe1._entry.19, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cs89x0_probe1._entry_ptr.21, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1426, i32 3}
!59 = !{ptr @cs89x0_probe1._entry.24, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @cs89x0_probe1._entry_ptr.26, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1433, i32 3}
!63 = !{ptr @cs89x0_probe1._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @cs89x0_probe1._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1436, i32 2}
!67 = !{ptr @cs89x0_probe1._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cs89x0_probe1._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1441, i32 3}
!71 = !{ptr @cs89x0_probe1._entry.33, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @cs89x0_probe1._entry_ptr.35, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.37, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1443, i32 3}
!75 = !{ptr @cs89x0_probe1._entry.36, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cs89x0_probe1._entry_ptr.38, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1449, i32 4}
!79 = !{ptr @cs89x0_probe1._entry.39, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @cs89x0_probe1._entry_ptr.41, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.42, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1473, i32 3}
!83 = !{ptr @cs89x0_probe1.__UNIQUE_ID_ddebug350, !82, !"__UNIQUE_ID_ddebug350", i1 false, i1 false}
!84 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1502, i32 2}
!87 = !{ptr @cs89x0_probe1.__UNIQUE_ID_ddebug351, !86, !"__UNIQUE_ID_ddebug351", i1 false, i1 false}
!88 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.47, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1513, i32 2}
!91 = !{ptr @cs89x0_probe1._entry.46, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @cs89x0_probe1._entry_ptr.48, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.50, !90, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.51, !90, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.53, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1554, i32 2}
!98 = !{ptr @cs89x0_probe1._entry.52, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @cs89x0_probe1._entry_ptr.54, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.56, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1562, i32 3}
!102 = !{ptr @cs89x0_probe1._entry.55, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @cs89x0_probe1._entry_ptr.57, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.59, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1565, i32 2}
!106 = !{ptr @cs89x0_probe1._entry.58, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @cs89x0_probe1._entry_ptr.60, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.62, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1570, i32 2}
!110 = !{ptr @cs89x0_probe1._entry.61, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @cs89x0_probe1._entry_ptr.63, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @version, !113, !"version", i1 false, i1 false}
!113 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 89, i32 13}
!114 = distinct !{null, !115, !"net_debug", i1 false, i1 false}
!115 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 118, i32 21}
!116 = !{ptr @.str.64, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 260, i32 2}
!118 = !{ptr @.str.65, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @get_eeprom_data._entry, !117, !"_entry", i1 false, i1 false}
!120 = !{ptr @get_eeprom_data._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 269, i32 3}
!123 = !{ptr @get_eeprom_data._entry.66, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @get_eeprom_data._entry_ptr.68, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @get_eeprom_data._entry.69, !126, !"_entry", i1 false, i1 false}
!126 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 271, i32 2}
!127 = !{ptr @get_eeprom_data._entry_ptr.70, !126, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @net_ops, !129, !"net_ops", i1 false, i1 false}
!129 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1257, i32 36}
!130 = !{ptr @.str.71, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 857, i32 4}
!132 = !{ptr @.str.72, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @net_open._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @net_open._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.74, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 879, i32 4}
!137 = !{ptr @net_open._entry.73, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @net_open._entry_ptr.75, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.77, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 957, i32 3}
!141 = !{ptr @net_open._entry.76, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @net_open._entry_ptr.78, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.80, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 977, i32 4}
!145 = !{ptr @net_open._entry.79, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @net_open._entry_ptr.81, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.83, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 986, i32 4}
!149 = !{ptr @net_open._entry.82, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @net_open._entry_ptr.84, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.86, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 994, i32 4}
!153 = !{ptr @net_open._entry.85, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @net_open._entry_ptr.87, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.89, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1016, i32 3}
!157 = !{ptr @net_open._entry.88, !156, !"_entry", i1 false, i1 false}
!158 = !{ptr @net_open._entry_ptr.90, !156, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.92, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1021, i32 3}
!161 = !{ptr @net_open._entry.91, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @net_open._entry_ptr.93, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.95, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1025, i32 3}
!165 = !{ptr @net_open._entry.94, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @net_open._entry_ptr.96, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.98, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1028, i32 3}
!169 = !{ptr @net_open._entry.97, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @net_open._entry_ptr.99, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.101, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1031, i32 3}
!173 = !{ptr @net_open._entry.100, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @net_open._entry_ptr.102, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.104, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1034, i32 3}
!177 = !{ptr @net_open._entry.103, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @net_open._entry_ptr.105, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.106, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1079, i32 2}
!181 = !{ptr @net_open.__UNIQUE_ID_ddebug345, !180, !"__UNIQUE_ID_ddebug345", i1 false, i1 false}
!182 = !{ptr @.str.107, !180, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.108, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 730, i32 3}
!185 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!186 = distinct !{null, !184, !"__UNIQUE_ID_ddebug344", i1 false, i1 false}
!187 = distinct !{null, !184, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.111, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 768, i32 5}
!190 = !{ptr @net_interrupt._entry, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @net_interrupt._entry_ptr, !189, !"_entry_ptr", i1 false, i1 false}
!192 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 697, i32 2}
!194 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!195 = distinct !{null, !193, !"__UNIQUE_ID_ddebug343", i1 false, i1 false}
!196 = distinct !{null, !193, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.115, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 564, i32 2}
!199 = !{ptr @.str.116, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @detect_tp.__UNIQUE_ID_ddebug340, !198, !"__UNIQUE_ID_ddebug340", i1 false, i1 false}
!201 = !{ptr @.str.117, !198, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.118, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 621, i32 4}
!204 = !{ptr @detect_tp._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @detect_tp._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 624, i32 6}
!208 = !{ptr @detect_tp._entry.119, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @detect_tp._entry_ptr.121, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.122, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 658, i32 2}
!212 = !{ptr @.str.123, !211, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @detect_aui.__UNIQUE_ID_ddebug342, !211, !"__UNIQUE_ID_ddebug342", i1 false, i1 false}
!214 = !{ptr @.str.124, !211, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.125, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 539, i32 2}
!217 = !{ptr @.str.126, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @send_test_pkt.__UNIQUE_ID_ddebug339, !216, !"__UNIQUE_ID_ddebug339", i1 false, i1 false}
!219 = !{ptr @.str.127, !216, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @.str.128, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 544, i32 3}
!222 = !{ptr @send_test_pkt._entry, !221, !"_entry", i1 false, i1 false}
!223 = !{ptr @send_test_pkt._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!224 = !{ptr @.str.130, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 547, i32 2}
!226 = !{ptr @send_test_pkt._entry.129, !225, !"_entry", i1 false, i1 false}
!227 = !{ptr @send_test_pkt._entry_ptr.131, !225, !"_entry_ptr", i1 false, i1 false}
!228 = !{ptr @.str.132, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 642, i32 2}
!230 = !{ptr @.str.133, !229, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @detect_bnc.__UNIQUE_ID_ddebug341, !229, !"__UNIQUE_ID_ddebug341", i1 false, i1 false}
!232 = !{ptr @.str.134, !229, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.135, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1147, i32 2}
!235 = distinct !{null, !234, !"<string literal>", i1 false, i1 false}
!236 = distinct !{null, !234, !"__UNIQUE_ID_ddebug346", i1 false, i1 false}
!237 = distinct !{null, !234, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @.str.138, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1171, i32 3}
!240 = !{ptr @net_send_packet._entry, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @net_send_packet._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.139, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1232, i32 2}
!244 = !{ptr @.str.140, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @set_mac_address.__UNIQUE_ID_ddebug347, !243, !"__UNIQUE_ID_ddebug347", i1 false, i1 false}
!246 = !{ptr @.str.141, !243, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.142, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1135, i32 2}
!249 = !{ptr @.str.143, !248, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @net_timeout._entry, !248, !"_entry", i1 false, i1 false}
!251 = !{ptr @net_timeout._entry_ptr, !248, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.144, !248, !"<string literal>", i1 false, i1 false}
!253 = !{ptr @cs89x0_driver, !254, !"cs89x0_driver", i1 false, i1 false}
!254 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1902, i32 31}
!255 = !{ptr @cs89x0_match, !256, !"cs89x0_match", i1 false, i1 false}
!256 = !{!"../drivers/net/ethernet/cirrus/cs89x0.c", i32 1895, i32 49}
!257 = !{i32 1, !"wchar_size", i32 2}
!258 = !{i32 1, !"min_enum_size", i32 4}
!259 = !{i32 8, !"branch-target-enforcement", i32 0}
!260 = !{i32 8, !"sign-return-address", i32 0}
!261 = !{i32 8, !"sign-return-address-all", i32 0}
!262 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!263 = !{i32 7, !"uwtable", i32 1}
!264 = !{i32 7, !"frame-pointer", i32 2}
!265 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!266 = !{i64 2149003443, i64 2149003448, i64 2149003461, i64 2149003505, i64 2149003539, i64 2149003560}
!267 = !{i64 6758935}
!268 = !{i64 2154299510}
!269 = !{i64 2154300927}
!270 = !{i64 6758735}
!271 = !{!"branch_weights", i32 2000, i32 1}
!272 = !{i64 2154300503}
!273 = !{i64 6759158}
