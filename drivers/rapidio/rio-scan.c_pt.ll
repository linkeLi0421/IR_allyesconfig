; ModuleID = '/llk/IR_all_yes/drivers/rapidio/rio-scan.c_pt.bc'
source_filename = "../drivers/rapidio/rio-scan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.rio_scan = type { ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rio_mport = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.mutex, %struct.resource, [16 x %struct.resource], [4 x %struct.rio_msg], [4 x %struct.rio_msg], i32, ptr, i8, i8, i32, i32, i32, [40 x i8], %struct.device, ptr, %struct.dma_device, ptr, %struct.atomic_t, i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.rio_msg = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rio_net = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, i8, %struct.device, ptr, ptr }
%struct.rio_id_table = type { i16, i32, %struct.spinlock, [0 x i32] }
%struct.rio_switch = type { %struct.list_head, ptr, i32, ptr, %struct.spinlock, [0 x ptr] }
%struct.rio_dev = type { %struct.list_head, %struct.list_head, ptr, i8, i16, i16, i32, i16, i16, i16, i16, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr, %struct.device, [16 x %struct.resource], ptr, i16, i8, ptr, %struct.atomic_t, [0 x %struct.rio_switch] }
%struct.rio_switch_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__param_str_scan = internal constant [14 x i8] c"rio_scan.scan\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@scan = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_scan = internal constant %struct.kernel_param { ptr @__param_str_scan, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.68 { ptr @scan } }, section "__param", align 4
@__UNIQUE_ID_scantype248 = internal constant [28 x i8] c"rio_scan.parmtype=scan:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_scan249 = internal constant [77 x i8] c"rio_scan.parm=scan:Start RapidIO network enumeration/discovery (default = 0)\00", section ".modinfo", align 1
@__initcall__kmod_rio_scan__250_1149_rio_basic_attach7 = internal global ptr @rio_basic_attach, section ".initcall7.init", align 4
@__UNIQUE_ID_description251 = internal constant [57 x i8] c"rio_scan.description=Basic RapidIO enumeration/discovery\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [39 x i8] c"rio_scan.file=drivers/rapidio/rio-scan\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [21 x i8] c"rio_scan.license=GPL\00", section ".modinfo", align 1
@rio_scan_ops = internal global { %struct.rio_scan, [20 x i8] } { %struct.rio_scan { ptr null, ptr @rio_enum_mport, ptr @rio_disc_mport }, [20 x i8] zeroinitializer }, align 32
@rio_enum_mport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 948, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016RIO: enumerate master port %d, %s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rio_enum_mport\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/rapidio/rio-scan.c\00", [37 x i8] zeroinitializer }, align 32
@rio_enum_mport._entry_ptr = internal global ptr @rio_enum_mport._entry, section ".printk_index", align 4
@rio_enum_mport._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\016RIO: master port %d device has been enumerated by a remote host\0A\00", [61 x i8] zeroinitializer }, align 32
@rio_enum_mport._entry_ptr.5 = internal global ptr @rio_enum_mport._entry.3, section ".printk_index", align 4
@rio_enum_mport._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 972, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013RIO: failed to allocate new net\0A\00", [61 x i8] zeroinitializer }, align 32
@rio_enum_mport._entry_ptr.8 = internal global ptr @rio_enum_mport._entry.6, section ".printk_index", align 4
@next_comptag = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@next_destid = internal global { i32, [28 x i8] } zeroinitializer, align 32
@rio_enum_mport._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 993, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016RIO: master port %d device has lost enumeration to a remote host\0A\00", [60 x i8] zeroinitializer }, align 32
@rio_enum_mport._entry_ptr.11 = internal global ptr @rio_enum_mport._entry.9, section ".printk_index", align 4
@rio_enum_mport._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 1005, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016RIO: master port %d link inactive\0A\00", [59 x i8] zeroinitializer }, align 32
@rio_enum_mport._entry_ptr.14 = internal global ptr @rio_enum_mport._entry.12, section ".printk_index", align 4
@rio_scan_alloc_net._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 852, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013RIO: failed to allocate destID table\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rio_scan_alloc_net\00", [45 x i8] zeroinitializer }, align 32
@rio_scan_alloc_net._entry_ptr = internal global ptr @rio_scan_alloc_net._entry, section ".printk_index", align 4
@rio_scan_alloc_net.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&idtab->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rnet_%d\00", [24 x i8] zeroinitializer }, align 32
@rio_scan_release_net.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rio_scan\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rio_scan_release_net\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"RIO-SCAN: %s: net_%d\0A\00", [42 x i8] zeroinitializer }, align 32
@rio_scan_release_dev.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.22, ptr @.str.2, ptr @.str.21, i8 0, i8 -52, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rio_scan_release_dev\00", [43 x i8] zeroinitializer }, align 32
@rio_enum_peer.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 -124, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rio_enum_peer\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RIO: device access check failed\0A\00", [63 x i8] zeroinitializer }, align 32
@rio_enum_peer.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.25, i8 0, i8 -122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"RIO: PE already discovered by this host\0A\00", [55 x i8] zeroinitializer }, align 32
@rio_enum_peer.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.26, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RIO: redundant path to %s\0A\00", [37 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rio_enum_peer.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.27, i8 0, i8 -113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"RIO: PE locked by a higher priority host...retreating\0A\00", [41 x i8] zeroinitializer }, align 32
@rio_enum_peer.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.28, i8 0, i8 -103, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"RIO: found %s (vid %4.4x did %4.4x) with %d ports\0A\00", [45 x i8] zeroinitializer }, align 32
@rio_enum_peer.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.29, i8 0, i8 -99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"RIO: scanning device on port %d\0A\00", [63 x i8] zeroinitializer }, align 32
@rio_enum_peer.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.23, ptr @.str.2, ptr @.str.30, i8 0, i8 -84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"RIO: found %s (vid %4.4x did %4.4x)\0A\00", [59 x i8] zeroinitializer }, align 32
@rio_setup_device.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.31, ptr @.str.2, ptr @.str.32, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rio_setup_device\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"RIO: %s Register Map %d device\0A\00", [32 x i8] zeroinitializer }, align 32
@rio_setup_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 387, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013RIO: Component Tag Counter Overflow\0A\00", [57 x i8] zeroinitializer }, align 32
@rio_setup_device._entry_ptr = internal global ptr @rio_setup_device._entry, section ".printk_index", align 4
@rio_setup_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&rswitch->lock\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x:s:%04x\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%02x:e:%04x\00", [20 x i8] zeroinitializer }, align 32
@rio_clear_locks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016RIO: badness when releasing host lock on master port, result %8.8x\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rio_clear_locks\00", [16 x i8] zeroinitializer }, align 32
@rio_clear_locks._entry_ptr = internal global ptr @rio_clear_locks._entry, section ".printk_index", align 4
@rio_clear_locks._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016RIO: badness when releasing host lock on vid %4.4x did %4.4x\0A\00", [32 x i8] zeroinitializer }, align 32
@rio_clear_locks._entry_ptr.41 = internal global ptr @rio_clear_locks._entry.39, section ".printk_index", align 4
@rio_disc_mport._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.43, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016RIO: discover master port %d, %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rio_disc_mport\00", [17 x i8] zeroinitializer }, align 32
@rio_disc_mport._entry_ptr = internal global ptr @rio_disc_mport._entry, section ".printk_index", align 4
@rio_disc_mport.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.43, ptr @.str.2, ptr @.str.44, i8 1, i8 12, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RIO: wait for enumeration to complete...\0A\00", [54 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@rio_disc_mport.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.43, ptr @.str.2, ptr @.str.45, i8 1, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"RIO: discovery timeout on mport %d %s\0A\00", [57 x i8] zeroinitializer }, align 32
@rio_disc_mport.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.43, ptr @.str.2, ptr @.str.46, i8 1, i8 15, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"RIO: ... enumeration done\0A\00", [37 x i8] zeroinitializer }, align 32
@rio_disc_mport._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.2, i32 1089, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013RIO: Failed to allocate new net\0A\00", [61 x i8] zeroinitializer }, align 32
@rio_disc_mport._entry_ptr.49 = internal global ptr @rio_disc_mport._entry.47, section ".printk_index", align 4
@rio_disc_mport._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.43, ptr @.str.2, i32 1103, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016RIO: master port %d device has failed discovery\0A\00", [45 x i8] zeroinitializer }, align 32
@rio_disc_mport._entry_ptr.52 = internal global ptr @rio_disc_mport._entry.50, section ".printk_index", align 4
@rio_disc_peer.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.2, ptr @.str.28, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rio_disc_peer\00", [18 x i8] zeroinitializer }, align 32
@rio_disc_peer.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.2, ptr @.str.29, i8 0, i8 -67, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@rio_disc_peer.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.53, ptr @.str.2, ptr @.str.30, i8 0, i8 -61, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.54 = private unnamed_addr constant [5 x i8] c"scan\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1121, i32 13 }
@___asan_gen_.57 = private unnamed_addr constant [13 x i8] c"rio_scan_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1115, i32 24 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 947, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 961, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 972, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant [13 x i8] c"next_comptag\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 46, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"next_destid\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 45, i32 12 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 991, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1004, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 852, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 860, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 867, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 810, i32 2 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 819, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 531, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 536, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 548, i32 5 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 573, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 609, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 628, i32 5 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 690, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 369, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 387, i32 4 }
@___asan_gen_.168 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 421, i32 3 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 431, i32 28 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 441, i32 28 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 203, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 213, i32 4 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1062, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1072, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1081, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1085, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1089, i32 4 }
@___asan_gen_.219 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 1101, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.226 = private constant [30 x i8] c"../drivers/rapidio/rio-scan.c\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.226, i32 745, i32 3 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_scan249, ptr @__UNIQUE_ID_scantype248, ptr @__initcall__kmod_rio_scan__250_1149_rio_basic_attach7, ptr @__param_scan, ptr @rio_clear_locks._entry, ptr @rio_clear_locks._entry.39, ptr @rio_clear_locks._entry_ptr, ptr @rio_clear_locks._entry_ptr.41, ptr @rio_disc_mport._entry, ptr @rio_disc_mport._entry.47, ptr @rio_disc_mport._entry.50, ptr @rio_disc_mport._entry_ptr, ptr @rio_disc_mport._entry_ptr.49, ptr @rio_disc_mport._entry_ptr.52, ptr @rio_enum_mport._entry, ptr @rio_enum_mport._entry.12, ptr @rio_enum_mport._entry.3, ptr @rio_enum_mport._entry.6, ptr @rio_enum_mport._entry.9, ptr @rio_enum_mport._entry_ptr, ptr @rio_enum_mport._entry_ptr.11, ptr @rio_enum_mport._entry_ptr.14, ptr @rio_enum_mport._entry_ptr.5, ptr @rio_enum_mport._entry_ptr.8, ptr @rio_scan_alloc_net._entry, ptr @rio_scan_alloc_net._entry_ptr, ptr @rio_setup_device._entry, ptr @rio_setup_device._entry_ptr, ptr @scan, ptr @rio_scan_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @next_comptag, ptr @next_destid, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @rio_scan_alloc_net.__key, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @rio_setup_device.__key, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.48, ptr @.str.51, ptr @.str.53], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scan to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_scan_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_enum_mport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_enum_mport._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_enum_mport._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_comptag to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @next_destid to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_enum_mport._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_enum_mport._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_scan_alloc_net._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_scan_alloc_net.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_setup_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_setup_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_clear_locks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_clear_locks._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_disc_mport._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_disc_mport._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rio_disc_mport._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_basic_attach() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @rio_register_scan(i32 noundef -1, ptr noundef nonnull @rio_scan_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr @scan, align 1, !range !145
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool1.not = icmp eq i8 %0, 0
  br i1 %tobool1.not, label %if.end.return_crit_edge, label %if.then2

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 @rio_init_mports() #6
  br label %return

return:                                           ; preds = %if.then2, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -5, %entry.return_crit_edge ], [ 0, %if.then2 ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_register_scan(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_init_mports() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_enum_mport(ptr noundef %mport, i32 noundef %flags) #2 align 64 {
entry:
  %result.i77 = alloca i32, align 4
  %result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 8
  %conv = zext i8 %1 to i32
  %name = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv, ptr noundef %name) #9
  %nnode = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 3
  %2 = ptrtoint ptr %nnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %nnode, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %prev = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %6 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %result.i, align 4, !annotation !146
  %host_deviceid.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 10
  %7 = ptrtoint ptr %host_deviceid.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %host_deviceid.i, align 8
  %call.i.i = tail call i32 @__rio_local_write_config_32(ptr noundef %mport, i32 noundef 104, i32 noundef %8) #6
  %call.i9.i = call i32 @__rio_local_read_config_32(ptr noundef %mport, i32 noundef 104, ptr noundef nonnull %result.i) #6
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result.i, align 4
  %and.i = and i32 %10, 65535
  %11 = ptrtoint ptr %host_deviceid.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %host_deviceid.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %12)
  %cmp.not.i = icmp eq i32 %and.i, %12
  br i1 %cmp.not.i, label %if.end13, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %id, align 8
  %conv11 = zext i8 %14 to i32
  %call12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv11) #9
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %conv.i = trunc i32 %10 to i16
  call void @rio_local_set_device_id(ptr noundef %mport, i16 noundef zeroext %conv.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i77) #6
  %15 = ptrtoint ptr %result.i77 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %result.i77, align 4
  %phys_efptr.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 15
  %16 = ptrtoint ptr %phys_efptr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys_efptr.i, align 8
  %index.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 13
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %index.i, align 1
  %conv.i78 = zext i8 %19 to i32
  %phys_rmap.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 16
  %20 = ptrtoint ptr %phys_rmap.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_rmap.i, align 4
  %mul.i = shl i32 %21, 5
  %mul1.i = mul i32 %mul.i, %conv.i78
  %add.i = add i32 %17, 88
  %add2.i = add i32 %add.i, %mul1.i
  %call.i.i79 = call i32 @__rio_local_read_config_32(ptr noundef %mport, i32 noundef %add2.i, ptr noundef nonnull %result.i77) #6
  %22 = ptrtoint ptr %result.i77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result.i77, align 4
  %and.i80 = and i32 %23, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i77) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i80)
  %tobool15.not = icmp eq i32 %and.i80, 0
  br i1 %tobool15.not, label %do.end49, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call.i = call ptr @rio_alloc_net(ptr noundef %mport) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then16.do.end22_crit_edge, label %land.lhs.true.i

if.then16.do.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end22

land.lhs.true.i:                                  ; preds = %if.then16
  %sys_size.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 14
  %24 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sys_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i = icmp eq i32 %25, 0
  %add3.i = select i1 %tobool2.not.i, i32 84, i32 8244
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add3.i, i32 noundef 3520) #10
  %cmp.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp.i, label %do.end.i, label %if.end25

do.end.i:                                         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %call6.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #9
  call void @rio_free_net(ptr noundef nonnull %call.i) #6
  br label %do.end22

do.end22:                                         ; preds = %do.end.i, %if.then16.do.end22_crit_edge
  %call24 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %cleanup

if.end25:                                         ; preds = %land.lhs.true.i
  %enum_data.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 7
  %26 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call9.i.i.i, ptr %enum_data.i, align 8
  %release.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 8
  %27 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @rio_scan_release_net, ptr %release.i, align 4
  %28 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 0, ptr %call9.i.i.i, align 128
  %29 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sys_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool9.not.i = icmp eq i32 %30, 0
  %cond10.i = select i1 %tobool9.not.i, i32 256, i32 65536
  %max.i = getelementptr inbounds %struct.rio_id_table, ptr %call9.i.i.i, i32 0, i32 1
  %31 = ptrtoint ptr %max.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %cond10.i, ptr %max.i, align 4
  %lock.i = getelementptr inbounds %struct.rio_id_table, ptr %call9.i.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @rio_scan_alloc_net.__key, i16 noundef signext 3) #6
  %32 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %id, align 8
  %id18.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 5
  %34 = ptrtoint ptr %id18.i to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %id18.i, align 4
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 4
  %35 = ptrtoint ptr %hport.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %mport, ptr %hport.i, align 8
  %dev.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 6
  %conv.i81 = zext i8 %33 to i32
  %call20.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i81) #6
  %dev21.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 6, i32 1
  %36 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev21.i, ptr %parent.i, align 8
  %release24.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 6, i32 35
  %37 = ptrtoint ptr %release24.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @rio_scan_release_dev, ptr %release24.i, align 4
  %call25.i = call i32 @rio_add_net(ptr noundef nonnull %call.i) #6
  %38 = ptrtoint ptr %host_deviceid.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %host_deviceid.i, align 8
  %conv26 = trunc i32 %39 to i16
  %40 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enum_data.i, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %41, align 4
  %sub.i = sub i16 %conv26, %43
  %lock.i83 = getelementptr inbounds %struct.rio_id_table, ptr %41, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i83) #6
  %conv3.i = zext i16 %sub.i to i32
  %table.i = getelementptr inbounds %struct.rio_id_table, ptr %41, i32 0, i32 3
  %call.i84 = call i32 @_test_and_set_bit(i32 noundef %conv3.i, ptr noundef %table.i) #6
  call void @_raw_spin_unlock(ptr noundef %lock.i83) #6
  %call28 = call i32 @rio_enable_rx_tx_port(ptr noundef %mport, i32 noundef 1, i16 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %44 = load i32, ptr @next_comptag, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr @next_comptag, align 4
  %call.i85 = call i32 @__rio_local_write_config_32(ptr noundef %mport, i32 noundef 108, i32 noundef %44) #6
  %45 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %enum_data.i, align 8
  %lock.i87 = getelementptr inbounds %struct.rio_id_table, ptr %46, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i87) #6
  %table.i88 = getelementptr inbounds %struct.rio_id_table, ptr %46, i32 0, i32 3
  %max.i89 = getelementptr inbounds %struct.rio_id_table, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %max.i89 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max.i89, align 4
  %call.i90 = call i32 @_find_first_zero_bit_be(ptr noundef %table.i88, i32 noundef %48) #6
  %49 = ptrtoint ptr %max.i89 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %max.i89, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i90, i32 %50)
  %cmp.i91 = icmp ult i32 %call.i90, %50
  br i1 %cmp.i91, label %if.then.i, label %if.end25.rio_destid_alloc.exit_crit_edge

if.end25.rio_destid_alloc.exit_crit_edge:         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_destid_alloc.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %call.i90, ptr noundef %table.i88) #6
  %51 = ptrtoint ptr %46 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %46, align 4
  %53 = trunc i32 %call.i90 to i16
  %phi.cast.i = add i16 %52, %53
  %phi.cast = zext i16 %phi.cast.i to i32
  br label %rio_destid_alloc.exit

rio_destid_alloc.exit:                            ; preds = %if.then.i, %if.end25.rio_destid_alloc.exit_crit_edge
  %destid.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 65535, %if.end25.rio_destid_alloc.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i87) #6
  store i32 %destid.0.i, ptr @next_destid, align 4
  %call32 = call fastcc i32 @rio_enum_peer(ptr noundef nonnull %call.i, ptr noundef %mport, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end38, label %if.end44

do.end38:                                         ; preds = %rio_destid_alloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %id, align 8
  %conv41 = zext i8 %55 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %conv41) #9
  call fastcc void @rio_clear_locks(ptr noundef nonnull %call.i)
  br label %cleanup

if.end44:                                         ; preds = %rio_destid_alloc.exit
  %56 = load i32, ptr @next_destid, align 4
  %conv45 = trunc i32 %56 to i16
  %57 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %enum_data.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  %sub.i94 = sub i16 %conv45, %60
  %lock.i95 = getelementptr inbounds %struct.rio_id_table, ptr %58, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i95) #6
  %conv3.i96 = zext i16 %sub.i94 to i32
  %table.i97 = getelementptr inbounds %struct.rio_id_table, ptr %58, i32 0, i32 3
  call void @_clear_bit(i32 noundef %conv3.i96, ptr noundef %table.i97) #6
  call void @_raw_spin_unlock(ptr noundef %lock.i95) #6
  %devices.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 1
  %61 = ptrtoint ptr %devices.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pn66.i = load ptr, ptr %devices.i, align 8
  %cmp.not67.i = icmp eq ptr %.pn66.i, %devices.i
  br i1 %cmp.not67.i, label %if.end44.rio_update_route_tables.exit_crit_edge, label %for.body.lr.ph.i

if.end44.rio_update_route_tables.exit_crit_edge:  ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_update_route_tables.exit

for.body.lr.ph.i:                                 ; preds = %if.end44
  %switches.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 2
  br label %for.body.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.body.i.for.cond.loopexit.i_crit_edge
  %62 = ptrtoint ptr %.pn68.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %.pn.i = load ptr, ptr %.pn68.i, align 8
  %cmp.not.i98 = icmp eq ptr %.pn.i, %devices.i
  br i1 %cmp.not.i98, label %for.cond.loopexit.i.rio_update_route_tables.exit_crit_edge, label %for.cond.loopexit.i.for.body.i_crit_edge

for.cond.loopexit.i.for.body.i_crit_edge:         ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.cond.loopexit.i.rio_update_route_tables.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_update_route_tables.exit

for.body.i:                                       ; preds = %for.cond.loopexit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn68.i = phi ptr [ %.pn66.i, %for.body.lr.ph.i ], [ %.pn.i, %for.cond.loopexit.i.for.body.i_crit_edge ]
  %destid2.i = getelementptr i8, ptr %.pn68.i, i32 1524
  %63 = ptrtoint ptr %destid2.i to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %destid2.i, align 4
  %65 = ptrtoint ptr %switches.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %rswitch.063.i = load ptr, ptr %switches.i, align 4
  %cmp9.not64.i = icmp eq ptr %rswitch.063.i, %switches.i
  br i1 %cmp9.not64.i, label %for.body.i.for.cond.loopexit.i_crit_edge, label %for.body11.lr.ph.i

for.body.i.for.cond.loopexit.i_crit_edge:         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

for.body11.lr.ph.i:                               ; preds = %for.body.i
  %pef.i.i = getelementptr i8, ptr %.pn68.i, i32 32
  %rswitch12.i = getelementptr i8, ptr %.pn68.i, i32 1536
  %idxprom.i = zext i16 %64 to i32
  br label %for.body11.i

for.body11.i:                                     ; preds = %for.inc.i.for.body11.i_crit_edge, %for.body11.lr.ph.i
  %rswitch.065.i = phi ptr [ %rswitch.063.i, %for.body11.lr.ph.i ], [ %rswitch.0.i, %for.inc.i.for.body11.i_crit_edge ]
  %66 = ptrtoint ptr %pef.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %pef.i.i, align 8
  %68 = and i32 %67, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i99 = icmp ne i32 %68, 0
  %cmp13.i = icmp eq ptr %rswitch12.i, %rswitch.065.i
  %or.cond.i = select i1 %tobool.not.i99, i1 %cmp13.i, i1 false
  br i1 %or.cond.i, label %for.body11.i.for.inc.i_crit_edge, label %if.end.i100

for.body11.i.for.inc.i_crit_edge:                 ; preds = %for.body11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i100:                                      ; preds = %for.body11.i
  %route_table.i = getelementptr inbounds %struct.rio_switch, ptr %rswitch.065.i, i32 0, i32 1
  %69 = ptrtoint ptr %route_table.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %route_table.i, align 4
  %arrayidx.i = getelementptr i8, ptr %70, i32 %idxprom.i
  %71 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %72)
  %cmp14.i = icmp eq i8 %72, -1
  br i1 %cmp14.i, label %if.then16.i, label %if.end.i100.for.inc.i_crit_edge

if.end.i100.for.inc.i_crit_edge:                  ; preds = %if.end.i100
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then16.i:                                      ; preds = %if.end.i100
  %destid20.i = getelementptr i8, ptr %rswitch.065.i, i32 -12
  %73 = ptrtoint ptr %destid20.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %destid20.i, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %74, i16 %64)
  %cmp23.i = icmp eq i16 %74, %64
  br i1 %cmp23.i, label %if.then16.i.for.inc.i_crit_edge, label %if.end26.i

if.then16.i.for.inc.i_crit_edge:                  ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end26.i:                                       ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr19.i = getelementptr i8, ptr %rswitch.065.i, i32 -1544
  %swpinfo.i = getelementptr i8, ptr %rswitch.065.i, i32 -1500
  %75 = ptrtoint ptr %swpinfo.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %swpinfo.i, align 4
  %conv27.i = trunc i32 %76 to i8
  %call28.i = call i32 @rio_route_add_entry(ptr noundef %add.ptr19.i, i16 noundef zeroext 255, i16 noundef zeroext %64, i8 noundef zeroext %conv27.i, i32 noundef 0) #6
  %77 = ptrtoint ptr %route_table.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %route_table.i, align 4
  %arrayidx31.i = getelementptr i8, ptr %78, i32 %idxprom.i
  %79 = ptrtoint ptr %arrayidx31.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv27.i, ptr %arrayidx31.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end26.i, %if.then16.i.for.inc.i_crit_edge, %if.end.i100.for.inc.i_crit_edge, %for.body11.i.for.inc.i_crit_edge
  %80 = ptrtoint ptr %rswitch.065.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %rswitch.0.i = load ptr, ptr %rswitch.065.i, align 4
  %cmp9.not.i = icmp eq ptr %rswitch.0.i, %switches.i
  br i1 %cmp9.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body11.i_crit_edge

for.inc.i.for.body11.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body11.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.loopexit.i

rio_update_route_tables.exit:                     ; preds = %for.cond.loopexit.i.rio_update_route_tables.exit_crit_edge, %if.end44.rio_update_route_tables.exit_crit_edge
  call fastcc void @rio_clear_locks(ptr noundef nonnull %call.i)
  call void @rio_pw_enable(ptr noundef %mport, i32 noundef 1) #6
  br label %cleanup

do.end49:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %id, align 8
  %conv52 = zext i8 %82 to i32
  %call53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %conv52) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end49, %rio_update_route_tables.exit, %do.end38, %do.end22, %do.end8, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %lor.lhs.false.cleanup_crit_edge ], [ -16, %entry.cleanup_crit_edge ], [ -16, %do.end8 ], [ -16, %do.end38 ], [ 0, %rio_update_route_tables.exit ], [ -12, %do.end22 ], [ -22, %do.end49 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rio_disc_mport(ptr noundef %mport, i32 noundef %flags) #2 align 64 {
entry:
  %sport.i = alloca i8, align 1
  %regval.i126 = alloca i32, align 4
  %regval.i = alloca i32, align 4
  %result.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 12
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 8
  %conv = zext i8 %1 to i32
  %name = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 17
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %conv, ptr noundef %name) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %2 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %result.i, align 4
  %phys_efptr.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 15
  %3 = ptrtoint ptr %phys_efptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %phys_efptr.i, align 8
  %index.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 13
  %5 = ptrtoint ptr %index.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %index.i, align 1
  %conv.i = zext i8 %6 to i32
  %phys_rmap.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 16
  %7 = ptrtoint ptr %phys_rmap.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys_rmap.i, align 4
  %mul.i = shl i32 %8, 5
  %mul1.i = mul i32 %mul.i, %conv.i
  %add.i = add i32 %4, 88
  %add2.i = add i32 %add.i, %mul1.i
  %call.i.i = call i32 @__rio_local_read_config_32(ptr noundef %mport, i32 noundef %add2.i, ptr noundef nonnull %result.i) #6
  %9 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %result.i, align 4
  %and.i = and i32 %10, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i) #6
  %11 = ptrtoint ptr %regval.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %regval.i, align 4, !annotation !146
  %12 = ptrtoint ptr %phys_efptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %phys_efptr.i, align 8
  %add.i123 = add i32 %13, 60
  %call.i.i124 = call i32 @__rio_local_read_config_32(ptr noundef %mport, i32 noundef %add.i123, ptr noundef nonnull %regval.i) #6
  %14 = ptrtoint ptr %regval.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %regval.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i) #6
  %16 = and i32 %15, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool3.not = icmp eq i32 %16, 0
  br i1 %tobool3.not, label %if.else, label %if.then.do.body46_crit_edge

if.then.do.body46_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.else:                                          ; preds = %if.then
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %do.body8, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body8:                                         ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_disc_mport.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_disc_mport, %do.end18)) #6
          to label %if.then15 [label %do.end18], !srcloc !147

if.then15:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_disc_mport.__UNIQUE_ID_ddebug245, ptr noundef nonnull @.str.44) #6
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %do.body8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %17 = load volatile i32, ptr @jiffies, align 128
  %add.neg = sub i32 -3000, %17
  %18 = load volatile i32, ptr @jiffies, align 128
  %sub143 = add i32 %add.neg, %18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub143)
  %cmp144 = icmp slt i32 %sub143, 0
  br i1 %cmp144, label %do.end18.while.body_crit_edge, label %do.end18.do.body24_crit_edge

do.end18.do.body24_crit_edge:                     ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

do.end18.while.body_crit_edge:                    ; preds = %do.end18
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %do.end18.while.body_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval.i126) #6
  %19 = ptrtoint ptr %regval.i126 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %regval.i126, align 4, !annotation !146
  %20 = ptrtoint ptr %phys_efptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys_efptr.i, align 8
  %add.i128 = add i32 %21, 60
  %call.i.i129 = call i32 @__rio_local_read_config_32(ptr noundef %mport, i32 noundef %add.i128, ptr noundef nonnull %regval.i126) #6
  %22 = ptrtoint ptr %regval.i126 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %regval.i126, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval.i126) #6
  %24 = and i32 %23, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool21.not = icmp eq i32 %24, 0
  br i1 %tobool21.not, label %if.end23, label %while.body.do.body46_crit_edge

while.body.do.body46_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body46

if.end23:                                         ; preds = %while.body
  call void @msleep(i32 noundef 10) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %sub = add i32 %add.neg, %25
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end23.while.body_crit_edge, label %if.end23.do.body24_crit_edge

if.end23.do.body24_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

do.body24:                                        ; preds = %if.end23.do.body24_crit_edge, %do.end18.do.body24_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_disc_mport.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_disc_mport, %cleanup)) #6
          to label %if.then38 [label %cleanup], !srcloc !147

if.then38:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %id, align 8
  %conv40 = zext i8 %27 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_disc_mport.__UNIQUE_ID_ddebug246, ptr noundef nonnull @.str.45, i32 noundef %conv40, ptr noundef %name) #6
  br label %cleanup

do.body46:                                        ; preds = %while.body.do.body46_crit_edge, %if.then.do.body46_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_disc_mport.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_disc_mport, %do.end63)) #6
          to label %if.then60 [label %do.end63], !srcloc !147

if.then60:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_disc_mport.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.46) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.body46
  %call.i = call ptr @rio_alloc_net(ptr noundef %mport) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end69, label %if.end72

do.end69:                                         ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  %call71 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #9
  br label %cleanup

if.end72:                                         ; preds = %do.end63
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %id, align 8
  %id18.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 5
  %30 = ptrtoint ptr %id18.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %id18.i, align 4
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 4
  %31 = ptrtoint ptr %hport.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %mport, ptr %hport.i, align 8
  %dev.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 6
  %conv.i132 = zext i8 %29 to i32
  %call20.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %conv.i132) #6
  %dev21.i = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 18
  %parent.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 6, i32 1
  %32 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev21.i, ptr %parent.i, align 8
  %release24.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 6, i32 35
  %33 = ptrtoint ptr %release24.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @rio_scan_release_dev, ptr %release24.i, align 4
  %call25.i = call i32 @rio_add_net(ptr noundef nonnull %call.i) #6
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 10
  %call.i133 = call i32 @__rio_local_read_config_32(ptr noundef %mport, i32 noundef 96, ptr noundef %host_deviceid) #6
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %mport, i32 0, i32 14
  %34 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool74.not = icmp eq i32 %35, 0
  %36 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %host_deviceid, align 8
  %and78 = lshr i32 %37, 16
  %38 = and i32 %and78, 255
  %and76 = and i32 %37, 65535
  %conv83 = select i1 %tobool74.not, i16 255, i16 -1
  %cond = select i1 %tobool74.not, i32 %38, i32 %and76
  store i32 %cond, ptr %host_deviceid, align 8
  %call84 = call fastcc i32 @rio_disc_peer(ptr noundef nonnull %call.i, ptr noundef %mport, i16 noundef zeroext %conv83, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %cmp85 = icmp slt i32 %call84, 0
  br i1 %cmp85, label %do.end90, label %if.end95

do.end90:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %id, align 8
  %conv93 = zext i8 %40 to i32
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %conv93) #9
  br label %cleanup

if.end95:                                         ; preds = %if.end72
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %sport.i) #6
  %41 = ptrtoint ptr %sport.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -1, ptr %sport.i, align 1, !annotation !146
  %switches.i = getelementptr inbounds %struct.rio_net, ptr %call.i, i32 0, i32 2
  %42 = ptrtoint ptr %switches.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %rswitch.041.i = load ptr, ptr %switches.i, align 4
  %cmp.not42.i = icmp eq ptr %rswitch.041.i, %switches.i
  br i1 %cmp.not42.i, label %if.end95.rio_build_route_tables.exit_crit_edge, label %if.end95.for.body.i_crit_edge

if.end95.for.body.i_crit_edge:                    ; preds = %if.end95
  br label %for.body.i

if.end95.rio_build_route_tables.exit_crit_edge:   ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_build_route_tables.exit

for.body.i:                                       ; preds = %for.end.i.for.body.i_crit_edge, %if.end95.for.body.i_crit_edge
  %rswitch.043.i = phi ptr [ %rswitch.0.i, %for.end.i.for.body.i_crit_edge ], [ %rswitch.041.i, %if.end95.for.body.i_crit_edge ]
  %add.ptr4.i = getelementptr i8, ptr %rswitch.043.i, i32 -1544
  %43 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr i8, ptr %rswitch.043.i, i32 -12
  %45 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr i8, ptr %rswitch.043.i, i32 -10
  %47 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %hopcount.i, align 2
  %call.i135 = call i32 @rio_lock_device(ptr noundef %44, i16 noundef zeroext %46, i8 noundef zeroext %48, i32 noundef 1000) #6
  %route_table.i = getelementptr inbounds %struct.rio_switch, ptr %rswitch.043.i, i32 0, i32 1
  br label %for.body8.i

for.body8.i:                                      ; preds = %for.inc.i.for.body8.i_crit_edge, %for.body.i
  %i.040.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.inc.i.for.body8.i_crit_edge ]
  %conv.i136 = trunc i32 %i.040.i to i16
  %call9.i = call i32 @rio_route_get_entry(ptr noundef %add.ptr4.i, i16 noundef zeroext 255, i16 noundef zeroext %conv.i136, ptr noundef nonnull %sport.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %for.body8.i.for.inc.i_crit_edge, label %if.end.i

for.body8.i.for.inc.i_crit_edge:                  ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %for.body8.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %sport.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %sport.i, align 1
  %51 = ptrtoint ptr %route_table.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %route_table.i, align 4
  %arrayidx.i = getelementptr i8, ptr %52, i32 %i.040.i
  %53 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %50, ptr %arrayidx.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i, %for.body8.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.040.i, 1
  %54 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hport.i, align 8
  %sys_size.i = getelementptr inbounds %struct.rio_mport, ptr %55, i32 0, i32 14
  %56 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sys_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i137 = icmp eq i32 %57, 0
  %cond.i = select i1 %tobool.not.i137, i32 256, i32 65536
  %cmp7.i = icmp ult i32 %inc.i, %cond.i
  br i1 %cmp7.i, label %for.inc.i.for.body8.i_crit_edge, label %for.end.i

for.inc.i.for.body8.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body8.i

for.end.i:                                        ; preds = %for.inc.i
  %58 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %destid.i, align 4
  %60 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %hopcount.i, align 2
  %call15.i = call i32 @rio_unlock_device(ptr noundef %55, i16 noundef zeroext %59, i8 noundef zeroext %61) #6
  %62 = ptrtoint ptr %rswitch.043.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %rswitch.0.i = load ptr, ptr %rswitch.043.i, align 4
  %cmp.not.i = icmp eq ptr %rswitch.0.i, %switches.i
  br i1 %cmp.not.i, label %for.end.i.rio_build_route_tables.exit_crit_edge, label %for.end.i.for.body.i_crit_edge

for.end.i.for.body.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end.i.rio_build_route_tables.exit_crit_edge:  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_build_route_tables.exit

rio_build_route_tables.exit:                      ; preds = %for.end.i.rio_build_route_tables.exit_crit_edge, %if.end95.rio_build_route_tables.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %sport.i) #6
  br label %cleanup

cleanup:                                          ; preds = %rio_build_route_tables.exit, %do.end90, %do.end69, %if.then38, %do.body24, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.else.cleanup_crit_edge ], [ 0, %rio_build_route_tables.exit ], [ 0, %entry.cleanup_crit_edge ], [ -16, %if.then38 ], [ -16, %do.end90 ], [ -16, %do.end69 ], [ -16, %do.body24 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_enable_rx_tx_port(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @rio_destid_alloc(ptr nocapture noundef readonly %net) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enum_data = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 7
  %0 = ptrtoint ptr %enum_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enum_data, align 8
  %lock = getelementptr inbounds %struct.rio_id_table, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %table = getelementptr inbounds %struct.rio_id_table, ptr %1, i32 0, i32 3
  %max = getelementptr inbounds %struct.rio_id_table, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max, align 4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef %table, i32 noundef %3) #6
  %4 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %5)
  %cmp = icmp ult i32 %call, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef %call, ptr noundef %table) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %1, align 4
  %8 = trunc i32 %call to i16
  %phi.cast = add i16 %7, %8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %destid.0 = phi i16 [ %phi.cast, %if.then ], [ -1, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i16 %destid.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_enum_peer(ptr noundef %net, ptr noundef %port, i8 noundef zeroext %hopcount, ptr noundef %prev, i32 noundef %prev_port) unnamed_addr #2 align 64 {
entry:
  %result.i530 = alloca i32, align 4
  %result.i501 = alloca i32, align 4
  %result.i495 = alloca i32, align 4
  %result.i = alloca i32, align 4
  %regval = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %regval) #6
  %0 = ptrtoint ptr %regval to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %regval, align 4, !annotation !146
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %port, i32 0, i32 14
  %1 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  %conv = select i1 %tobool.not, i16 255, i16 -1
  %call = tail call i32 @rio_mport_chk_dev_access(ptr noundef %port, i16 noundef zeroext %conv, i8 noundef zeroext %hopcount) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end9, label %do.body

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %cleanup350)) #6
          to label %if.then8 [label %cleanup350], !srcloc !147

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.24) #6
  br label %cleanup350

if.end9:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %3 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %result.i, align 4, !annotation !146
  %4 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  %conv.i = select i1 %tobool.not.i, i16 255, i16 -1
  %call.i = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %conv.i, i8 noundef zeroext %hopcount, i32 noundef 104, ptr noundef nonnull %result.i) #6
  %6 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %result.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  %conv11 = and i32 %7, 65535
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %port, i32 0, i32 10
  %8 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %conv11)
  %cmp = icmp eq i32 %9, %conv11
  br i1 %cmp, label %do.body14, label %if.end67

do.body14:                                        ; preds = %if.end9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %do.end31)) #6
          to label %if.then28 [label %do.end31], !srcloc !147

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.25) #6
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body14
  %10 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool33.not = icmp eq i32 %11, 0
  %conv35 = select i1 %tobool33.not, i16 255, i16 -1
  %call36 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %conv35, i8 noundef zeroext %hopcount, i32 noundef 108, ptr noundef nonnull %regval) #6
  %12 = ptrtoint ptr %regval to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %regval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool37.not = icmp eq i32 %13, 0
  br i1 %tobool37.not, label %do.end31.cleanup350_crit_edge, label %if.then38

do.end31.cleanup350_crit_edge:                    ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup350

if.then38:                                        ; preds = %do.end31
  %and = and i32 %13, 65535
  %call39 = call ptr @rio_get_comptag(i32 noundef %and, ptr noundef null) #6
  %tobool40.not = icmp eq ptr %call39, null
  %tobool41.not = icmp eq ptr %prev, null
  %or.cond = or i1 %tobool41.not, %tobool40.not
  br i1 %or.cond, label %if.then38.cleanup350_crit_edge, label %land.lhs.true42

if.then38.cleanup350_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup350

land.lhs.true42:                                  ; preds = %if.then38
  %pef.i = getelementptr inbounds %struct.rio_dev, ptr %prev, i32 0, i32 11
  %14 = ptrtoint ptr %pef.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pef.i, align 8
  %16 = and i32 %15, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool44.not = icmp eq i32 %16, 0
  br i1 %tobool44.not, label %land.lhs.true42.cleanup350_crit_edge, label %do.body46

land.lhs.true42.cleanup350_crit_edge:             ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup350

do.body46:                                        ; preds = %land.lhs.true42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %do.end64)) #6
          to label %if.then60 [label %do.end64], !srcloc !147

if.then60:                                        ; preds = %do.body46
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %call39, i32 0, i32 21, i32 3
  %17 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then60.rio_name.exit_crit_edge

if.then60.rio_name.exit_crit_edge:                ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %call39, i32 0, i32 21
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then60.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %20, %if.end.i.i ], [ %18, %if.then60.rio_name.exit_crit_edge ]
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.26, ptr noundef %retval.0.i.i) #6
  br label %do.end64

do.end64:                                         ; preds = %rio_name.exit, %do.body46
  %nextdev = getelementptr inbounds %struct.rio_dev, ptr %prev, i32 1, i32 17
  %arrayidx = getelementptr [0 x ptr], ptr %nextdev, i32 0, i32 %prev_port
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call39, ptr %arrayidx, align 4
  br label %cleanup350

if.end67:                                         ; preds = %if.end9
  %22 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool69.not = icmp eq i32 %23, 0
  %conv71 = select i1 %tobool69.not, i16 255, i16 -1
  %call73 = call i32 @rio_mport_write_config_32(ptr noundef %port, i16 noundef zeroext %conv71, i8 noundef zeroext %hopcount, i32 noundef 104, i32 noundef %9) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i495) #6
  %24 = ptrtoint ptr %result.i495 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %result.i495, align 4, !annotation !146
  %25 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i497571 = icmp eq i32 %26, 0
  %conv.i498572 = select i1 %tobool.not.i497571, i16 255, i16 -1
  %call.i499573 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %conv.i498572, i8 noundef zeroext %hopcount, i32 noundef 104, ptr noundef nonnull %result.i495) #6
  %27 = ptrtoint ptr %result.i495 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result.i495, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i495) #6
  %conv75574 = and i32 %28, 65535
  %29 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv75574)
  %cmp77575 = icmp sgt i32 %30, %conv75574
  br i1 %cmp77575, label %if.end67.while.body_crit_edge, label %if.end67.while.end_crit_edge

if.end67.while.end_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

if.end67.while.body_crit_edge:                    ; preds = %if.end67
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end67.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #6
  %32 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool80.not = icmp eq i32 %33, 0
  %conv82 = select i1 %tobool80.not, i16 255, i16 -1
  %34 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %host_deviceid, align 8
  %call84 = call i32 @rio_mport_write_config_32(ptr noundef %port, i16 noundef zeroext %conv82, i8 noundef zeroext %hopcount, i32 noundef 104, i32 noundef %35) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i495) #6
  %36 = ptrtoint ptr %result.i495 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -1, ptr %result.i495, align 4, !annotation !146
  %37 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i497 = icmp eq i32 %38, 0
  %conv.i498 = select i1 %tobool.not.i497, i16 255, i16 -1
  %call.i499 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %conv.i498, i8 noundef zeroext %hopcount, i32 noundef 104, ptr noundef nonnull %result.i495) #6
  %39 = ptrtoint ptr %result.i495 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %result.i495, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i495) #6
  %conv75 = and i32 %40, 65535
  %41 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %host_deviceid, align 8
  %cmp77 = icmp sgt i32 %42, %conv75
  br i1 %cmp77, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end67.while.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i501) #6
  %43 = ptrtoint ptr %result.i501 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %result.i501, align 4, !annotation !146
  %44 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i503 = icmp eq i32 %45, 0
  %conv.i504 = select i1 %tobool.not.i503, i16 255, i16 -1
  %call.i505 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %conv.i504, i8 noundef zeroext %hopcount, i32 noundef 104, ptr noundef nonnull %result.i501) #6
  %46 = ptrtoint ptr %result.i501 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %result.i501, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i501) #6
  %conv86 = and i32 %47, 65535
  %48 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %49, i32 %conv86)
  %cmp88 = icmp slt i32 %49, %conv86
  br i1 %cmp88, label %do.body91, label %if.end109

do.body91:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %cleanup350)) #6
          to label %if.then105 [label %cleanup350], !srcloc !147

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.27) #6
  br label %cleanup350

if.end109:                                        ; preds = %while.end
  %50 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool111.not = icmp eq i32 %51, 0
  %conv113 = select i1 %tobool111.not, i16 255, i16 -1
  %call114 = call fastcc ptr @rio_setup_device(ptr noundef %net, ptr noundef %port, i16 noundef zeroext %conv113, i8 noundef zeroext %hopcount, i32 noundef 1)
  %tobool115.not = icmp eq ptr %call114, null
  br i1 %tobool115.not, label %if.end109.cleanup350_crit_edge, label %if.then116

if.end109.cleanup350_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup350

if.then116:                                       ; preds = %if.end109
  %prev117 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 26
  %52 = ptrtoint ptr %prev117 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %prev, ptr %prev117, align 8
  %tobool118.not = icmp eq ptr %prev, null
  br i1 %tobool118.not, label %if.then116.if.end128_crit_edge, label %land.lhs.true119

if.then116.if.end128_crit_edge:                   ; preds = %if.then116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

land.lhs.true119:                                 ; preds = %if.then116
  %pef.i507 = getelementptr inbounds %struct.rio_dev, ptr %prev, i32 0, i32 11
  %53 = ptrtoint ptr %pef.i507 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pef.i507, align 8
  %55 = and i32 %54, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool121.not = icmp eq i32 %55, 0
  br i1 %tobool121.not, label %land.lhs.true119.if.end128_crit_edge, label %if.then122

land.lhs.true119.if.end128_crit_edge:             ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end128

if.then122:                                       ; preds = %land.lhs.true119
  call void @__sanitizer_cov_trace_pc() #8
  %nextdev125 = getelementptr inbounds %struct.rio_dev, ptr %prev, i32 1, i32 17
  %arrayidx126 = getelementptr [0 x ptr], ptr %nextdev125, i32 0, i32 %prev_port
  %56 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call114, ptr %arrayidx126, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.then122, %land.lhs.true119.if.end128_crit_edge, %if.then116.if.end128_crit_edge
  %pef.i510 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 11
  %57 = ptrtoint ptr %pef.i510 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pef.i510, align 8
  %59 = and i32 %58, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool130.not = icmp eq i32 %59, 0
  br i1 %tobool130.not, label %do.body326, label %if.then131

if.then131:                                       ; preds = %if.end128
  %swpinfo = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 12
  %60 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %swpinfo, align 4
  %and132 = and i32 %61, 255
  %62 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %host_deviceid, align 8
  %conv134 = trunc i32 %63 to i16
  %conv135 = trunc i32 %61 to i8
  %call136 = call i32 @rio_route_add_entry(ptr noundef nonnull %call114, i16 noundef zeroext 255, i16 noundef zeroext %conv134, i8 noundef zeroext %conv135, i32 noundef 0) #6
  %route_table = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 1, i32 1
  %64 = ptrtoint ptr %route_table to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %route_table, align 8
  %66 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %host_deviceid, align 8
  %arrayidx141 = getelementptr i8, ptr %65, i32 %67
  %68 = ptrtoint ptr %arrayidx141 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv135, ptr %arrayidx141, align 1
  %enum_data.i = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 7
  %69 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %enum_data.i, align 8
  %lock.i = getelementptr inbounds %struct.rio_id_table, ptr %70, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %table.i = getelementptr inbounds %struct.rio_id_table, ptr %70, i32 0, i32 3
  %max.i = getelementptr inbounds %struct.rio_id_table, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max.i, align 4
  %call.i513 = call i32 @_find_first_bit_be(ptr noundef %table.i, i32 noundef %72) #6
  %73 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i513, i32 %74)
  %cmp.not.i = icmp ult i32 %call.i513, %74
  br i1 %cmp.not.i, label %rio_destid_first.exit, label %if.then131.do.body168.sink.split_crit_edge

if.then131.do.body168.sink.split_crit_edge:       ; preds = %if.then131
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168.sink.split

rio_destid_first.exit:                            ; preds = %if.then131
  %75 = ptrtoint ptr %70 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %70, align 4
  %77 = trunc i32 %call.i513 to i16
  %phi.cast.i = add i16 %76, %77
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %phi.cast.i)
  %cmp145.not577 = icmp eq i16 %phi.cast.i, -1
  br i1 %cmp145.not577, label %rio_destid_first.exit.do.body168_crit_edge, label %rio_destid_first.exit.land.rhs_crit_edge

rio_destid_first.exit.land.rhs_crit_edge:         ; preds = %rio_destid_first.exit
  br label %land.rhs

rio_destid_first.exit.do.body168_crit_edge:       ; preds = %rio_destid_first.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

land.rhs:                                         ; preds = %rio_destid_next.exit.land.rhs_crit_edge, %rio_destid_first.exit.land.rhs_crit_edge
  %destid.0578 = phi i16 [ %phi.cast.i521, %rio_destid_next.exit.land.rhs_crit_edge ], [ %phi.cast.i, %rio_destid_first.exit.land.rhs_crit_edge ]
  %conv144579 = zext i16 %destid.0578 to i32
  %78 = load i32, ptr @next_destid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %conv144579)
  %cmp148 = icmp sgt i32 %78, %conv144579
  br i1 %cmp148, label %while.body150, label %land.rhs.do.body168_crit_edge

land.rhs.do.body168_crit_edge:                    ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

while.body150:                                    ; preds = %land.rhs
  %79 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %80, i32 %conv144579)
  %cmp153.not = icmp eq i32 %80, %conv144579
  br i1 %cmp153.not, label %while.body150.if.end163_crit_edge, label %if.then155

while.body150.if.end163_crit_edge:                ; preds = %while.body150
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then155:                                       ; preds = %while.body150
  call void @__sanitizer_cov_trace_pc() #8
  %call157 = call i32 @rio_route_add_entry(ptr noundef %call114, i16 noundef zeroext 255, i16 noundef zeroext %destid.0578, i8 noundef zeroext %conv135, i32 noundef 0) #6
  %81 = ptrtoint ptr %route_table to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %route_table, align 8
  %arrayidx162 = getelementptr i8, ptr %82, i32 %conv144579
  %83 = ptrtoint ptr %arrayidx162 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 %conv135, ptr %arrayidx162, align 1
  br label %if.end163

if.end163:                                        ; preds = %if.then155, %while.body150.if.end163_crit_edge
  %add = add nuw i16 %destid.0578, 1
  %84 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %enum_data.i, align 8
  %lock.i515 = getelementptr inbounds %struct.rio_id_table, ptr %85, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i515) #6
  %table.i516 = getelementptr inbounds %struct.rio_id_table, ptr %85, i32 0, i32 3
  %max.i517 = getelementptr inbounds %struct.rio_id_table, ptr %85, i32 0, i32 1
  %86 = ptrtoint ptr %max.i517 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %max.i517, align 4
  %conv.i518 = zext i16 %add to i32
  %call.i519 = call i32 @_find_next_bit_be(ptr noundef %table.i516, i32 noundef %87, i32 noundef %conv.i518) #6
  %88 = ptrtoint ptr %max.i517 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %max.i517, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i519, i32 %89)
  %cmp.not.i520 = icmp ult i32 %call.i519, %89
  br i1 %cmp.not.i520, label %rio_destid_next.exit, label %if.end163.do.body168.sink.split_crit_edge

if.end163.do.body168.sink.split_crit_edge:        ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168.sink.split

rio_destid_next.exit:                             ; preds = %if.end163
  %90 = ptrtoint ptr %85 to i32
  call void @__asan_load2_noabort(i32 %90)
  %91 = load i16, ptr %85, align 4
  %92 = trunc i32 %call.i519 to i16
  %phi.cast.i521 = add i16 %91, %92
  call void @_raw_spin_unlock(ptr noundef %lock.i515) #6
  %cmp145.not = icmp eq i16 %phi.cast.i521, -1
  br i1 %cmp145.not, label %rio_destid_next.exit.do.body168_crit_edge, label %rio_destid_next.exit.land.rhs_crit_edge

rio_destid_next.exit.land.rhs_crit_edge:          ; preds = %rio_destid_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs

rio_destid_next.exit.do.body168_crit_edge:        ; preds = %rio_destid_next.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body168

do.body168.sink.split:                            ; preds = %if.end163.do.body168.sink.split_crit_edge, %if.then131.do.body168.sink.split_crit_edge
  %lock.i515.lcssa.sink = phi ptr [ %lock.i, %if.then131.do.body168.sink.split_crit_edge ], [ %lock.i515, %if.end163.do.body168.sink.split_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i515.lcssa.sink) #6
  br label %do.body168

do.body168:                                       ; preds = %do.body168.sink.split, %rio_destid_next.exit.do.body168_crit_edge, %land.rhs.do.body168_crit_edge, %rio_destid_first.exit.do.body168_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %do.end190)) #6
          to label %if.then182 [label %do.end190], !srcloc !147

if.then182:                                       ; preds = %do.body168
  %init_name.i.i524 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 21, i32 3
  %93 = ptrtoint ptr %init_name.i.i524 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %init_name.i.i524, align 8
  %tobool.not.i.i525 = icmp eq ptr %94, null
  br i1 %tobool.not.i.i525, label %if.end.i.i527, label %if.then182.rio_name.exit529_crit_edge

if.then182.rio_name.exit529_crit_edge:            ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit529

if.end.i.i527:                                    ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i526 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 21
  %95 = ptrtoint ptr %dev.i526 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i526, align 4
  br label %rio_name.exit529

rio_name.exit529:                                 ; preds = %if.end.i.i527, %if.then182.rio_name.exit529_crit_edge
  %retval.0.i.i528 = phi ptr [ %96, %if.end.i.i527 ], [ %94, %if.then182.rio_name.exit529_crit_edge ]
  %vid = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 5
  %97 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %vid, align 8
  %conv184 = zext i16 %98 to i32
  %did = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 4
  %99 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %did, align 2
  %conv185 = zext i16 %100 to i32
  %101 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %swpinfo, align 4
  %and187 = lshr i32 %102, 8
  %shr = and i32 %and187, 255
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug237, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i528, i32 noundef %conv184, i32 noundef %conv185, i32 noundef %shr) #6
  br label %do.end190

do.end190:                                        ; preds = %rio_name.exit529, %do.body168
  %103 = load i32, ptr @next_destid, align 4
  %104 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %swpinfo, align 4
  %106 = and i32 %105, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %cmp194586.not = icmp eq i32 %106, 0
  br i1 %cmp194586.not, label %do.end190.for.end297_crit_edge, label %for.body.lr.ph

do.end190.for.end297_crit_edge:                   ; preds = %do.end190
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end297

for.body.lr.ph:                                   ; preds = %do.end190
  %phys_efptr.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 16
  %phys_rmap.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 17
  %net.i.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 2
  %destid.i.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 24
  %hopcount.i.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 25
  %port_ok238 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 1, i32 1, i32 1
  %add247 = add i8 %hopcount, 1
  %em_efptr = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 18
  %conv203 = trunc i32 %61 to i8
  %shl = shl nuw i32 1, %and132
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port_num.0587 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %and132, i32 %port_num.0587)
  %cmp196 = icmp eq i32 %and132, %port_num.0587
  br i1 %cmp196, label %if.then198, label %if.end207

if.then198:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %107 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool200.not = icmp eq i32 %108, 0
  %conv202 = select i1 %tobool200.not, i16 255, i16 -1
  %call204 = call i32 @rio_enable_rx_tx_port(ptr noundef %port, i32 noundef 0, i16 noundef zeroext %conv202, i8 noundef zeroext %hopcount, i8 noundef zeroext %conv203) #6
  %109 = ptrtoint ptr %port_ok238 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port_ok238, align 4
  %or = or i32 %110, %shl
  store i32 %or, ptr %port_ok238, align 4
  br label %for.inc

if.end207:                                        ; preds = %for.body
  %111 = load i32, ptr @next_destid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i530) #6
  %112 = ptrtoint ptr %result.i530 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %result.i530, align 4
  %113 = ptrtoint ptr %phys_efptr.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %phys_efptr.i, align 4
  %115 = ptrtoint ptr %phys_rmap.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %phys_rmap.i, align 8
  %mul.i = shl i32 %port_num.0587, 5
  %mul1.i = mul i32 %mul.i, %116
  %add.i = add i32 %114, 88
  %add2.i = add i32 %add.i, %mul1.i
  %117 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %net.i.i, align 8
  %hport.i.i = getelementptr inbounds %struct.rio_net, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %hport.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %hport.i.i, align 8
  %121 = ptrtoint ptr %destid.i.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %destid.i.i, align 4
  %123 = ptrtoint ptr %hopcount.i.i to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %hopcount.i.i, align 2
  %call.i.i = call i32 @rio_mport_read_config_32(ptr noundef %120, i16 noundef zeroext %122, i8 noundef zeroext %124, i32 noundef %add2.i, ptr noundef nonnull %result.i530) #6
  %125 = ptrtoint ptr %result.i530 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %result.i530, align 4
  %and.i531 = and i32 %126, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i530) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i531)
  %tobool209.not = icmp eq i32 %and.i531, 0
  br i1 %tobool209.not, label %if.else286, label %do.body211

do.body211:                                       ; preds = %if.end207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %do.end228)) #6
          to label %if.then225 [label %do.end228], !srcloc !147

if.then225:                                       ; preds = %do.body211
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug238, ptr noundef nonnull @.str.29, i32 noundef %port_num.0587) #6
  br label %do.end228

do.end228:                                        ; preds = %if.then225, %do.body211
  %127 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %128)
  %tobool230.not = icmp eq i32 %128, 0
  %conv232 = select i1 %tobool230.not, i16 255, i16 -1
  %conv233 = trunc i32 %port_num.0587 to i8
  %call234 = call i32 @rio_enable_rx_tx_port(ptr noundef %port, i32 noundef 0, i16 noundef zeroext %conv232, i8 noundef zeroext %hopcount, i8 noundef zeroext %conv233) #6
  %shl235 = shl nuw i32 1, %port_num.0587
  %129 = ptrtoint ptr %port_ok238 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port_ok238, align 4
  %or239 = or i32 %130, %shl235
  store i32 %or239, ptr %port_ok238, align 4
  %131 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool241.not = icmp eq i32 %132, 0
  %conv243 = select i1 %tobool241.not, i16 255, i16 -1
  %call245 = call i32 @rio_route_add_entry(ptr noundef %call114, i16 noundef zeroext 255, i16 noundef zeroext %conv243, i8 noundef zeroext %conv233, i32 noundef 0) #6
  %call249 = call fastcc i32 @rio_enum_peer(ptr noundef %net, ptr noundef %port, i8 noundef zeroext %add247, ptr noundef %call114, i32 noundef %port_num.0587)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %cmp250 = icmp slt i32 %call249, 0
  br i1 %cmp250, label %do.end228.cleanup350_crit_edge, label %if.end253

do.end228.cleanup350_crit_edge:                   ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup350

if.end253:                                        ; preds = %do.end228
  %conv255 = add i32 %111, 1
  %133 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %enum_data.i, align 8
  %lock.i533 = getelementptr inbounds %struct.rio_id_table, ptr %134, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i533) #6
  %table.i534 = getelementptr inbounds %struct.rio_id_table, ptr %134, i32 0, i32 3
  %max.i535 = getelementptr inbounds %struct.rio_id_table, ptr %134, i32 0, i32 1
  %135 = ptrtoint ptr %max.i535 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %max.i535, align 4
  %conv.i536 = and i32 %conv255, 65535
  %call.i537 = call i32 @_find_next_bit_be(ptr noundef %table.i534, i32 noundef %136, i32 noundef %conv.i536) #6
  %137 = ptrtoint ptr %max.i535 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %max.i535, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i537, i32 %138)
  %cmp.not.i538 = icmp ult i32 %call.i537, %138
  br i1 %cmp.not.i538, label %rio_destid_next.exit542, label %rio_destid_next.exit542.thread

rio_destid_next.exit542.thread:                   ; preds = %if.end253
  call void @__sanitizer_cov_trace_pc() #8
  call void @_raw_spin_unlock(ptr noundef %lock.i533) #6
  br label %for.inc

rio_destid_next.exit542:                          ; preds = %if.end253
  %139 = ptrtoint ptr %134 to i32
  call void @__asan_load2_noabort(i32 %139)
  %140 = load i16, ptr %134, align 4
  %141 = trunc i32 %call.i537 to i16
  %phi.cast.i539 = add i16 %140, %141
  call void @_raw_spin_unlock(ptr noundef %lock.i533) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %phi.cast.i539)
  %cmp258.not = icmp eq i16 %phi.cast.i539, -1
  br i1 %cmp258.not, label %rio_destid_next.exit542.for.inc_crit_edge, label %for.cond262.preheader

rio_destid_next.exit542.for.inc_crit_edge:        ; preds = %rio_destid_next.exit542
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.cond262.preheader:                            ; preds = %rio_destid_next.exit542
  %conv263580 = and i32 %111, 65535
  %142 = load i32, ptr @next_destid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %conv263580)
  %cmp264581 = icmp sgt i32 %142, %conv263580
  br i1 %cmp264581, label %for.body266.preheader, label %for.cond262.preheader.for.inc_crit_edge

for.cond262.preheader.for.inc_crit_edge:          ; preds = %for.cond262.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body266.preheader:                            ; preds = %for.cond262.preheader
  %143 = trunc i32 %111 to i16
  br label %for.body266

for.body266:                                      ; preds = %rio_destid_next.exit553.for.body266_crit_edge, %for.body266.preheader
  %conv263583 = phi i32 [ %conv263, %rio_destid_next.exit553.for.body266_crit_edge ], [ %conv263580, %for.body266.preheader ]
  %destid.1582 = phi i16 [ %destid.0.i552, %rio_destid_next.exit553.for.body266_crit_edge ], [ %143, %for.body266.preheader ]
  %144 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %host_deviceid, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %conv263583)
  %cmp269.not = icmp eq i32 %145, %conv263583
  br i1 %cmp269.not, label %for.body266.if.end280_crit_edge, label %if.then271

for.body266.if.end280_crit_edge:                  ; preds = %for.body266
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end280

if.then271:                                       ; preds = %for.body266
  call void @__sanitizer_cov_trace_pc() #8
  %call273 = call i32 @rio_route_add_entry(ptr noundef %call114, i16 noundef zeroext 255, i16 noundef zeroext %destid.1582, i8 noundef zeroext %conv233, i32 noundef 0) #6
  %146 = ptrtoint ptr %route_table to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %route_table, align 8
  %arrayidx279 = getelementptr i8, ptr %147, i32 %conv263583
  %148 = ptrtoint ptr %arrayidx279 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv233, ptr %arrayidx279, align 1
  br label %if.end280

if.end280:                                        ; preds = %if.then271, %for.body266.if.end280_crit_edge
  %add282 = add i16 %destid.1582, 1
  %149 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %enum_data.i, align 8
  %lock.i544 = getelementptr inbounds %struct.rio_id_table, ptr %150, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i544) #6
  %table.i545 = getelementptr inbounds %struct.rio_id_table, ptr %150, i32 0, i32 3
  %max.i546 = getelementptr inbounds %struct.rio_id_table, ptr %150, i32 0, i32 1
  %151 = ptrtoint ptr %max.i546 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %max.i546, align 4
  %conv.i547 = zext i16 %add282 to i32
  %call.i548 = call i32 @_find_next_bit_be(ptr noundef %table.i545, i32 noundef %152, i32 noundef %conv.i547) #6
  %153 = ptrtoint ptr %max.i546 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %max.i546, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i548, i32 %154)
  %cmp.not.i549 = icmp ult i32 %call.i548, %154
  br i1 %cmp.not.i549, label %if.else.i551, label %if.end280.rio_destid_next.exit553_crit_edge

if.end280.rio_destid_next.exit553_crit_edge:      ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_destid_next.exit553

if.else.i551:                                     ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %150 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %150, align 4
  %157 = trunc i32 %call.i548 to i16
  %phi.cast.i550 = add i16 %156, %157
  br label %rio_destid_next.exit553

rio_destid_next.exit553:                          ; preds = %if.else.i551, %if.end280.rio_destid_next.exit553_crit_edge
  %destid.0.i552 = phi i16 [ %phi.cast.i550, %if.else.i551 ], [ -1, %if.end280.rio_destid_next.exit553_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i544) #6
  %conv263 = zext i16 %destid.0.i552 to i32
  %158 = load i32, ptr @next_destid, align 4
  %cmp264 = icmp sgt i32 %158, %conv263
  br i1 %cmp264, label %rio_destid_next.exit553.for.body266_crit_edge, label %rio_destid_next.exit553.for.inc_crit_edge

rio_destid_next.exit553.for.inc_crit_edge:        ; preds = %rio_destid_next.exit553
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

rio_destid_next.exit553.for.body266_crit_edge:    ; preds = %rio_destid_next.exit553
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body266

if.else286:                                       ; preds = %if.end207
  %159 = ptrtoint ptr %em_efptr to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %em_efptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool287.not = icmp eq i32 %160, 0
  br i1 %tobool287.not, label %if.else286.if.end290_crit_edge, label %if.then288

if.else286.if.end290_crit_edge:                   ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end290

if.then288:                                       ; preds = %if.else286
  call void @__sanitizer_cov_trace_pc() #8
  %call289 = call i32 @rio_set_port_lockout(ptr noundef %call114, i32 noundef %port_num.0587, i32 noundef 1) #6
  br label %if.end290

if.end290:                                        ; preds = %if.then288, %if.else286.if.end290_crit_edge
  %shl291 = shl nuw i32 1, %port_num.0587
  %neg = xor i32 %shl291, -1
  %161 = ptrtoint ptr %port_ok238 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port_ok238, align 4
  %and295 = and i32 %162, %neg
  store i32 %and295, ptr %port_ok238, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end290, %rio_destid_next.exit553.for.inc_crit_edge, %for.cond262.preheader.for.inc_crit_edge, %rio_destid_next.exit542.for.inc_crit_edge, %rio_destid_next.exit542.thread, %if.then198
  %inc = add nuw nsw i32 %port_num.0587, 1
  %163 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %swpinfo, align 4
  %and192 = lshr i32 %164, 8
  %shr193 = and i32 %and192, 255
  %cmp194 = icmp ult i32 %inc, %shr193
  br i1 %cmp194, label %for.inc.for.body_crit_edge, label %for.inc.for.end297_crit_edge

for.inc.for.end297_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end297

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end297:                                       ; preds = %for.inc.for.end297_crit_edge, %do.end190.for.end297_crit_edge
  %src_ops = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 13
  %165 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %src_ops, align 8
  %and298 = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and298)
  %tobool299.not = icmp eq i32 %and298, 0
  br i1 %tobool299.not, label %for.end297.if.end312_crit_edge, label %land.lhs.true300

for.end297.if.end312_crit_edge:                   ; preds = %for.end297
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end312

land.lhs.true300:                                 ; preds = %for.end297
  %em_efptr301 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 18
  %167 = ptrtoint ptr %em_efptr301 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %em_efptr301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool302.not = icmp eq i32 %168, 0
  br i1 %tobool302.not, label %land.lhs.true300.if.end312_crit_edge, label %if.then303

land.lhs.true300.if.end312_crit_edge:             ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end312

if.then303:                                       ; preds = %land.lhs.true300
  call void @__sanitizer_cov_trace_pc() #8
  %add305 = add i32 %168, 40
  %169 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %host_deviceid, align 8
  %shl307 = shl i32 %170, 16
  %171 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %sys_size, align 4
  %shl309 = shl i32 %172, 15
  %or310 = or i32 %shl309, %shl307
  %net.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 2
  %173 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %174, i32 0, i32 4
  %175 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 24
  %177 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 25
  %179 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %hopcount.i, align 2
  %call.i554 = call i32 @rio_mport_write_config_32(ptr noundef %176, i16 noundef zeroext %178, i8 noundef zeroext %180, i32 noundef %add305, i32 noundef %or310) #6
  br label %if.end312

if.end312:                                        ; preds = %if.then303, %land.lhs.true300.if.end312_crit_edge, %for.end297.if.end312_crit_edge
  %181 = ptrtoint ptr %pef.i510 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %pef.i510, align 8
  %183 = and i32 %182, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool.not.i555 = icmp eq i32 %183, 0
  br i1 %tobool.not.i555, label %if.end312.rio_init_em.exit_crit_edge, label %land.lhs.true.i

if.end312.rio_init_em.exit_crit_edge:             ; preds = %if.end312
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_init_em.exit

land.lhs.true.i:                                  ; preds = %if.end312
  %em_efptr.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 18
  %184 = ptrtoint ptr %em_efptr.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %em_efptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool1.not.i = icmp eq i32 %185, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.rio_init_em.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rio_init_em.exit_crit_edge:       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_init_em.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %ops.i = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 1, i32 2
  %186 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %ops.i, align 8
  %tobool3.not.i = icmp eq ptr %187, null
  br i1 %tobool3.not.i, label %land.lhs.true2.i.rio_init_em.exit_crit_edge, label %land.lhs.true4.i

land.lhs.true2.i.rio_init_em.exit_crit_edge:      ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_init_em.exit

land.lhs.true4.i:                                 ; preds = %land.lhs.true2.i
  %em_init.i = getelementptr inbounds %struct.rio_switch_ops, ptr %187, i32 0, i32 6
  %188 = ptrtoint ptr %em_init.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %em_init.i, align 4
  %tobool8.not.i = icmp eq ptr %189, null
  br i1 %tobool8.not.i, label %land.lhs.true4.i.rio_init_em.exit_crit_edge, label %if.then.i

land.lhs.true4.i.rio_init_em.exit_crit_edge:      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_init_em.exit

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 %189(ptr noundef %call114) #6
  br label %rio_init_em.exit

rio_init_em.exit:                                 ; preds = %if.then.i, %land.lhs.true4.i.rio_init_em.exit_crit_edge, %land.lhs.true2.i.rio_init_em.exit_crit_edge, %land.lhs.true.i.rio_init_em.exit_crit_edge, %if.end312.rio_init_em.exit_crit_edge
  %190 = load i32, ptr @next_destid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %190, i32 %103)
  %cmp313 = icmp eq i32 %190, %103
  br i1 %cmp313, label %if.then315, label %if.end349.critedge474

if.then315:                                       ; preds = %rio_init_em.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call316 = call fastcc zeroext i16 @rio_destid_alloc(ptr noundef %net)
  %conv317 = zext i16 %call316 to i32
  store i32 %conv317, ptr @next_destid, align 4
  %conv319.c = trunc i32 %103 to i16
  %destid320.c = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 24
  %191 = ptrtoint ptr %destid320.c to i32
  call void @__asan_store2_noabort(i32 %191)
  store i16 %conv319.c, ptr %destid320.c, align 4
  br label %cleanup350

do.body326:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_enum_peer.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_enum_peer, %cleanup350)) #6
          to label %if.then340 [label %cleanup350], !srcloc !147

if.then340:                                       ; preds = %do.body326
  %init_name.i.i556 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 21, i32 3
  %192 = ptrtoint ptr %init_name.i.i556 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %init_name.i.i556, align 8
  %tobool.not.i.i557 = icmp eq ptr %193, null
  br i1 %tobool.not.i.i557, label %if.end.i.i559, label %if.then340.rio_name.exit561_crit_edge

if.then340.rio_name.exit561_crit_edge:            ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit561

if.end.i.i559:                                    ; preds = %if.then340
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i558 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 21
  %194 = ptrtoint ptr %dev.i558 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev.i558, align 4
  br label %rio_name.exit561

rio_name.exit561:                                 ; preds = %if.end.i.i559, %if.then340.rio_name.exit561_crit_edge
  %retval.0.i.i560 = phi ptr [ %195, %if.end.i.i559 ], [ %193, %if.then340.rio_name.exit561_crit_edge ]
  %vid342 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 5
  %196 = ptrtoint ptr %vid342 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %vid342, align 8
  %conv343 = zext i16 %197 to i32
  %did344 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 4
  %198 = ptrtoint ptr %did344 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %did344, align 2
  %conv345 = zext i16 %199 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_enum_peer.__UNIQUE_ID_ddebug239, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i560, i32 noundef %conv343, i32 noundef %conv345) #6
  br label %cleanup350

if.end349.critedge474:                            ; preds = %rio_init_em.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv319.c475 = trunc i32 %103 to i16
  %destid320.c476 = getelementptr inbounds %struct.rio_dev, ptr %call114, i32 0, i32 24
  %200 = ptrtoint ptr %destid320.c476 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv319.c475, ptr %destid320.c476, align 4
  br label %cleanup350

cleanup350:                                       ; preds = %if.end349.critedge474, %rio_name.exit561, %do.body326, %if.then315, %do.end228.cleanup350_crit_edge, %if.end109.cleanup350_crit_edge, %if.then105, %do.body91, %do.end64, %land.lhs.true42.cleanup350_crit_edge, %if.then38.cleanup350_crit_edge, %do.end31.cleanup350_crit_edge, %if.then8, %do.body
  %retval.1 = phi i32 [ -1, %if.then8 ], [ 0, %if.then38.cleanup350_crit_edge ], [ 0, %land.lhs.true42.cleanup350_crit_edge ], [ 0, %do.end64 ], [ 0, %do.end31.cleanup350_crit_edge ], [ -1, %if.then105 ], [ -1, %if.end109.cleanup350_crit_edge ], [ 0, %if.end349.critedge474 ], [ 0, %if.then315 ], [ 0, %rio_name.exit561 ], [ -1, %do.body ], [ -1, %do.body91 ], [ 0, %do.body326 ], [ -1, %do.end228.cleanup350_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %regval) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rio_clear_locks(ptr noundef readonly %net) unnamed_addr #2 align 64 {
entry:
  %result = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %hport = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 4
  %0 = ptrtoint ptr %hport to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hport, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %2 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %result, align 4, !annotation !146
  %host_deviceid = getelementptr inbounds %struct.rio_mport, ptr %1, i32 0, i32 10
  %3 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %host_deviceid, align 8
  %call.i = tail call i32 @__rio_local_write_config_32(ptr noundef %1, i32 noundef 104, i32 noundef %4) #6
  %call.i1 = call i32 @__rio_local_read_config_32(ptr noundef %1, i32 noundef 104, ptr noundef nonnull %result) #6
  %5 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %result, align 4
  %and = and i32 %6, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and)
  %cmp.not = icmp eq i32 %and, 65535
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call2 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %6) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %devices = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 1
  %7 = ptrtoint ptr %devices to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn18 = load ptr, ptr %devices, align 8
  %cmp5.not19 = icmp eq ptr %.pn18, %devices
  br i1 %cmp5.not19, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %if.end18.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn20 = phi ptr [ %.pn, %if.end18.for.body_crit_edge ], [ %.pn18, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %host_deviceid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %host_deviceid, align 8
  %net.i = getelementptr i8, ptr %.pn20, i32 8
  %10 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %net.i, align 8
  %hport.i = getelementptr inbounds %struct.rio_net, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %hport.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hport.i, align 8
  %destid.i = getelementptr i8, ptr %.pn20, i32 1524
  %14 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %destid.i, align 4
  %hopcount.i = getelementptr i8, ptr %.pn20, i32 1526
  %16 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hopcount.i, align 2
  %call.i2 = call i32 @rio_mport_write_config_32(ptr noundef %13, i16 noundef zeroext %15, i8 noundef zeroext %17, i32 noundef 104, i32 noundef %9) #6
  %18 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %net.i, align 8
  %hport.i4 = getelementptr inbounds %struct.rio_net, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %hport.i4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %hport.i4, align 8
  %22 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %destid.i, align 4
  %24 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hopcount.i, align 2
  %call.i7 = call i32 @rio_mport_read_config_32(ptr noundef %21, i16 noundef zeroext %23, i8 noundef zeroext %25, i32 noundef 104, ptr noundef nonnull %result) #6
  %26 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %result, align 4
  %and9 = and i32 %27, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 65535
  br i1 %cmp10.not, label %for.body.if.end18_crit_edge, label %do.end14

for.body.if.end18_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end14:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %vid = getelementptr i8, ptr %.pn20, i32 16
  %28 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %vid, align 8
  %conv = zext i16 %29 to i32
  %did = getelementptr i8, ptr %.pn20, i32 14
  %30 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %did, align 2
  %conv16 = zext i16 %31 to i32
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %conv, i32 noundef %conv16) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end14, %for.body.if.end18_crit_edge
  %phys_efptr = getelementptr i8, ptr %.pn20, i32 52
  %32 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %phys_efptr, align 4
  %add = add i32 %33, 60
  %34 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %net.i, align 8
  %hport.i9 = getelementptr inbounds %struct.rio_net, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %hport.i9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hport.i9, align 8
  %38 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %destid.i, align 4
  %40 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %hopcount.i, align 2
  %call.i12 = call i32 @rio_mport_read_config_32(ptr noundef %37, i16 noundef zeroext %39, i8 noundef zeroext %41, i32 noundef %add, ptr noundef nonnull %result) #6
  %42 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %result, align 4
  %or = or i32 %43, 1610612736
  store i32 %or, ptr %result, align 4
  %44 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys_efptr, align 4
  %add21 = add i32 %45, 60
  %46 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %net.i, align 8
  %hport.i14 = getelementptr inbounds %struct.rio_net, ptr %47, i32 0, i32 4
  %48 = ptrtoint ptr %hport.i14 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hport.i14, align 8
  %50 = ptrtoint ptr %destid.i to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %destid.i, align 4
  %52 = ptrtoint ptr %hopcount.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %hopcount.i, align 2
  %call.i17 = call i32 @rio_mport_write_config_32(ptr noundef %49, i16 noundef zeroext %51, i8 noundef zeroext %53, i32 noundef %add21, i32 noundef %or) #6
  %54 = ptrtoint ptr %.pn20 to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pn = load ptr, ptr %.pn20, align 8
  %cmp5.not = icmp eq ptr %.pn, %devices
  br i1 %cmp5.not, label %if.end18.for.end_crit_edge, label %if.end18.for.body_crit_edge

if.end18.for.body_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %if.end18.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_pw_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_local_set_device_id(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rio_local_read_config_32(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_alloc_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_free_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_scan_release_net(ptr nocapture noundef readonly %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_scan_release_net.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_scan_release_net, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 5
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_scan_release_net.__UNIQUE_ID_ddebug243, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %enum_data = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 7
  %2 = ptrtoint ptr %enum_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enum_data, align 8
  tail call void @kfree(ptr noundef %3) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_scan_release_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_scan_release_dev.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_scan_release_dev, %do.end)) #6
          to label %if.then [label %do.end], !srcloc !147

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %id = getelementptr i8, ptr %dev, i32 -4
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %id, align 4
  %conv = zext i8 %1 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_scan_release_dev.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %add.ptr = getelementptr i8, ptr %dev, i32 -40
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_add_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__rio_local_write_config_32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_chk_dev_access(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_read_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_get_comptag(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_write_config_32(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rio_setup_device(ptr noundef %net, ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef %do_enum) unnamed_addr #2 align 64 {
entry:
  %result.i = alloca i32, align 4
  %result = alloca i32, align 4
  %swpinfo = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result) #6
  %0 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %result, align 4, !annotation !146
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %swpinfo) #6
  %1 = ptrtoint ptr %swpinfo to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %swpinfo, align 4
  %call = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 16, ptr noundef nonnull %result) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup156_crit_edge

entry.cleanup156_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %result, align 4
  %and = and i32 %3, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end.if.end8.i.i_crit_edge, label %if.then2

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 20, ptr noundef nonnull %swpinfo) #6
  %4 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %result, align 4
  %and4 = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.then2.if.end8.i.i_crit_edge, label %if.then6

if.then2.if.end8.i.i_crit_edge:                   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i.i

if.then6:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %swpinfo, align 4
  %8 = lshr i32 %7, 6
  %9 = and i32 %8, 1020
  %add = add nuw nsw i32 %9, 1608
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then6, %if.then2.if.end8.i.i_crit_edge, %if.end.if.end8.i.i_crit_edge
  %size.0 = phi i32 [ %add, %if.then6 ], [ 1544, %if.then2.if.end8.i.i_crit_edge ], [ 1544, %if.end.if.end8.i.i_crit_edge ]
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %size.0, i32 noundef 3520) #10
  %tobool12.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool12.not, label %if.end8.i.i.cleanup156_crit_edge, label %if.end14

if.end8.i.i.cleanup156_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup156

if.end14:                                         ; preds = %if.end8.i.i
  %net15 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %net15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %net, ptr %net15, align 16
  %11 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %result, align 4
  %pef = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 11
  %13 = ptrtoint ptr %pef to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %pef, align 8
  %14 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %swpinfo, align 4
  %swpinfo16 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %swpinfo16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %swpinfo16, align 4
  %call17 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 0, ptr noundef nonnull %result) #6
  %17 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %result, align 4
  %19 = lshr i32 %18, 16
  %conv = trunc i32 %19 to i16
  %did = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %did to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv, ptr %did, align 2
  %conv20 = trunc i32 %18 to i16
  %vid = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %vid to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv20, ptr %vid, align 8
  %device_rev = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 6
  %call21 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 4, ptr noundef %device_rev) #6
  %call22 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 8, ptr noundef nonnull %result) #6
  %22 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %result, align 4
  %24 = lshr i32 %23, 16
  %conv24 = trunc i32 %24 to i16
  %asm_did = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %asm_did to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv24, ptr %asm_did, align 32
  %conv26 = trunc i32 %23 to i16
  %asm_vid = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 8
  %26 = ptrtoint ptr %asm_vid to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv26, ptr %asm_vid, align 2
  %call27 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 12, ptr noundef nonnull %result) #6
  %27 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %result, align 4
  %29 = lshr i32 %28, 16
  %conv29 = trunc i32 %29 to i16
  %asm_rev = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %asm_rev to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv29, ptr %asm_rev, align 4
  %31 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %pef, align 8
  %and31 = and i32 %32, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.end14.if.end52_crit_edge, label %if.then33

if.end14.if.end52_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then33:                                        ; preds = %if.end14
  %conv35 = trunc i32 %28 to i16
  %efptr = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 10
  %33 = ptrtoint ptr %efptr to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv35, ptr %efptr, align 2
  %phys_rmap = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 17
  %call36 = call i32 @rio_mport_get_physefb(ptr noundef %port, i32 noundef 0, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, ptr noundef %phys_rmap) #6
  %phys_efptr = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 16
  %34 = ptrtoint ptr %phys_efptr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call36, ptr %phys_efptr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_setup_device.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_setup_device, %do.end)) #6
          to label %if.then42 [label %do.end], !srcloc !147

if.then42:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #8
  %35 = ptrtoint ptr %phys_rmap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys_rmap, align 64
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_setup_device.__UNIQUE_ID_ddebug232, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.31, i32 noundef %36) #6
  br label %do.end

do.end:                                           ; preds = %if.then42, %if.then33
  %call45 = call i32 @rio_mport_get_feature(ptr noundef %port, i32 noundef 0, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 7) #6
  %em_efptr = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 18
  %37 = ptrtoint ptr %em_efptr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call45, ptr %em_efptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool47.not = icmp eq i32 %call45, 0
  br i1 %tobool47.not, label %if.then48, label %do.end.if.end52_crit_edge

do.end.if.end52_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end52

if.then48:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %call49 = call i32 @rio_mport_get_feature(ptr noundef %port, i32 noundef 0, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 23) #6
  %38 = ptrtoint ptr %em_efptr to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call49, ptr %em_efptr, align 4
  br label %if.end52

if.end52:                                         ; preds = %if.then48, %do.end.if.end52_crit_edge, %if.end14.if.end52_crit_edge
  %src_ops = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 13
  %call53 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 24, ptr noundef %src_ops) #6
  %dst_ops = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 14
  %call54 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 28, ptr noundef %dst_ops) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %do_enum)
  %tobool55.not = icmp eq i32 %do_enum, 0
  br i1 %tobool55.not, label %if.end69, label %if.then56

if.then56:                                        ; preds = %if.end52
  %39 = load i32, ptr @next_comptag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %39)
  %cmp = icmp sgt i32 %39, 65535
  br i1 %cmp, label %cleanup.thread, label %if.end69.thread

cleanup.thread:                                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #9
  br label %if.end155

if.end69:                                         ; preds = %if.end52
  %comp_tag67 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 15
  %call68 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 108, ptr noundef %comp_tag67) #6
  %40 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %src_ops, align 16
  %42 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dst_ops, align 4
  %or.i = or i32 %43, %41
  %and.i = and i32 %or.i, 49648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end69.if.else87_crit_edge, label %if.else82

if.end69.if.else87_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else87

if.end69.thread:                                  ; preds = %if.then56
  %call65 = call i32 @rio_mport_write_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 108, i32 noundef %39) #6
  %44 = load i32, ptr @next_comptag, align 4
  %inc = add i32 %44, 1
  store i32 %inc, ptr @next_comptag, align 4
  %comp_tag = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 15
  %45 = ptrtoint ptr %comp_tag to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %comp_tag, align 8
  %do_enum66 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 3
  %46 = ptrtoint ptr %do_enum66 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %do_enum66, align 4
  %47 = ptrtoint ptr %src_ops to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %src_ops, align 16
  %49 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst_ops, align 4
  %or.i316 = or i32 %50, %48
  %and.i317 = and i32 %or.i316, 49648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i317)
  %tobool.i.not318 = icmp eq i32 %and.i317, 0
  br i1 %tobool.i.not318, label %if.end69.thread.if.else87_crit_edge, label %if.then76

if.end69.thread.if.else87_crit_edge:              ; preds = %if.end69.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else87

if.then76:                                        ; preds = %if.end69.thread
  %51 = load i32, ptr @next_destid, align 4
  %sys_size.i = getelementptr inbounds %struct.rio_mport, ptr %port, i32 0, i32 14
  %52 = ptrtoint ptr %sys_size.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %sys_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i = icmp eq i32 %53, 0
  %conv.i = and i32 %51, 65535
  %54 = shl i32 %51, 16
  %shl.i = and i32 %54, 16711680
  %cond.i = select i1 %tobool.not.i, i32 %shl.i, i32 %conv.i
  %call.i = call i32 @rio_mport_write_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 96, i32 noundef %cond.i) #6
  %55 = load i32, ptr @next_destid, align 4
  %conv78 = trunc i32 %55 to i16
  %destid79 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 24
  %56 = ptrtoint ptr %destid79 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv78, ptr %destid79, align 4
  %enum_data.i = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 7
  %57 = ptrtoint ptr %enum_data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %enum_data.i, align 8
  %lock.i = getelementptr inbounds %struct.rio_id_table, ptr %58, i32 0, i32 2
  call void @_raw_spin_lock(ptr noundef %lock.i) #6
  %table.i = getelementptr inbounds %struct.rio_id_table, ptr %58, i32 0, i32 3
  %max.i = getelementptr inbounds %struct.rio_id_table, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max.i, align 4
  %call.i279 = call i32 @_find_first_zero_bit_be(ptr noundef %table.i, i32 noundef %60) #6
  %61 = ptrtoint ptr %max.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %max.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i279, i32 %62)
  %cmp.i = icmp ult i32 %call.i279, %62
  br i1 %cmp.i, label %if.then.i, label %if.then76.rio_destid_alloc.exit_crit_edge

if.then76.rio_destid_alloc.exit_crit_edge:        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_destid_alloc.exit

if.then.i:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #8
  call void @_set_bit(i32 noundef %call.i279, ptr noundef %table.i) #6
  %63 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %58, align 4
  %65 = trunc i32 %call.i279 to i16
  %phi.cast.i = add i16 %64, %65
  %phi.cast = zext i16 %phi.cast.i to i32
  br label %rio_destid_alloc.exit

rio_destid_alloc.exit:                            ; preds = %if.then.i, %if.then76.rio_destid_alloc.exit_crit_edge
  %destid.0.i = phi i32 [ %phi.cast, %if.then.i ], [ 65535, %if.then76.rio_destid_alloc.exit_crit_edge ]
  call void @_raw_spin_unlock(ptr noundef %lock.i) #6
  store i32 %destid.0.i, ptr @next_destid, align 4
  br label %if.end90

if.else82:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %66 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -1, ptr %result.i, align 4, !annotation !146
  %call.i280 = call i32 @rio_mport_read_config_32(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 96, ptr noundef nonnull %result.i) #6
  %sys_size.i281 = getelementptr inbounds %struct.rio_mport, ptr %port, i32 0, i32 14
  %67 = ptrtoint ptr %sys_size.i281 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %sys_size.i281, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i282 = icmp eq i32 %68, 0
  %69 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %result.i, align 4
  %and1.i = lshr i32 %70, 16
  %shr.i = and i32 %and1.i, 255
  %cond.i283 = select i1 %tobool.not.i282, i32 %shr.i, i32 %70
  %conv.i284 = trunc i32 %cond.i283 to i16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  %destid84 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 24
  %71 = ptrtoint ptr %destid84 to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %conv.i284, ptr %destid84, align 4
  br label %if.end90

if.else87:                                        ; preds = %if.end69.thread.if.else87_crit_edge, %if.end69.if.else87_crit_edge
  %destid88 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 24
  %72 = ptrtoint ptr %destid88 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %destid, ptr %destid88, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.else87, %if.else82, %rio_destid_alloc.exit
  %hopcount.sink = phi i8 [ %hopcount, %if.else87 ], [ -1, %if.else82 ], [ -1, %rio_destid_alloc.exit ]
  %hopcount89 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 25
  %73 = ptrtoint ptr %hopcount89 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %hopcount.sink, ptr %hopcount89, align 2
  %74 = ptrtoint ptr %pef to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pef, align 8
  %76 = and i32 %75, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool92.not = icmp eq i32 %76, 0
  br i1 %tobool92.not, label %if.else121, label %if.then93

if.then93:                                        ; preds = %if.end90
  %rswitch94 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 28
  %port_ok = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 1, i32 1, i32 1
  %77 = ptrtoint ptr %port_ok to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 0, ptr %port_ok, align 4
  %lock = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 1, i32 3
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.34, ptr noundef nonnull @rio_setup_device.__key, i16 noundef signext 3) #6
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %port, i32 0, i32 14
  %78 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool99.not = icmp eq i32 %79, 0
  %cond = select i1 %tobool99.not, i32 256, i32 65536
  %call9.i.i304 = call noalias align 128 ptr @__kmalloc(i32 noundef %cond, i32 noundef 3520) #10
  %route_table = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 1, i32 1
  %80 = ptrtoint ptr %route_table to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call9.i.i304, ptr %route_table, align 16
  %tobool102.not = icmp eq ptr %call9.i.i304, null
  br i1 %tobool102.not, label %if.then93.cleanup_crit_edge, label %if.then93.for.body_crit_edge

if.then93.for.body_crit_edge:                     ; preds = %if.then93
  br label %for.body

if.then93.cleanup_crit_edge:                      ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then93.for.body_crit_edge
  %rdid.0315 = phi i32 [ %inc111, %for.body.for.body_crit_edge ], [ 0, %if.then93.for.body_crit_edge ]
  %81 = ptrtoint ptr %route_table to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %route_table, align 16
  %arrayidx = getelementptr i8, ptr %82, i32 %rdid.0315
  %83 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 -1, ptr %arrayidx, align 1
  %inc111 = add nuw nsw i32 %rdid.0315, 1
  %84 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool106.not = icmp eq i32 %85, 0
  %cond107 = select i1 %tobool106.not, i32 256, i32 65536
  %cmp108 = icmp ult i32 %inc111, %cond107
  br i1 %cmp108, label %for.body.for.body_crit_edge, label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %dev = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21
  %86 = ptrtoint ptr %net15 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %net15, align 16
  %id = getelementptr inbounds %struct.rio_net, ptr %87, i32 0, i32 5
  %88 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %id, align 4
  %conv113 = zext i8 %89 to i32
  %comp_tag114 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 15
  %90 = ptrtoint ptr %comp_tag114 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %comp_tag114, align 8
  %and115 = and i32 %91, 131071
  %call116 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef %conv113, i32 noundef %and115) #6
  br i1 %tobool55.not, label %for.end.if.end133_crit_edge, label %if.then118

for.end.if.end133_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end133

if.then118:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %call119 = call i32 @rio_route_clr_table(ptr noundef nonnull %call9.i.i, i16 noundef zeroext 255, i32 noundef 0) #6
  br label %if.end133

if.else121:                                       ; preds = %if.end90
  br i1 %tobool55.not, label %if.else121.if.end125_crit_edge, label %if.then123

if.else121.if.end125_crit_edge:                   ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end125

if.then123:                                       ; preds = %if.else121
  call void @__sanitizer_cov_trace_pc() #8
  %call124 = call i32 @rio_enable_rx_tx_port(ptr noundef %port, i32 noundef 0, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i8 noundef zeroext 0) #6
  br label %if.end125

if.end125:                                        ; preds = %if.then123, %if.else121.if.end125_crit_edge
  %dev126 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21
  %92 = ptrtoint ptr %net15 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %net15, align 16
  %id128 = getelementptr inbounds %struct.rio_net, ptr %93, i32 0, i32 5
  %94 = ptrtoint ptr %id128 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %id128, align 4
  %conv129 = zext i8 %95 to i32
  %comp_tag130 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 15
  %96 = ptrtoint ptr %comp_tag130 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %comp_tag130, align 8
  %and131 = and i32 %97, 131071
  %call132 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev126, ptr noundef nonnull @.str.36, i32 noundef %conv129, i32 noundef %and131) #6
  br label %if.end133

if.end133:                                        ; preds = %if.end125, %if.then118, %for.end.if.end133_crit_edge
  %rswitch.0 = phi ptr [ %rswitch94, %if.then118 ], [ %rswitch94, %for.end.if.end133_crit_edge ], [ null, %if.end125 ]
  %dev134 = getelementptr inbounds %struct.rio_net, ptr %net, i32 0, i32 6
  %parent = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21, i32 1
  %98 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %dev134, ptr %parent, align 32
  call void @rio_attach_device(ptr noundef nonnull %call9.i.i) #6
  %release = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21, i32 35
  %99 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr @rio_release_dev, ptr %release, align 4
  %dma_mask = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 19
  %100 = ptrtoint ptr %dma_mask to i32
  call void @__asan_store8_noabort(i32 %100)
  store i64 4294967295, ptr %dma_mask, align 8
  %dma_mask139 = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21, i32 18
  %101 = ptrtoint ptr %dma_mask139 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %dma_mask, ptr %dma_mask139, align 32
  %coherent_dma_mask = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 21, i32 19
  %102 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_store8_noabort(i32 %102)
  store i64 4294967295, ptr %coherent_dma_mask, align 8
  %103 = ptrtoint ptr %dst_ops to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %dst_ops, align 4
  %and142 = and i32 %104, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %if.end133.if.end146_crit_edge, label %if.then144

if.end133.if.end146_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end146

if.then144:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #8
  %riores = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 22
  %end3.i = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 22, i32 0, i32 1
  %105 = call ptr @memset(ptr %riores, i32 0, i32 32)
  %106 = ptrtoint ptr %end3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 65535, ptr %end3.i, align 4
  %flags.i = getelementptr inbounds %struct.rio_dev, ptr %call9.i.i, i32 0, i32 22, i32 0, i32 3
  %107 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 512, ptr %flags.i, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then144, %if.end133.if.end146_crit_edge
  %call147 = call i32 @rio_add_device(ptr noundef nonnull %call9.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end150, label %if.end146.cleanup_crit_edge

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end150:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #8
  %call151 = call ptr @rio_dev_get(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup156

cleanup:                                          ; preds = %if.end146.cleanup_crit_edge, %if.then93.cleanup_crit_edge
  %rswitch.1 = phi ptr [ %rswitch.0, %if.end146.cleanup_crit_edge ], [ %rswitch94, %if.then93.cleanup_crit_edge ]
  %tobool152.not = icmp eq ptr %rswitch.1, null
  br i1 %tobool152.not, label %cleanup.if.end155_crit_edge, label %if.then153

cleanup.if.end155_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end155

if.then153:                                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  %route_table154 = getelementptr inbounds %struct.rio_switch, ptr %rswitch.1, i32 0, i32 1
  %108 = ptrtoint ptr %route_table154 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %route_table154, align 4
  call void @kfree(ptr noundef %109) #6
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %cleanup.if.end155_crit_edge, %cleanup.thread
  call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup156

cleanup156:                                       ; preds = %if.end155, %if.end150, %if.end8.i.i.cleanup156_crit_edge, %entry.cleanup156_crit_edge
  %retval.0 = phi ptr [ null, %if.end155 ], [ %call9.i.i, %if.end150 ], [ null, %entry.cleanup156_crit_edge ], [ null, %if.end8.i.i.cleanup156_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %swpinfo) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_route_add_entry(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_set_port_lockout(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_get_physefb(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_mport_get_feature(ptr noundef, i32 noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_route_clr_table(ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rio_attach_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rio_release_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dev, i32 -88
  tail call void @kfree(ptr noundef %add.ptr) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_add_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rio_dev_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rio_disc_peer(ptr noundef %net, ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, ptr noundef %prev, i32 noundef %prev_port) unnamed_addr #2 align 64 {
entry:
  %result.i = alloca i32, align 4
  %route_port = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %route_port) #6
  %0 = ptrtoint ptr %route_port to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %route_port, align 1, !annotation !146
  %call = tail call fastcc ptr @rio_setup_device(ptr noundef %net, ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 0)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %entry
  %prev1 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 26
  %1 = ptrtoint ptr %prev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %prev, ptr %prev1, align 8
  %tobool2.not = icmp eq ptr %prev, null
  br i1 %tobool2.not, label %if.then.if.end6_crit_edge, label %land.lhs.true

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.then
  %pef.i = getelementptr inbounds %struct.rio_dev, ptr %prev, i32 0, i32 11
  %2 = ptrtoint ptr %pef.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pef.i, align 8
  %4 = and i32 %3, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool4.not = icmp eq i32 %4, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %if.then5

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %nextdev = getelementptr inbounds %struct.rio_dev, ptr %prev, i32 1, i32 17
  %arrayidx = getelementptr [0 x ptr], ptr %nextdev, i32 0, i32 %prev_port
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %arrayidx, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %land.lhs.true.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %pef.i164 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 11
  %6 = ptrtoint ptr %pef.i164 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pef.i164, align 8
  %8 = and i32 %7, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool8.not = icmp eq i32 %8, 0
  br i1 %tobool8.not, label %do.body91, label %if.then9

if.then9:                                         ; preds = %if.end6
  %destid10 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 24
  %9 = ptrtoint ptr %destid10 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %destid, ptr %destid10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_disc_peer.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_disc_peer, %do.end)) #6
          to label %if.then16 [label %do.end], !srcloc !147

if.then16:                                        ; preds = %if.then9
  %init_name.i.i = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 21, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then16.rio_name.exit_crit_edge

if.then16.rio_name.exit_crit_edge:                ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit

if.end.i.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 21
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  br label %rio_name.exit

rio_name.exit:                                    ; preds = %if.end.i.i, %if.then16.rio_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then16.rio_name.exit_crit_edge ]
  %vid = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vid, align 8
  %conv = zext i16 %15 to i32
  %did = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 4
  %16 = ptrtoint ptr %did to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %did, align 2
  %conv18 = zext i16 %17 to i32
  %swpinfo = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 12
  %18 = ptrtoint ptr %swpinfo to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %swpinfo, align 4
  %and = lshr i32 %19, 8
  %shr = and i32 %and, 255
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_disc_peer.__UNIQUE_ID_ddebug240, ptr noundef nonnull @.str.28, ptr noundef %retval.0.i.i, i32 noundef %conv, i32 noundef %conv18, i32 noundef %shr) #6
  br label %do.end

do.end:                                           ; preds = %rio_name.exit, %if.then9
  %swpinfo21 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 12
  %20 = ptrtoint ptr %swpinfo21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %swpinfo21, align 4
  %22 = and i32 %21, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp183.not = icmp eq i32 %22, 0
  br i1 %cmp183.not, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %phys_efptr.i = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 16
  %phys_rmap.i = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 17
  %net.i.i = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 2
  %hopcount.i.i = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 25
  %sys_size = getelementptr inbounds %struct.rio_mport, ptr %port, i32 0, i32 14
  %add = add i8 %hopcount, 1
  br label %for.body

for.body:                                         ; preds = %for.inc87.for.body_crit_edge, %for.body.lr.ph
  %23 = phi i32 [ %21, %for.body.lr.ph ], [ %48, %for.inc87.for.body_crit_edge ]
  %conv20187 = phi i32 [ 0, %for.body.lr.ph ], [ %conv20, %for.inc87.for.body_crit_edge ]
  %port_num.0184 = phi i8 [ 0, %for.body.lr.ph ], [ %inc88, %for.inc87.for.body_crit_edge ]
  %and26 = and i32 %23, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and26, i32 %conv20187)
  %cmp28 = icmp eq i32 %and26, %conv20187
  br i1 %cmp28, label %for.body.for.inc87_crit_edge, label %if.end31

for.body.for.inc87_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc87

if.end31:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %result.i) #6
  %24 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %result.i, align 4
  %25 = ptrtoint ptr %phys_efptr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys_efptr.i, align 4
  %27 = ptrtoint ptr %phys_rmap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %phys_rmap.i, align 8
  %mul.i = shl nuw nsw i32 %conv20187, 5
  %mul1.i = mul i32 %mul.i, %28
  %add.i = add i32 %26, 88
  %add2.i = add i32 %add.i, %mul1.i
  %29 = ptrtoint ptr %net.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %net.i.i, align 8
  %hport.i.i = getelementptr inbounds %struct.rio_net, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %hport.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hport.i.i, align 8
  %33 = ptrtoint ptr %destid10 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %destid10, align 4
  %35 = ptrtoint ptr %hopcount.i.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hopcount.i.i, align 2
  %call.i.i = call i32 @rio_mport_read_config_32(ptr noundef %32, i16 noundef zeroext %34, i8 noundef zeroext %36, i32 noundef %add2.i, ptr noundef nonnull %result.i) #6
  %37 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %result.i, align 4
  %and.i167 = and i32 %38, 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %result.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i167)
  %tobool34.not = icmp eq i32 %and.i167, 0
  br i1 %tobool34.not, label %if.end31.for.inc87_crit_edge, label %do.body36

if.end31.for.inc87_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc87

do.body36:                                        ; preds = %if.end31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_disc_peer.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_disc_peer, %do.end54)) #6
          to label %if.then50 [label %do.end54], !srcloc !147

if.then50:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_disc_peer.__UNIQUE_ID_ddebug241, ptr noundef nonnull @.str.29, i32 noundef %conv20187) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body36
  %call55 = call i32 @rio_lock_device(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount, i32 noundef 1000) #6
  %call62190 = call i32 @rio_route_get_entry(ptr noundef nonnull %call, i16 noundef zeroext 255, i16 noundef zeroext 0, ptr noundef nonnull %route_port, i32 noundef 0) #6
  %39 = ptrtoint ptr %route_port to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %route_port, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %40, i8 %port_num.0184)
  %cmp65191 = icmp eq i8 %40, %port_num.0184
  br i1 %cmp65191, label %do.end54.for.end_crit_edge, label %do.end54.for.inc_crit_edge

do.end54.for.inc_crit_edge:                       ; preds = %do.end54
  br label %for.inc

do.end54.for.end_crit_edge:                       ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body61:                                       ; preds = %for.inc
  %call62 = call i32 @rio_route_get_entry(ptr noundef nonnull %call, i16 noundef zeroext 255, i16 noundef zeroext %inc, ptr noundef nonnull %route_port, i32 noundef 0) #6
  %41 = ptrtoint ptr %route_port to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %route_port, align 1
  %cmp65 = icmp eq i8 %42, %port_num.0184
  br i1 %cmp65, label %for.body61.for.end_crit_edge, label %for.body61.for.inc_crit_edge

for.body61.for.inc_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.body61.for.end_crit_edge:                     ; preds = %for.body61
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %for.body61.for.inc_crit_edge, %do.end54.for.inc_crit_edge
  %ndestid.0179192 = phi i16 [ %inc, %for.body61.for.inc_crit_edge ], [ 0, %do.end54.for.inc_crit_edge ]
  %inc = add i16 %ndestid.0179192, 1
  %conv57 = zext i16 %inc to i32
  %43 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool58.not = icmp eq i32 %44, 0
  %cond = select i1 %tobool58.not, i32 255, i32 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %cond, i32 %conv57)
  %cmp59 = icmp ugt i32 %cond, %conv57
  br i1 %cmp59, label %for.body61, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body61.for.end_crit_edge, %do.end54.for.end_crit_edge
  %ndestid.0.lcssa = phi i16 [ 0, %do.end54.for.end_crit_edge ], [ %inc, %for.body61.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  %conv57.lcssa = phi i32 [ 0, %do.end54.for.end_crit_edge ], [ %conv57, %for.body61.for.end_crit_edge ], [ %conv57, %for.inc.for.end_crit_edge ]
  %45 = ptrtoint ptr %sys_size to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %sys_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool71.not = icmp eq i32 %46, 0
  %cond72 = select i1 %tobool71.not, i32 255, i32 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %cond72, i32 %conv57.lcssa)
  %cmp73 = icmp eq i32 %cond72, %conv57.lcssa
  br i1 %cmp73, label %for.end.for.inc87_crit_edge, label %if.end76

for.end.for.inc87_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc87

if.end76:                                         ; preds = %for.end
  %call77 = call i32 @rio_unlock_device(ptr noundef %port, i16 noundef zeroext %destid, i8 noundef zeroext %hopcount) #6
  %call81 = call fastcc i32 @rio_disc_peer(ptr noundef %net, ptr noundef %port, i16 noundef zeroext %ndestid.0.lcssa, i8 noundef zeroext %add, ptr noundef nonnull %call, i32 noundef %conv20187)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end76.cleanup_crit_edge, label %if.end76.for.inc87_crit_edge

if.end76.for.inc87_crit_edge:                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc87

if.end76.cleanup_crit_edge:                       ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc87:                                        ; preds = %if.end76.for.inc87_crit_edge, %for.end.for.inc87_crit_edge, %if.end31.for.inc87_crit_edge, %for.body.for.inc87_crit_edge
  %inc88 = add i8 %port_num.0184, 1
  %conv20 = zext i8 %inc88 to i32
  %47 = ptrtoint ptr %swpinfo21 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %swpinfo21, align 4
  %and22 = lshr i32 %48, 8
  %shr23 = and i32 %and22, 255
  %cmp = icmp ugt i32 %shr23, %conv20
  br i1 %cmp, label %for.inc87.for.body_crit_edge, label %for.inc87.cleanup_crit_edge

for.inc87.cleanup_crit_edge:                      ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc87.for.body_crit_edge:                     ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body91:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rio_disc_peer.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rio_disc_peer, %cleanup)) #6
          to label %if.then105 [label %cleanup], !srcloc !147

if.then105:                                       ; preds = %do.body91
  %init_name.i.i168 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 21, i32 3
  %49 = ptrtoint ptr %init_name.i.i168 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %init_name.i.i168, align 8
  %tobool.not.i.i169 = icmp eq ptr %50, null
  br i1 %tobool.not.i.i169, label %if.end.i.i171, label %if.then105.rio_name.exit173_crit_edge

if.then105.rio_name.exit173_crit_edge:            ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  br label %rio_name.exit173

if.end.i.i171:                                    ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i170 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 21
  %51 = ptrtoint ptr %dev.i170 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i170, align 4
  br label %rio_name.exit173

rio_name.exit173:                                 ; preds = %if.end.i.i171, %if.then105.rio_name.exit173_crit_edge
  %retval.0.i.i172 = phi ptr [ %52, %if.end.i.i171 ], [ %50, %if.then105.rio_name.exit173_crit_edge ]
  %vid107 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 5
  %53 = ptrtoint ptr %vid107 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %vid107, align 8
  %conv108 = zext i16 %54 to i32
  %did109 = getelementptr inbounds %struct.rio_dev, ptr %call, i32 0, i32 4
  %55 = ptrtoint ptr %did109 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %did109, align 2
  %conv110 = zext i16 %56 to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @rio_disc_peer.__UNIQUE_ID_ddebug242, ptr noundef nonnull @.str.30, ptr noundef %retval.0.i.i172, i32 noundef %conv108, i32 noundef %conv110) #6
  br label %cleanup

cleanup:                                          ; preds = %rio_name.exit173, %do.body91, %for.inc87.cleanup_crit_edge, %if.end76.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %rio_name.exit173 ], [ 0, %do.body91 ], [ 0, %do.end.cleanup_crit_edge ], [ -1, %if.end76.cleanup_crit_edge ], [ 0, %for.inc87.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %route_port) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_lock_device(ptr noundef, i16 noundef zeroext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_route_get_entry(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rio_unlock_device(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !15, !17, !19, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !49, !51, !52, !53, !54, !56, !57, !59, !61, !63, !64, !65, !67, !68, !70, !71, !73, !74, !76, !77, !79, !80, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !96, !98, !100, !101, !102, !103, !105, !106, !107, !109, !110, !111, !112, !114, !115, !117, !118, !120, !121, !123, !124, !125, !127, !128, !129, !131, !132, !134}
!llvm.module.flags = !{!136, !137, !138, !139, !140, !141, !142, !143}
!llvm.ident = !{!144}

!0 = !{ptr @__param_scan, !1, !"__param_scan", i1 false, i1 false}
!1 = !{!"../drivers/rapidio/rio-scan.c", i32 1122, i32 1}
!2 = !{ptr @__UNIQUE_ID_scantype248, !1, !"__UNIQUE_ID_scantype248", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_scan249, !4, !"__UNIQUE_ID_scan249", i1 false, i1 false}
!4 = !{!"../drivers/rapidio/rio-scan.c", i32 1123, i32 1}
!5 = !{ptr @__initcall__kmod_rio_scan__250_1149_rio_basic_attach7, !6, !"__initcall__kmod_rio_scan__250_1149_rio_basic_attach7", i1 false, i1 false}
!6 = !{!"../drivers/rapidio/rio-scan.c", i32 1149, i32 1}
!7 = !{ptr @__UNIQUE_ID_description251, !8, !"__UNIQUE_ID_description251", i1 false, i1 false}
!8 = !{!"../drivers/rapidio/rio-scan.c", i32 1151, i32 1}
!9 = !{ptr @__UNIQUE_ID_file252, !10, !"__UNIQUE_ID_file252", i1 false, i1 false}
!10 = !{!"../drivers/rapidio/rio-scan.c", i32 1152, i32 1}
!11 = !{ptr @__UNIQUE_ID_license253, !10, !"__UNIQUE_ID_license253", i1 false, i1 false}
!12 = !{ptr @scan, !13, !"scan", i1 false, i1 false}
!13 = !{!"../drivers/rapidio/rio-scan.c", i32 1121, i32 13}
!14 = !{ptr @__param_str_scan, !1, !"__param_str_scan", i1 false, i1 false}
!15 = !{ptr @rio_scan_ops, !16, !"rio_scan_ops", i1 false, i1 false}
!16 = !{!"../drivers/rapidio/rio-scan.c", i32 1115, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/rapidio/rio-scan.c", i32 947, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @rio_enum_mport._entry, !18, !"_entry", i1 false, i1 false}
!22 = !{ptr @rio_enum_mport._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/rapidio/rio-scan.c", i32 961, i32 3}
!25 = !{ptr @rio_enum_mport._entry.3, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @rio_enum_mport._entry_ptr.5, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/rapidio/rio-scan.c", i32 972, i32 4}
!29 = !{ptr @rio_enum_mport._entry.6, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @rio_enum_mport._entry_ptr.8, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/rapidio/rio-scan.c", i32 991, i32 4}
!33 = !{ptr @rio_enum_mport._entry.9, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @rio_enum_mport._entry_ptr.11, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/rapidio/rio-scan.c", i32 1004, i32 3}
!37 = !{ptr @rio_enum_mport._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @rio_enum_mport._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/rapidio/rio-scan.c", i32 852, i32 4}
!41 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @rio_scan_alloc_net._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @rio_scan_alloc_net._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @rio_scan_alloc_net.__key, !45, !"__key", i1 false, i1 false}
!45 = !{!"../drivers/rapidio/rio-scan.c", i32 860, i32 4}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/rapidio/rio-scan.c", i32 867, i32 27}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/rapidio/rio-scan.c", i32 810, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rio_scan_release_net.__UNIQUE_ID_ddebug243, !50, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!54 = !{ptr @.str.22, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/rapidio/rio-scan.c", i32 819, i32 2}
!56 = !{ptr @rio_scan_release_dev.__UNIQUE_ID_ddebug244, !55, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!57 = !{ptr @next_comptag, !58, !"next_comptag", i1 false, i1 false}
!58 = !{!"../drivers/rapidio/rio-scan.c", i32 46, i32 12}
!59 = !{ptr @next_destid, !60, !"next_destid", i1 false, i1 false}
!60 = !{!"../drivers/rapidio/rio-scan.c", i32 45, i32 12}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/rapidio/rio-scan.c", i32 531, i32 3}
!63 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug233, !62, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/rapidio/rio-scan.c", i32 536, i32 3}
!67 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug234, !66, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/rapidio/rio-scan.c", i32 548, i32 5}
!70 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug235, !69, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/rapidio/rio-scan.c", i32 573, i32 3}
!73 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug236, !72, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/rapidio/rio-scan.c", i32 609, i32 3}
!76 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug237, !75, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!77 = !{ptr @.str.29, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/rapidio/rio-scan.c", i32 628, i32 5}
!79 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug238, !78, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!80 = !{ptr @.str.30, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/rapidio/rio-scan.c", i32 690, i32 3}
!82 = !{ptr @rio_enum_peer.__UNIQUE_ID_ddebug239, !81, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/rapidio/rio-scan.c", i32 369, i32 3}
!85 = !{ptr @.str.32, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @rio_setup_device.__UNIQUE_ID_ddebug232, !84, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!87 = !{ptr @.str.33, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/rapidio/rio-scan.c", i32 387, i32 4}
!89 = !{ptr @rio_setup_device._entry, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @rio_setup_device._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @rio_setup_device.__key, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/rapidio/rio-scan.c", i32 421, i32 3}
!93 = !{ptr @.str.34, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/rapidio/rio-scan.c", i32 431, i32 28}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/rapidio/rio-scan.c", i32 441, i32 28}
!98 = !{ptr @.str.37, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/rapidio/rio-scan.c", i32 203, i32 3}
!100 = !{ptr @.str.38, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @rio_clear_locks._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @rio_clear_locks._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.40, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/rapidio/rio-scan.c", i32 213, i32 4}
!105 = !{ptr @rio_clear_locks._entry.39, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @rio_clear_locks._entry_ptr.41, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.42, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/rapidio/rio-scan.c", i32 1062, i32 2}
!109 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @rio_disc_mport._entry, !108, !"_entry", i1 false, i1 false}
!111 = !{ptr @rio_disc_mport._entry_ptr, !108, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/rapidio/rio-scan.c", i32 1072, i32 3}
!114 = !{ptr @rio_disc_mport.__UNIQUE_ID_ddebug245, !113, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!115 = !{ptr @.str.45, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/rapidio/rio-scan.c", i32 1081, i32 3}
!117 = !{ptr @rio_disc_mport.__UNIQUE_ID_ddebug246, !116, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!118 = !{ptr @.str.46, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/rapidio/rio-scan.c", i32 1085, i32 3}
!120 = !{ptr @rio_disc_mport.__UNIQUE_ID_ddebug247, !119, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!121 = !{ptr @.str.48, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/rapidio/rio-scan.c", i32 1089, i32 4}
!123 = !{ptr @rio_disc_mport._entry.47, !122, !"_entry", i1 false, i1 false}
!124 = !{ptr @rio_disc_mport._entry_ptr.49, !122, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.51, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/rapidio/rio-scan.c", i32 1101, i32 4}
!127 = !{ptr @rio_disc_mport._entry.50, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @rio_disc_mport._entry_ptr.52, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.53, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/rapidio/rio-scan.c", i32 745, i32 3}
!131 = !{ptr @rio_disc_peer.__UNIQUE_ID_ddebug240, !130, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!132 = !{ptr @rio_disc_peer.__UNIQUE_ID_ddebug241, !133, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!133 = !{!"../drivers/rapidio/rio-scan.c", i32 756, i32 5}
!134 = !{ptr @rio_disc_peer.__UNIQUE_ID_ddebug242, !135, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!135 = !{!"../drivers/rapidio/rio-scan.c", i32 782, i32 3}
!136 = !{i32 1, !"wchar_size", i32 2}
!137 = !{i32 1, !"min_enum_size", i32 4}
!138 = !{i32 8, !"branch-target-enforcement", i32 0}
!139 = !{i32 8, !"sign-return-address", i32 0}
!140 = !{i32 8, !"sign-return-address-all", i32 0}
!141 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!142 = !{i32 7, !"uwtable", i32 1}
!143 = !{i32 7, !"frame-pointer", i32 2}
!144 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!145 = !{i8 0, i8 2}
!146 = !{!"auto-init"}
!147 = !{i64 2148721355, i64 2148721360, i64 2148721373, i64 2148721417, i64 2148721451, i64 2148721472}
