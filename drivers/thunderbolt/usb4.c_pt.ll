; ModuleID = '/llk/IR_all_yes/drivers/thunderbolt/usb4.c_pt.bc'
source_filename = "../drivers/thunderbolt/usb4.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tb_switch = type { %struct.device, %struct.tb_regs_switch_header, ptr, ptr, %struct.tb_switch_tmu, ptr, i64, ptr, i16, i16, ptr, ptr, i32, i32, i8, i32, i32, i32, i32, i32, i8, ptr, ptr, i8, i8, i8, i8, i32, i32, ptr, ptr, i8, i8, i8, i8, %struct.completion, i32, i8, i32, i32, i32, i32, i32, i32 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.tb_regs_switch_header = type <{ i16, i16, i32, i32, i64 }>
%struct.tb_switch_tmu = type { i32, i8, i32, i8, i8, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.tb = type { %struct.device, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [0 x i32] }
%struct.tb_port = type { %struct.tb_regs_port_header, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i8, i8, i8, ptr, i8, %struct.ida, %struct.ida, %struct.list_head, i32, i32, i32 }
%struct.tb_regs_port_header = type { i16, i16, [12 x i8], i32, i32, i32, i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tb_nhi = type { %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.ida, i8, %struct.work_struct, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.67, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.hlist_head = type { ptr }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.67 = type { ptr }
%struct.tb_cm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.retimer_info = type { ptr, i8 }

@usb4_switch_setup.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"thunderbolt\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"usb4_switch_setup\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/thunderbolt/usb4.c\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llx: link: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"USB4\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"TBT\00", [28 x i8] zeroinitializer }, align 32
@usb4_switch_setup.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 61, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%llx: TBT3 support: %s, xHCI: %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -79, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"usb4_switch_credits_init\00", [39 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%llx: credit allocation parameters:\0A\00", [59 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.11, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%llx:  USB3: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.12, i8 0, i8 -75, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%llx:  DP AUX: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.13, i8 0, i8 -74, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%llx:  DP main: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.14, i8 0, i8 -73, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%llx:  PCIe: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.15, i8 0, i8 -72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%llx:  DMA: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.16, i8 0, i8 -71, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%llx:  unknown credit allocation index %#x, skipping\0A\00", [42 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.2, i32 754, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%llx: host router is missing baMaxHI\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry_ptr = internal global ptr @usb4_switch_credits_init._entry, section ".printk_index", align 4
@usb4_switch_credits_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.2, i32 766, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%llx: multiple USB4 ports require baMinDPaux/baMinDPmain\0A\00", [38 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry_ptr.22 = internal global ptr @usb4_switch_credits_init._entry.20, section ".printk_index", align 4
@usb4_switch_credits_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.2, i32 772, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%llx: missing baMinDPmain\00", [38 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry_ptr.25 = internal global ptr @usb4_switch_credits_init._entry.23, section ".printk_index", align 4
@usb4_switch_credits_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.9, ptr @.str.2, i32 777, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%llx: missing baMinDPaux\00", [39 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry_ptr.28 = internal global ptr @usb4_switch_credits_init._entry.26, section ".printk_index", align 4
@usb4_switch_credits_init._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.9, ptr @.str.2, i32 782, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%llx: missing baMaxUSB3\00", [40 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry_ptr.31 = internal global ptr @usb4_switch_credits_init._entry.29, section ".printk_index", align 4
@usb4_switch_credits_init._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.9, ptr @.str.2, i32 787, ptr @.str.18, ptr @.str.19 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%llx: missing baMaxPCIe\00", [40 x i8] zeroinitializer }, align 32
@usb4_switch_credits_init._entry_ptr.34 = internal global ptr @usb4_switch_credits_init._entry.32, section ".printk_index", align 4
@usb4_switch_check_wakes.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.36, i8 0, i8 42, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"usb4_switch_check_wakes\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%llx: PCIe wake: %s, USB3 wake: %s\0A\00", [60 x i8] zeroinitializer }, align 32
@usb4_switch_check_wakes.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.35, ptr @.str.2, ptr @.str.37, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%llx:%x: USB4 wake: %s\0A\00", [40 x i8] zeroinitializer }, align 32
@tb_switch_type = external dso_local global %struct.device_type, align 4
@.str.38 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/thunderbolt/tb.h\00", [39 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4294967186, i64 4294967189, i64 4294967283]
@__sancov_gen_cov_switch_values.39 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967201]
@__sancov_gen_cov_switch_values.43 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1347769164]
@__sancov_gen_cov_switch_values.44 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1347769164]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1414742348]
@__sancov_gen_cov_switch_values.46 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1397968455]
@__sancov_gen_cov_switch_values.47 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1397772098]
@__sancov_gen_cov_switch_values.48 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1464552514]
@__sancov_gen_cov_switch_values.49 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 542265925, i64 1145914145]
@__sancov_gen_cov_switch_values.50 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 542265925, i64 1145914145, i64 1381123649]
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 241, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 246, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 710, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 720, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 724, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 728, i32 4 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 732, i32 4 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 736, i32 4 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 740, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 754, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 766, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 772, i32 4 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 777, i32 4 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 782, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 787, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 169, i32 3 }
@___asan_gen_.151 = private constant [30 x i8] c"../drivers/thunderbolt/usb4.c\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.151, i32 185, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [28 x i8] c"../drivers/thunderbolt/tb.h\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.154, i32 538, i32 6 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @usb4_switch_credits_init._entry, ptr @usb4_switch_credits_init._entry.20, ptr @usb4_switch_credits_init._entry.23, ptr @usb4_switch_credits_init._entry.26, ptr @usb4_switch_credits_init._entry.29, ptr @usb4_switch_credits_init._entry.32, ptr @usb4_switch_credits_init._entry_ptr, ptr @usb4_switch_credits_init._entry_ptr.22, ptr @usb4_switch_credits_init._entry_ptr.25, ptr @usb4_switch_credits_init._entry_ptr.28, ptr @usb4_switch_credits_init._entry_ptr.31, ptr @usb4_switch_credits_init._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_switch_credits_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_switch_credits_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_switch_credits_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_switch_credits_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_switch_credits_init._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb4_switch_credits_init._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_setup(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val, align 4
  tail call fastcc void @usb4_switch_check_wakes(ptr noundef %sw)
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %1 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %2 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %2, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %4 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %call1.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %val, i64 noundef %or.i, i32 noundef 0, i32 noundef 2, i32 noundef 6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not, label %if.end4, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_sw_read.exit
  %parent.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 1
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 8
  %type.i.i.i = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %type.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %14, @tb_switch_type
  %dev..i.i = select i1 %cmp.i.i.i, ptr %12, ptr null
  %15 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i121 = load i64, ptr %route_hi.i, align 4
  %16 = lshr i64 %bf.load.i121, 1
  %shl.i122 = and i64 %16, 9223372032559808512
  %17 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %route_lo.i, align 8
  %conv2.i124 = zext i32 %18 to i64
  %or.i125 = or i64 %shl.i122, %conv2.i124
  %depth.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 1, i32 2
  %19 = ptrtoint ptr %depth.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %bf.load.i126 = load i32, ptr %depth.i, align 4
  %20 = lshr i32 %bf.load.i126, 6
  %mul.i = and i32 %20, 56
  %sh_prom.i = zext i32 %mul.i to i64
  %shr.i = lshr i64 %or.i125, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %conv1.i = and i32 %conv.i, 255
  %bf.lshr4.i = lshr i32 %bf.load.i126, 12
  %bf.clear5.i = and i32 %bf.lshr4.i, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1.i, i32 %bf.clear5.i)
  %cmp.i = icmp ugt i32 %conv1.i, %bf.clear5.i
  br i1 %cmp.i, label %do.end.i, label %if.end27.i, !prof !80

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.38, i32 noundef 538, i32 noundef 9, ptr noundef null) #6
  br label %tb_port_at.exit

if.end27.i:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %dev..i.i, i32 0, i32 2
  %21 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ports.i, align 4
  %arrayidx.i = getelementptr %struct.tb_port, ptr %22, i32 %conv1.i
  br label %tb_port_at.exit

tb_port_at.exit:                                  ; preds = %if.end27.i, %do.end.i
  %retval.0.i127 = phi ptr [ null, %do.end.i ], [ %arrayidx.i, %if.end27.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %23 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  %cap_usb4.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i127, i32 0, i32 7
  %24 = ptrtoint ptr %cap_usb4.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cap_usb4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i128 = icmp eq i32 %25, 0
  br i1 %tobool.not.i128, label %tb_port_at.exit.link_is_usb4.exit_crit_edge, label %if.end.i129

tb_port_at.exit.link_is_usb4.exit_crit_edge:      ; preds = %tb_port_at.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %link_is_usb4.exit

if.end.i129:                                      ; preds = %tb_port_at.exit
  %sw.i.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i127, i32 0, i32 1
  %26 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %sw.i.i, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %27, i32 0, i32 20
  %28 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %is_unplugged.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i.i, label %tb_port_read.exit.i, label %if.end.i129.link_is_usb4.exit_crit_edge

if.end.i129.link_is_usb4.exit_crit_edge:          ; preds = %if.end.i129
  call void @__sanitizer_cov_trace_pc() #8
  br label %link_is_usb4.exit

tb_port_read.exit.i:                              ; preds = %if.end.i129
  %add.i = add i32 %25, 18
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %27, i32 0, i32 5
  %30 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %27, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %34, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %35 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %35, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %27, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %37 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %retval.0.i127, i32 0, i32 9
  %38 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %39 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %33, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool2.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %tb_port_read.exit.i.link_is_usb4.exit_crit_edge

tb_port_read.exit.i.link_is_usb4.exit_crit_edge:  ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %link_is_usb4.exit

if.end4.i:                                        ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %val.i, align 4
  %and.i = and i32 %41, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool5.not.i = icmp eq i32 %and.i, 0
  br label %link_is_usb4.exit

link_is_usb4.exit:                                ; preds = %if.end4.i, %tb_port_read.exit.i.link_is_usb4.exit_crit_edge, %if.end.i129.link_is_usb4.exit_crit_edge, %tb_port_at.exit.link_is_usb4.exit_crit_edge
  %retval.0.i130 = phi i1 [ %tobool5.not.i, %if.end4.i ], [ false, %tb_port_at.exit.link_is_usb4.exit_crit_edge ], [ false, %tb_port_read.exit.i.link_is_usb4.exit_crit_edge ], [ false, %if.end.i129.link_is_usb4.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %link_usb4 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 14
  %frombool = zext i1 %retval.0.i130 to i8
  %42 = ptrtoint ptr %link_usb4 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %frombool, ptr %link_usb4, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_setup.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_setup, %if.then15)) #6
          to label %do.end [label %if.then15], !srcloc !82

if.then15:                                        ; preds = %link_is_usb4.exit
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %tb.i, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %48, i32 0, i32 44
  %49 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load.i132 = load i64, ptr %route_hi.i, align 4
  %50 = lshr i64 %bf.load.i132, 1
  %shl.i133 = and i64 %50, 9223372032559808512
  %51 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %route_lo.i, align 8
  %conv2.i135 = zext i32 %52 to i64
  %or.i136 = or i64 %shl.i133, %conv2.i135
  %53 = ptrtoint ptr %link_usb4 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %link_usb4, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool18.not = icmp eq i8 %54, 0
  %cond = select i1 %tobool18.not, ptr @.str.5, ptr @.str.4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_setup.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.3, i64 noundef %or.i136, ptr noundef nonnull %cond) #6
  br label %do.end

do.end:                                           ; preds = %if.then15, %link_is_usb4.exit
  %55 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %val, align 4
  %and = and i32 %56, 262144
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_setup.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_setup, %if.then43)) #6
          to label %do.end55 [label %if.then43], !srcloc !82

if.then43:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %and24 = and i32 %56, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %57 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tb.i, align 8
  %nhi45 = getelementptr inbounds %struct.tb, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %nhi45 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nhi45, align 4
  %pdev46 = getelementptr inbounds %struct.tb_nhi, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %pdev46 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev46, align 4
  %dev47 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %63 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %bf.load.i138 = load i64, ptr %route_hi.i, align 4
  %64 = lshr i64 %bf.load.i138, 1
  %shl.i139 = and i64 %64, 9223372032559808512
  %65 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %route_lo.i, align 8
  %conv2.i141 = zext i32 %66 to i64
  %or.i142 = or i64 %shl.i139, %conv2.i141
  %cond50 = select i1 %tobool25.not, ptr @.str.7, ptr @.str.8
  %cond52 = select i1 %tobool22.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_setup.__UNIQUE_ID_ddebug239, ptr noundef %dev47, ptr noundef nonnull @.str.6, i64 noundef %or.i142, ptr noundef nonnull %cond50, ptr noundef nonnull %cond52) #6
  br label %do.end55

do.end55:                                         ; preds = %if.then43, %do.end
  %67 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool.not.i144 = icmp eq i8 %68, 0
  br i1 %tobool.not.i144, label %tb_sw_read.exit156, label %do.end55.cleanup_crit_edge

do.end55.cleanup_crit_edge:                       ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit156:                               ; preds = %do.end55
  %69 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %tb.i, align 8
  %ctl.i146 = getelementptr inbounds %struct.tb, ptr %70, i32 0, i32 3
  %71 = ptrtoint ptr %ctl.i146 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %ctl.i146, align 8
  %73 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %73, i32 8)
  %bf.load.i.i148 = load i64, ptr %route_hi.i, align 4
  %74 = lshr i64 %bf.load.i.i148, 1
  %shl.i.i149 = and i64 %74, 9223372032559808512
  %75 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i151 = zext i32 %76 to i64
  %or.i.i152 = or i64 %shl.i.i149, %conv2.i.i151
  %call1.i153 = call i32 @tb_cfg_read(ptr noundef %72, ptr noundef nonnull %val, i64 noundef %or.i.i152, i32 noundef 0, i32 noundef 2, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i153)
  %tobool59.not = icmp eq i32 %call1.i153, 0
  br i1 %tobool59.not, label %if.end61, label %tb_sw_read.exit156.cleanup_crit_edge

tb_sw_read.exit156.cleanup_crit_edge:             ; preds = %tb_sw_read.exit156
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end61:                                         ; preds = %tb_sw_read.exit156
  %77 = ptrtoint ptr %link_usb4 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %link_usb4, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool64.not = icmp eq i8 %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %extract.t115 = icmp ne i32 %and, 0
  br i1 %tobool64.not, label %if.end61.if.end69_crit_edge, label %land.lhs.true65

if.end61.if.end69_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

land.lhs.true65:                                  ; preds = %if.end61
  %call66 = call ptr @tb_switch_find_port(ptr noundef %dev..i.i, i32 noundef 2097409) #6
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %land.lhs.true65.if.end69_crit_edge, label %if.then68

land.lhs.true65.if.end69_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end69

if.then68:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val, align 4
  %or = or i32 %80, 33554432
  store i32 %or, ptr %val, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %land.lhs.true65.if.end69_crit_edge, %if.end61.if.end69_crit_edge
  %xhci.0.off0 = phi i1 [ false, %if.then68 ], [ %extract.t115, %land.lhs.true65.if.end69_crit_edge ], [ %extract.t115, %if.end61.if.end69_crit_edge ]
  %call72 = call ptr @tb_switch_find_port(ptr noundef %dev..i.i, i32 noundef 1048833) #6
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end69.if.end80_crit_edge, label %if.then74

if.end69.if.end80_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then74:                                        ; preds = %if.end69
  %81 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %val, align 4
  %or75 = or i32 %82, 16777216
  store i32 %or75, ptr %val, align 4
  br i1 %xhci.0.off0, label %if.then77, label %if.then74.if.end80_crit_edge

if.then74.if.end80_crit_edge:                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then77:                                        ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #8
  %or78 = or i32 %82, 83886080
  %83 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or78, ptr %val, align 4
  br label %if.end80

if.end80:                                         ; preds = %if.then77, %if.then74.if.end80_crit_edge, %if.end69.if.end80_crit_edge
  %84 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %val, align 4
  %or82 = or i32 %85, -2139095040
  store i32 %or82, ptr %val, align 4
  %86 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i158 = icmp eq i8 %87, 0
  br i1 %tobool.not.i158, label %tb_sw_write.exit, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_write.exit:                                 ; preds = %if.end80
  %88 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %tb.i, align 8
  %ctl.i160 = getelementptr inbounds %struct.tb, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %ctl.i160 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ctl.i160, align 8
  %92 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %92, i32 8)
  %bf.load.i.i162 = load i64, ptr %route_hi.i, align 4
  %93 = lshr i64 %bf.load.i.i162, 1
  %shl.i.i163 = and i64 %93, 9223372032559808512
  %94 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i165 = zext i32 %95 to i64
  %or.i.i166 = or i64 %shl.i.i163, %conv2.i.i165
  %call1.i167 = call i32 @tb_cfg_write(ptr noundef %91, ptr noundef nonnull %val, i64 noundef %or.i.i166, i32 noundef 0, i32 noundef 2, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i167)
  %tobool84.not = icmp eq i32 %call1.i167, 0
  br i1 %tobool84.not, label %if.end86, label %tb_sw_write.exit.cleanup_crit_edge

tb_sw_write.exit.cleanup_crit_edge:               ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end86:                                         ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call87 = call i32 @tb_switch_wait_for_bit(ptr noundef %sw, i32 noundef 6, i32 noundef 33554432, i32 noundef 33554432, i32 noundef 50) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end86, %tb_sw_write.exit.cleanup_crit_edge, %if.end80.cleanup_crit_edge, %tb_sw_read.exit156.cleanup_crit_edge, %do.end55.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call87, %if.end86 ], [ 0, %entry.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i153, %tb_sw_read.exit156.cleanup_crit_edge ], [ %call1.i167, %tb_sw_write.exit.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %do.end55.cleanup_crit_edge ], [ -19, %if.end80.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @usb4_switch_check_wakes(ptr noundef %sw) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 12, i32 1
  %1 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %device_may_wakeup.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %sw, i32 0, i32 12, i32 6
  %2 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %3, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.cleanup_crit_edge, label %if.end

device_may_wakeup.exit.cleanup_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %device_may_wakeup.exit
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 8)
  %bf.load.i97 = load i64, ptr %route_hi.i, align 4
  %5 = lshr i64 %bf.load.i97, 1
  %shl.i = and i64 %5, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %6 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %7 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %if.end.if.end25_crit_edge, label %if.then2

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then2:                                         ; preds = %if.end
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %8 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i98 = icmp eq i8 %9, 0
  br i1 %tobool.not.i98, label %tb_sw_read.exit, label %if.then2.cleanup_crit_edge

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.then2
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %10 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl.i, align 8
  %call1.i = call i32 @tb_cfg_read(ptr noundef %13, ptr noundef nonnull %val, i64 noundef %or.i, i32 noundef 0, i32 noundef 2, i32 noundef 6, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool4.not = icmp eq i32 %call1.i, 0
  br i1 %tobool4.not, label %do.body, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %tb_sw_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_check_wakes.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_check_wakes, %if.then12)) #6
          to label %do.end [label %if.then12], !srcloc !82

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tb.i, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pdev, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %19, i32 0, i32 44
  %20 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %20, i32 8)
  %bf.load.i101 = load i64, ptr %route_hi.i, align 4
  %21 = lshr i64 %bf.load.i101, 1
  %shl.i102 = and i64 %21, 9223372032559808512
  %22 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %route_lo.i, align 8
  %conv2.i104 = zext i32 %23 to i64
  %or.i105 = or i64 %shl.i102, %conv2.i104
  %24 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %val, align 4
  %and = and i32 %25, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool15.not, ptr @.str.8, ptr @.str.7
  %and16 = and i32 %25, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %cond18 = select i1 %tobool17.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_check_wakes.__UNIQUE_ID_ddebug236, ptr noundef %dev13, ptr noundef nonnull @.str.36, i64 noundef %or.i105, ptr noundef nonnull %cond, ptr noundef nonnull %cond18) #6
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and22 = and i32 %27, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23 = icmp ne i32 %and22, 0
  br label %if.end25

if.end25:                                         ; preds = %do.end, %if.end.if.end25_crit_edge
  %wakeup.0.off0 = phi i1 [ %tobool23, %do.end ], [ false, %if.end.if.end25_crit_edge ]
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %28 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.0135 = getelementptr %struct.tb_port, ptr %29, i32 1
  %30 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load136 = load i32, ptr %max_port_number, align 4
  %bf.lshr137 = lshr i32 %bf.load136, 12
  %bf.clear138 = and i32 %bf.lshr137, 63
  %arrayidx27139 = getelementptr %struct.tb_port, ptr %29, i32 %bf.clear138
  %cmp.not140 = icmp ugt ptr %port.0135, %arrayidx27139
  br i1 %cmp.not140, label %if.end25.for.end_crit_edge, label %if.end25.for.body_crit_edge

if.end25.for.body_crit_edge:                      ; preds = %if.end25
  br label %for.body

if.end25.for.end_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end25.for.body_crit_edge
  %port.0143 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.0135, %if.end25.for.body_crit_edge ]
  %.pn142 = phi ptr [ %port.0143, %for.inc.for.body_crit_edge ], [ %29, %if.end25.for.body_crit_edge ]
  %wakeup.1.off0141 = phi i1 [ %wakeup.2.off0, %for.inc.for.body_crit_edge ], [ %wakeup.0.off0, %if.end25.for.body_crit_edge ]
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn142, i32 1, i32 1
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
  %cmp.i.i = icmp eq ptr %arrayidx.i.i.i, %port.0143
  br i1 %cmp.i.i, label %for.body.for.inc_crit_edge, label %tb_is_upstream_port.exit.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_is_upstream_port.exit.i:                       ; preds = %for.body
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn142, i32 1, i32 12
  %36 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %37, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc_crit_edge, label %if.end.i107

tb_is_upstream_port.exit.i.for.inc_crit_edge:     ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end.i107:                                      ; preds = %tb_is_upstream_port.exit.i
  %remote.i = getelementptr %struct.tb_port, ptr %.pn142, i32 1, i32 2
  %38 = ptrtoint ptr %remote.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %remote.i, align 4
  %tobool.not.i106 = icmp eq ptr %39, null
  br i1 %tobool.not.i106, label %if.end.i107.for.inc_crit_edge, label %if.end2.i

if.end.i107.for.inc_crit_edge:                    ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end2.i:                                        ; preds = %if.end.i107
  %tobool3.not.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i, label %if.end2.i.if.end30_crit_edge, label %land.lhs.true.i

if.end2.i.if.end30_crit_edge:                     ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true.i:                                  ; preds = %if.end2.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn142, i32 1, i32 13
  %40 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %bf.load.i108 = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i108)
  %tobool4.not.i = icmp sgt i8 %bf.load.i108, -1
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end30_crit_edge, label %land.lhs.true.i.for.inc_crit_edge

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i.if.end30_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true.i.if.end30_crit_edge, %if.end2.i.if.end30_crit_edge
  %is_unplugged.i110 = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 20
  %41 = ptrtoint ptr %is_unplugged.i110 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_unplugged.i110, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i111 = icmp eq i8 %42, 0
  br i1 %tobool.not.i111, label %tb_port_read.exit, label %if.end30.for.end_crit_edge

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

tb_port_read.exit:                                ; preds = %if.end30
  %cap_usb4 = getelementptr %struct.tb_port, ptr %.pn142, i32 1, i32 7
  %43 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cap_usb4, align 4
  %add = add i32 %44, 18
  %tb.i112 = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 5
  %45 = ptrtoint ptr %tb.i112 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tb.i112, align 8
  %ctl.i113 = getelementptr inbounds %struct.tb, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %ctl.i113 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctl.i113, align 8
  %route_hi.i.i114 = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %route_hi.i.i114 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load.i.i115 = load i64, ptr %route_hi.i.i114, align 4
  %50 = lshr i64 %bf.load.i.i115, 1
  %shl.i.i116 = and i64 %50, 9223372032559808512
  %route_lo.i.i117 = getelementptr inbounds %struct.tb_switch, ptr %32, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %route_lo.i.i117 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %route_lo.i.i117, align 8
  %conv2.i.i118 = zext i32 %52 to i64
  %or.i.i119 = or i64 %shl.i.i116, %conv2.i.i118
  %port3.i = getelementptr %struct.tb_port, ptr %.pn142, i32 1, i32 9
  %53 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %54 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %48, ptr noundef nonnull %val, i64 noundef %or.i.i119, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool32.not = icmp eq i32 %call4.i, 0
  br i1 %tobool32.not, label %do.body35, label %tb_port_read.exit.for.end_crit_edge

tb_port_read.exit.for.end_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

do.body35:                                        ; preds = %tb_port_read.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_check_wakes.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_check_wakes, %if.then48)) #6
          to label %do.end62 [label %if.then48], !srcloc !82

if.then48:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %sw.i.i, align 4
  %tb50 = getelementptr inbounds %struct.tb_switch, ptr %56, i32 0, i32 5
  %57 = ptrtoint ptr %tb50 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tb50, align 8
  %nhi51 = getelementptr inbounds %struct.tb, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %nhi51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %nhi51, align 4
  %pdev52 = getelementptr inbounds %struct.tb_nhi, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %pdev52 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pdev52, align 4
  %dev53 = getelementptr inbounds %struct.pci_dev, ptr %62, i32 0, i32 44
  %route_hi.i122 = getelementptr inbounds %struct.tb_switch, ptr %56, i32 0, i32 1, i32 4
  %63 = ptrtoint ptr %route_hi.i122 to i32
  call void @__asan_loadN_noabort(i32 %63, i32 8)
  %bf.load.i123 = load i64, ptr %route_hi.i122, align 4
  %64 = lshr i64 %bf.load.i123, 1
  %shl.i124 = and i64 %64, 9223372032559808512
  %route_lo.i125 = getelementptr inbounds %struct.tb_switch, ptr %56, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %route_lo.i125 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %route_lo.i125, align 8
  %conv2.i126 = zext i32 %66 to i64
  %or.i127 = or i64 %shl.i124, %conv2.i126
  %67 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %port3.i, align 4
  %conv = zext i8 %68 to i32
  %69 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %val, align 4
  %and57 = and i32 %70, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  %cond59 = select i1 %tobool58.not, ptr @.str.8, ptr @.str.7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_check_wakes.__UNIQUE_ID_ddebug237, ptr noundef %dev53, ptr noundef nonnull @.str.37, i64 noundef %or.i127, i32 noundef %conv, ptr noundef nonnull %cond59) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then48, %do.body35
  %71 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val, align 4
  %and65 = and i32 %72, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp ne i32 %and65, 0
  %spec.select = select i1 %tobool66.not, i1 true, i1 %wakeup.1.off0141
  br label %for.inc

for.inc:                                          ; preds = %do.end62, %land.lhs.true.i.for.inc_crit_edge, %if.end.i107.for.inc_crit_edge, %tb_is_upstream_port.exit.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %wakeup.2.off0 = phi i1 [ %spec.select, %do.end62 ], [ %wakeup.1.off0141, %tb_is_upstream_port.exit.i.for.inc_crit_edge ], [ %wakeup.1.off0141, %if.end.i107.for.inc_crit_edge ], [ %wakeup.1.off0141, %land.lhs.true.i.for.inc_crit_edge ], [ %wakeup.1.off0141, %for.body.for.inc_crit_edge ]
  %port.0 = getelementptr %struct.tb_port, ptr %port.0143, i32 1
  %73 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ports, align 4
  %75 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %75)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx27 = getelementptr %struct.tb_port, ptr %74, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx27
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %tb_port_read.exit.for.end_crit_edge, %if.end30.for.end_crit_edge, %if.end25.for.end_crit_edge
  %wakeup.1.off0.lcssa = phi i1 [ %wakeup.0.off0, %if.end25.for.end_crit_edge ], [ %wakeup.1.off0141, %if.end30.for.end_crit_edge ], [ %wakeup.1.off0141, %tb_port_read.exit.for.end_crit_edge ], [ %wakeup.2.off0, %for.inc.for.end_crit_edge ]
  br i1 %wakeup.1.off0.lcssa, label %if.then70, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @pm_wakeup_dev_event(ptr noundef %sw, i32 noundef 0, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %for.end.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %device_may_wakeup.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tb_switch_find_port(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_switch_wait_for_bit(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_read_uid(ptr nocapture noundef readonly %sw, ptr noundef %uid) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %0 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.tb_sw_read.exit_crit_edge

entry.tb_sw_read.exit_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_sw_read.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %2 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %6 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %6, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %7 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %7, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %8 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %9 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = tail call i32 @tb_cfg_read(ptr noundef %5, ptr noundef %uid, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 7, i32 noundef 2) #6
  br label %tb_sw_read.exit

tb_sw_read.exit:                                  ; preds = %if.end.i, %entry.tb_sw_read.exit_crit_edge
  %retval.0.i = phi i32 [ %call1.i, %if.end.i ], [ -19, %entry.tb_sw_read.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_drom_read(ptr noundef %sw, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tb_nvm_read_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @usb4_switch_drom_read_block, ptr noundef %sw) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_read_data(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb4_switch_drom_read_block(ptr noundef %data, i32 noundef %dwaddress, ptr noundef %buf, i32 noundef %dwords) #0 align 64 {
entry:
  %status = alloca i8, align 1
  %metadata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %shl = shl i32 %dwords, 15
  %and = and i32 %shl, 1015808
  %shl1 = shl i32 %dwaddress, 2
  %and2 = and i32 %shl1, 32764
  %or = or i32 %and, %and2
  %1 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or, ptr %metadata, align 4
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %data, i16 noundef zeroext 36, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef %buf, i32 noundef %dwords) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool3.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @usb4_switch_lane_bonding_possible(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %1 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ports.i, align 4
  %upstream_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %3 = ptrtoint ptr %upstream_port_number.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %bf.load.i = load i32, ptr %upstream_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 18
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %sw.i = getelementptr %struct.tb_port, ptr %2, i32 %bf.clear.i, i32 1
  %4 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %cap_usb4 = getelementptr %struct.tb_port, ptr %2, i32 %bf.clear.i, i32 7
  %8 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cap_usb4, align 4
  %add = add i32 %9, 18
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 5
  %10 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 4
  %14 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %15 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %15, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %5, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %17 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr %struct.tb_port, ptr %2, i32 %bf.clear.i, i32 9
  %18 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %19 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %13, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  %and = and i32 %21, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2 = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool2, %if.end ], [ false, %tb_port_read.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_set_wake(ptr nocapture noundef readonly %sw, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !81
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %5 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.0174 = getelementptr %struct.tb_port, ptr %6, i32 1
  %7 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %7)
  %bf.load175 = load i32, ptr %max_port_number, align 4
  %bf.lshr176 = lshr i32 %bf.load175, 12
  %bf.clear177 = and i32 %bf.lshr176, 63
  %arrayidx2178 = getelementptr %struct.tb_port, ptr %6, i32 %bf.clear177
  %cmp.not179 = icmp ugt ptr %port.0174, %arrayidx2178
  br i1 %cmp.not179, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  %and19 = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %and26 = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26)
  %tobool27.not = icmp eq i32 %and26, 0
  %and33 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %port.0182 = phi ptr [ %port.0174, %for.body.lr.ph ], [ %port.0, %for.inc.for.body_crit_edge ]
  %.pn180 = phi ptr [ %6, %for.body.lr.ph ], [ %port.0182, %for.inc.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %port.0182, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %land.lhs.true.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %port1.i = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 9
  %8 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %port1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not.i = icmp eq i8 %9, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i
  %type.i = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 0, i32 2
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 12)
  %bf.load.i108 = load i96, ptr %type.i, align 4
  %11 = and i96 %bf.load.i108, 18446742974197923840
  %cmp.i = icmp eq i96 %11, 1099511627776
  br i1 %cmp.i, label %if.end, label %tb_port_is_null.exit.for.inc_crit_edge

tb_port_is_null.exit.for.inc_crit_edge:           ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %tb_port_is_null.exit
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %sw.i = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 1
  %12 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sw.i, align 4
  %ports.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %ports.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ports.i.i, align 4
  %upstream_port_number.i.i = getelementptr inbounds %struct.tb_switch, ptr %13, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %upstream_port_number.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %bf.load.i.i = load i32, ptr %upstream_port_number.i.i, align 4
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 18
  %bf.clear.i.i = and i32 %bf.lshr.i.i, 63
  %arrayidx.i.i = getelementptr %struct.tb_port, ptr %15, i32 %bf.clear.i.i
  %cmp.i109 = icmp eq ptr %arrayidx.i.i, %port.0182
  br i1 %cmp.i109, label %land.lhs.true.for.inc_crit_edge, label %tb_is_upstream_port.exit

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_is_upstream_port.exit:                         ; preds = %land.lhs.true
  %dual_link_port.i = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 12
  %17 = ptrtoint ptr %dual_link_port.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dual_link_port.i, align 4
  %cmp1.i = icmp eq ptr %18, %arrayidx.i.i
  br i1 %cmp1.i, label %tb_is_upstream_port.exit.for.inc_crit_edge, label %tb_is_upstream_port.exit.if.end6_crit_edge

tb_is_upstream_port.exit.if.end6_crit_edge:       ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

tb_is_upstream_port.exit.for.inc_crit_edge:       ; preds = %tb_is_upstream_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %tb_is_upstream_port.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %cap_usb4 = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 7
  %19 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cap_usb4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool7.not = icmp eq i32 %20, 0
  br i1 %tobool7.not, label %if.end6.for.inc_crit_edge, label %if.end9

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end9:                                          ; preds = %if.end6
  %sw.i110 = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 1
  %21 = ptrtoint ptr %sw.i110 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw.i110, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i111 = icmp eq i8 %24, 0
  br i1 %tobool.not.i111, label %tb_port_read.exit, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end9
  %add = add i32 %20, 19
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i.i112 = load i64, ptr %route_hi.i.i, align 4
  %30 = lshr i64 %bf.load.i.i112, 1
  %shl.i.i = and i64 %30, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %32 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %33 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port1.i, align 4
  %conv.i = zext i8 %34 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %28, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool12.not = icmp eq i32 %call4.i, 0
  br i1 %tobool12.not, label %if.end14, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %tb_port_read.exit
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and = and i32 %36, -458753
  store i32 %and, ptr %val, align 4
  %37 = ptrtoint ptr %sw.i110 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %sw.i110, align 4
  %ports.i.i114 = getelementptr inbounds %struct.tb_switch, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %ports.i.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ports.i.i114, align 4
  %upstream_port_number.i.i115 = getelementptr inbounds %struct.tb_switch, ptr %38, i32 0, i32 1, i32 2
  %41 = ptrtoint ptr %upstream_port_number.i.i115 to i32
  call void @__asan_load4_noabort(i32 %41)
  %bf.load.i.i116 = load i32, ptr %upstream_port_number.i.i115, align 4
  %bf.lshr.i.i117 = lshr i32 %bf.load.i.i116, 18
  %bf.clear.i.i118 = and i32 %bf.lshr.i.i117, 63
  %arrayidx.i.i119 = getelementptr %struct.tb_port, ptr %40, i32 %bf.clear.i.i118
  %cmp.i120 = icmp eq ptr %arrayidx.i.i119, %port.0182
  br i1 %cmp.i120, label %if.end14.if.then16_crit_edge, label %tb_is_upstream_port.exit124

if.end14.if.then16_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

tb_is_upstream_port.exit124:                      ; preds = %if.end14
  %dual_link_port.i121 = getelementptr %struct.tb_port, ptr %.pn180, i32 1, i32 12
  %42 = ptrtoint ptr %dual_link_port.i121 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dual_link_port.i121, align 4
  %cmp1.i122 = icmp eq ptr %43, %arrayidx.i.i119
  br i1 %cmp1.i122, label %tb_is_upstream_port.exit124.if.then16_crit_edge, label %if.else

tb_is_upstream_port.exit124.if.then16_crit_edge:  ; preds = %tb_is_upstream_port.exit124
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %tb_is_upstream_port.exit124.if.then16_crit_edge, %if.end14.if.then16_crit_edge
  %or = or i32 %and, 262144
  %44 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %val, align 4
  br label %if.end40

if.else:                                          ; preds = %tb_is_upstream_port.exit124
  %and17 = and i32 %36, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %tobool18.not.not = xor i1 %tobool18.not, true
  %brmerge = select i1 %tobool20.not, i1 true, i1 %tobool18.not.not
  br i1 %brmerge, label %if.else.if.end25_crit_edge, label %if.then23

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or24 = or i32 %and, 65536
  %45 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or24, ptr %val, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.else.if.end25_crit_edge
  %brmerge106 = select i1 %tobool27.not, i1 true, i1 %tobool18.not
  br i1 %brmerge106, label %if.end25.if.end32_crit_edge, label %if.then30

if.end25.if.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %val, align 4
  %or31 = or i32 %47, 131072
  store i32 %or31, ptr %val, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end25.if.end32_crit_edge
  %brmerge107 = select i1 %tobool34.not, i1 true, i1 %tobool18.not
  br i1 %brmerge107, label %if.end32.if.end40_crit_edge, label %if.then37

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %val, align 4
  %or38 = or i32 %49, 262144
  store i32 %or38, ptr %val, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end32.if.end40_crit_edge, %if.then16
  %50 = ptrtoint ptr %sw.i110 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %sw.i110, align 4
  %is_unplugged.i126 = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %is_unplugged.i126 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %is_unplugged.i126, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool.not.i127 = icmp eq i8 %53, 0
  br i1 %tobool.not.i127, label %tb_port_write.exit, label %if.end40.cleanup_crit_edge

if.end40.cleanup_crit_edge:                       ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_write.exit:                               ; preds = %if.end40
  %54 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cap_usb4, align 4
  %add42 = add i32 %55, 19
  %tb.i128 = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 5
  %56 = ptrtoint ptr %tb.i128 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %tb.i128, align 8
  %ctl.i129 = getelementptr inbounds %struct.tb, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %ctl.i129 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ctl.i129, align 8
  %route_hi.i.i130 = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 4
  %60 = ptrtoint ptr %route_hi.i.i130 to i32
  call void @__asan_loadN_noabort(i32 %60, i32 8)
  %bf.load.i.i131 = load i64, ptr %route_hi.i.i130, align 4
  %61 = lshr i64 %bf.load.i.i131, 1
  %shl.i.i132 = and i64 %61, 9223372032559808512
  %route_lo.i.i133 = getelementptr inbounds %struct.tb_switch, ptr %51, i32 0, i32 1, i32 3
  %62 = ptrtoint ptr %route_lo.i.i133 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %route_lo.i.i133, align 8
  %conv2.i.i134 = zext i32 %63 to i64
  %or.i.i135 = or i64 %shl.i.i132, %conv2.i.i134
  %64 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %port1.i, align 4
  %conv.i137 = zext i8 %65 to i32
  %call4.i138 = call i32 @tb_cfg_write(ptr noundef %59, ptr noundef nonnull %val, i64 noundef %or.i.i135, i32 noundef %conv.i137, i32 noundef 1, i32 noundef %add42, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i138)
  %tobool44.not = icmp eq i32 %call4.i138, 0
  br i1 %tobool44.not, label %tb_port_write.exit.for.inc_crit_edge, label %tb_port_write.exit.cleanup_crit_edge

tb_port_write.exit.cleanup_crit_edge:             ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_write.exit.for.inc_crit_edge:             ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %tb_port_write.exit.for.inc_crit_edge, %if.end6.for.inc_crit_edge, %tb_is_upstream_port.exit.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %tb_port_is_null.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.0182, i32 1
  %66 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ports, align 4
  %68 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %68)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %67, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx2
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool47.not = icmp eq i64 %or.i, 0
  br i1 %tobool47.not, label %for.end.if.end73_crit_edge, label %if.then48

for.end.if.end73_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.then48:                                        ; preds = %for.end
  %is_unplugged.i141 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %69 = ptrtoint ptr %is_unplugged.i141 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %is_unplugged.i141, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i142 = icmp eq i8 %70, 0
  br i1 %tobool.not.i142, label %tb_sw_read.exit, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.then48
  %tb.i143 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %71 = ptrtoint ptr %tb.i143 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tb.i143, align 8
  %ctl.i144 = getelementptr inbounds %struct.tb, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %ctl.i144 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ctl.i144, align 8
  %75 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %75, i32 8)
  %bf.load.i.i146 = load i64, ptr %route_hi.i, align 4
  %76 = lshr i64 %bf.load.i.i146, 1
  %shl.i.i147 = and i64 %76, 9223372032559808512
  %77 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i149 = zext i32 %78 to i64
  %or.i.i150 = or i64 %shl.i.i147, %conv2.i.i149
  %call1.i = call i32 @tb_cfg_read(ptr noundef %74, ptr noundef nonnull %val, i64 noundef %or.i.i150, i32 noundef 0, i32 noundef 2, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool50.not = icmp eq i32 %call1.i, 0
  br i1 %tobool50.not, label %if.end52, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end52:                                         ; preds = %tb_sw_read.exit
  %79 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %val, align 4
  %and53 = and i32 %80, -15
  %and54 = lshr i32 %flags, 1
  %81 = and i32 %and54, 4
  %82 = or i32 %and53, %81
  %and59 = lshr i32 %flags, 3
  %83 = and i32 %and59, 2
  %84 = or i32 %83, %82
  store i32 %84, ptr %val, align 4
  %and64 = and i32 %flags, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end52.if.end68_crit_edge, label %if.then66

if.end52.if.end68_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end68

if.then66:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #8
  %85 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val, align 4
  %or67 = or i32 %86, 8
  store i32 %or67, ptr %val, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %if.end52.if.end68_crit_edge
  %87 = ptrtoint ptr %is_unplugged.i141 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %is_unplugged.i141, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %88)
  %tobool.not.i154 = icmp eq i8 %88, 0
  br i1 %tobool.not.i154, label %tb_sw_write.exit, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_write.exit:                                 ; preds = %if.end68
  %89 = ptrtoint ptr %tb.i143 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %tb.i143, align 8
  %ctl.i156 = getelementptr inbounds %struct.tb, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %ctl.i156 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ctl.i156, align 8
  %93 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 8)
  %bf.load.i.i158 = load i64, ptr %route_hi.i, align 4
  %94 = lshr i64 %bf.load.i.i158, 1
  %shl.i.i159 = and i64 %94, 9223372032559808512
  %95 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %route_lo.i, align 8
  %conv2.i.i161 = zext i32 %96 to i64
  %or.i.i162 = or i64 %shl.i.i159, %conv2.i.i161
  %call1.i163 = call i32 @tb_cfg_write(ptr noundef %92, ptr noundef nonnull %val, i64 noundef %or.i.i162, i32 noundef 0, i32 noundef 2, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i163)
  %tobool70.not = icmp eq i32 %call1.i163, 0
  br i1 %tobool70.not, label %tb_sw_write.exit.if.end73_crit_edge, label %tb_sw_write.exit.cleanup_crit_edge

tb_sw_write.exit.cleanup_crit_edge:               ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_write.exit.if.end73_crit_edge:              ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end73

if.end73:                                         ; preds = %tb_sw_write.exit.if.end73_crit_edge, %for.end.if.end73_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %tb_sw_write.exit.cleanup_crit_edge, %if.end68.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %tb_port_write.exit.cleanup_crit_edge, %if.end40.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end73 ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i163, %tb_sw_write.exit.cleanup_crit_edge ], [ -19, %if.then48.cleanup_crit_edge ], [ -19, %if.end68.cleanup_crit_edge ], [ -19, %if.end40.cleanup_crit_edge ], [ -19, %if.end9.cleanup_crit_edge ], [ %call4.i138, %tb_port_write.exit.cleanup_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_set_sleep(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %1 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %entry
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %3 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %7 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %8 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %8, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %10 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %6, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %if.end, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_sw_read.exit
  %11 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %val, align 4
  %or = or i32 %12, 1
  store i32 %or, ptr %val, align 4
  %13 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i13 = icmp eq i8 %14, 0
  br i1 %tobool.not.i13, label %tb_sw_write.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_write.exit:                                 ; preds = %if.end
  %15 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %tb.i, align 8
  %ctl.i15 = getelementptr inbounds %struct.tb, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %ctl.i15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctl.i15, align 8
  %19 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %bf.load.i.i17 = load i64, ptr %route_hi.i.i, align 4
  %20 = lshr i64 %bf.load.i.i17, 1
  %shl.i.i18 = and i64 %20, 9223372032559808512
  %21 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i20 = zext i32 %22 to i64
  %or.i.i21 = or i64 %shl.i.i18, %conv2.i.i20
  %call1.i22 = call i32 @tb_cfg_write(ptr noundef %18, ptr noundef nonnull %val, i64 noundef %or.i.i21, i32 noundef 0, i32 noundef 2, i32 noundef 5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i22)
  %tobool2.not = icmp eq i32 %call1.i22, 0
  br i1 %tobool2.not, label %if.end4, label %tb_sw_write.exit.cleanup_crit_edge

tb_sw_write.exit.cleanup_crit_edge:               ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_sw_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = call i32 @tb_switch_wait_for_bit(ptr noundef %sw, i32 noundef 6, i32 noundef 1, i32 noundef 1, i32 noundef 500) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %tb_sw_write.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ %call1.i22, %tb_sw_write.exit.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_nvm_sector_size(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %metadata = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %metadata, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %status, align 1, !annotation !81
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 37, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp eq i8 %3, 2
  %cond = select i1 %cmp, i32 -95, i32 -5
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %metadata, align 4
  %and = and i32 %5, 16777215
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.then2 ], [ %and, %if.end4 ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_nvm_read(ptr noundef %sw, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tb_nvm_read_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @usb4_switch_nvm_read_block, ptr noundef %sw) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb4_switch_nvm_read_block(ptr noundef %data, i32 noundef %dwaddress, ptr noundef %buf, i32 noundef %dwords) #0 align 64 {
entry:
  %status = alloca i8, align 1
  %metadata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %shl = shl i32 %dwords, 24
  %and = and i32 %shl, 251658240
  %shl1 = shl i32 %dwaddress, 2
  %and2 = and i32 %shl1, 16777212
  %or = or i32 %and, %and2
  %1 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %or, ptr %metadata, align 4
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %data, i16 noundef zeroext 34, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef %buf, i32 noundef %dwords) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool3.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_nvm_set_offset(ptr noundef %sw, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  %metadata = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status, align 1
  %and = and i32 %address, 16777212
  %1 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and, ptr %metadata, align 4
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 35, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  %cond = select i1 %tobool1.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_nvm_write(ptr noundef %sw, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %metadata.i = alloca i32, align 4
  %status.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata.i) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status.i) #6
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %status.i, align 1
  %and.i = and i32 %address, 16777212
  %1 = ptrtoint ptr %metadata.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and.i, ptr %metadata.i, align 4
  %call.i.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 35, ptr noundef nonnull %metadata.i, ptr noundef nonnull %status.i, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.usb4_switch_nvm_set_offset.exit.thread_crit_edge

entry.usb4_switch_nvm_set_offset.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_switch_nvm_set_offset.exit.thread

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %status.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %status.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not.i = icmp eq i8 %3, 0
  br i1 %tobool1.not.i, label %if.end, label %if.end.i.usb4_switch_nvm_set_offset.exit.thread_crit_edge

if.end.i.usb4_switch_nvm_set_offset.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_switch_nvm_set_offset.exit.thread

usb4_switch_nvm_set_offset.exit.thread:           ; preds = %if.end.i.usb4_switch_nvm_set_offset.exit.thread_crit_edge, %entry.usb4_switch_nvm_set_offset.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call.i.i, %entry.usb4_switch_nvm_set_offset.exit.thread_crit_edge ], [ -5, %if.end.i.usb4_switch_nvm_set_offset.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata.i) #6
  %call1 = call i32 @tb_nvm_write_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @usb4_switch_nvm_write_next_block, ptr noundef %sw) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %usb4_switch_nvm_set_offset.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ %retval.0.i.ph, %usb4_switch_nvm_set_offset.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_nvm_write_data(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb4_switch_nvm_write_next_block(ptr noundef %data, i32 noundef %dwaddress, ptr noundef %buf, i32 noundef %dwords) #0 align 64 {
entry:
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %0 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %status, align 1, !annotation !81
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %data, i16 noundef zeroext 32, ptr noundef null, ptr noundef nonnull %status, ptr noundef %buf, i32 noundef %dwords, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  %cond = select i1 %tobool1.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_nvm_authenticate(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 33, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %0 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i, label %sw.default [
    i32 -13, label %entry.cleanup_crit_edge
    i32 -107, label %entry.cleanup_crit_edge2
    i32 -110, label %entry.cleanup_crit_edge3
  ]

entry.cleanup_crit_edge3:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge2:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge2, %entry.cleanup_crit_edge3
  %retval.0 = phi i32 [ %call.i, %sw.default ], [ 0, %entry.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge2 ], [ 0, %entry.cleanup_crit_edge3 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_nvm_authenticate_status(ptr noundef %sw, ptr noundef %status) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb, align 8
  %cm_ops1 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %val, align 4, !annotation !81
  %usb4_switch_nvm_authenticate_status = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 24
  %5 = ptrtoint ptr %usb4_switch_nvm_authenticate_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %usb4_switch_nvm_authenticate_status, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 %6(ptr noundef %sw, ptr noundef %status) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp.not = icmp eq i32 %call, -95
  br i1 %cmp.not, label %if.then.if.end4_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %7 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %tb_sw_read.exit, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_sw_read.exit:                                  ; preds = %if.end4
  %9 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tb, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %14 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %14, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %16 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %12, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool6.not = icmp eq i32 %call1.i, 0
  br i1 %tobool6.not, label %if.end8, label %tb_sw_read.exit.cleanup_crit_edge

tb_sw_read.exit.cleanup_crit_edge:                ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %tb_sw_read.exit
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %conv9 = and i32 %18, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %conv9)
  %cmp10 = icmp eq i32 %conv9, 33
  br i1 %cmp10, label %if.then12, label %if.end8.if.end22_crit_edge

if.end8.if.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %18)
  %tobool14.not = icmp sgt i32 %18, -1
  br i1 %tobool14.not, label %if.end16, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  %and17 = and i32 %18, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %and21 = lshr i32 %18, 24
  %shr = and i32 %and21, 63
  br label %if.end22

if.end22:                                         ; preds = %if.end20, %if.end8.if.end22_crit_edge
  %storemerge = phi i32 [ %shr, %if.end20 ], [ 0, %if.end8.if.end22_crit_edge ]
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %storemerge, ptr %status, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end16.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %tb_sw_read.exit.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end22 ], [ %call, %if.then.cleanup_crit_edge ], [ %call1.i, %tb_sw_read.exit.cleanup_crit_edge ], [ -16, %if.then12.cleanup_crit_edge ], [ -95, %if.end16.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_credits_init(ptr noundef %sw) local_unnamed_addr #0 align 64 {
entry:
  %data = alloca [16 x i32], align 4
  %metadata = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %data) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %metadata, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %1 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %status, align 1
  %2 = call ptr @memset(ptr %data, i32 0, i32 64)
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 51, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef nonnull %data, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not = icmp eq i8 %4, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %metadata, align 4
  %and = and i32 %6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %and)
  %cmp = icmp ugt i32 %and, 16
  br i1 %cmp, label %do.end, label %if.end28, !prof !80

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 701, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then40)) #6
          to label %do.end44 [label %if.then40], !srcloc !82

if.then40:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %7 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb, align 8
  %nhi = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %nhi to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %nhi, align 4
  %pdev = getelementptr inbounds %struct.tb_nhi, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %12, i32 0, i32 44
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %bf.load.i = load i64, ptr %route_hi.i, align 4
  %14 = lshr i64 %bf.load.i, 1
  %shl.i = and i64 %14, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %16 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug240, ptr noundef %dev, ptr noundef nonnull @.str.10, i64 noundef %or.i) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp47637.not = icmp eq i32 %and, 0
  br i1 %cmp47637.not, label %do.end44.for.end_crit_edge, label %for.body.lr.ph

do.end44.for.end_crit_edge:                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end44
  %tb180 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %route_hi.i530 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %route_lo.i533 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  br label %for.body

for.body:                                         ; preds = %sw.epilog.for.body_crit_edge, %for.body.lr.ph
  %max_usb3.0643 = phi i32 [ -1, %for.body.lr.ph ], [ %max_usb3.1, %sw.epilog.for.body_crit_edge ]
  %min_dp_aux.0642 = phi i32 [ -1, %for.body.lr.ph ], [ %min_dp_aux.1, %sw.epilog.for.body_crit_edge ]
  %min_dp_main.0641 = phi i32 [ -1, %for.body.lr.ph ], [ %min_dp_main.1, %sw.epilog.for.body_crit_edge ]
  %max_pcie.0640 = phi i32 [ -1, %for.body.lr.ph ], [ %max_pcie.1, %sw.epilog.for.body_crit_edge ]
  %max_dma.0639 = phi i32 [ -1, %for.body.lr.ph ], [ %max_dma.1, %sw.epilog.for.body_crit_edge ]
  %i.0638 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sw.epilog.for.body_crit_edge ]
  %arrayidx = getelementptr [16 x i32], ptr %data, i32 0, i32 %i.0638
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %shr = lshr i32 %18, 16
  %conv52 = and i32 %18, 65535
  %trunc = trunc i32 %18 to i16
  %19 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.39)
  switch i16 %trunc, label %do.body192 [
    i16 1, label %do.body53
    i16 2, label %do.body81
    i16 3, label %do.body109
    i16 4, label %do.body137
    i16 5, label %do.body165
  ]

do.body53:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then67)) #6
          to label %sw.epilog [label %if.then67], !srcloc !82

if.then67:                                        ; preds = %do.body53
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %tb180 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tb180, align 8
  %nhi69 = getelementptr inbounds %struct.tb, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %nhi69 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %nhi69, align 4
  %pdev70 = getelementptr inbounds %struct.tb_nhi, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pdev70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pdev70, align 4
  %dev71 = getelementptr inbounds %struct.pci_dev, ptr %25, i32 0, i32 44
  %26 = ptrtoint ptr %route_hi.i530 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 8)
  %bf.load.i507 = load i64, ptr %route_hi.i530, align 4
  %27 = lshr i64 %bf.load.i507, 1
  %shl.i508 = and i64 %27, 9223372032559808512
  %28 = ptrtoint ptr %route_lo.i533 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %route_lo.i533, align 8
  %conv2.i510 = zext i32 %29 to i64
  %or.i511 = or i64 %shl.i508, %conv2.i510
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug241, ptr noundef %dev71, ptr noundef nonnull @.str.11, i64 noundef %or.i511, i32 noundef %shr) #6
  br label %sw.epilog

do.body81:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then95)) #6
          to label %sw.epilog [label %if.then95], !srcloc !82

if.then95:                                        ; preds = %do.body81
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %tb180 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tb180, align 8
  %nhi97 = getelementptr inbounds %struct.tb, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %nhi97 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %nhi97, align 4
  %pdev98 = getelementptr inbounds %struct.tb_nhi, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %pdev98 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pdev98, align 4
  %dev99 = getelementptr inbounds %struct.pci_dev, ptr %35, i32 0, i32 44
  %36 = ptrtoint ptr %route_hi.i530 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 8)
  %bf.load.i513 = load i64, ptr %route_hi.i530, align 4
  %37 = lshr i64 %bf.load.i513, 1
  %shl.i514 = and i64 %37, 9223372032559808512
  %38 = ptrtoint ptr %route_lo.i533 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %route_lo.i533, align 8
  %conv2.i516 = zext i32 %39 to i64
  %or.i517 = or i64 %shl.i514, %conv2.i516
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug242, ptr noundef %dev99, ptr noundef nonnull @.str.12, i64 noundef %or.i517, i32 noundef %shr) #6
  br label %sw.epilog

do.body109:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then123)) #6
          to label %sw.epilog [label %if.then123], !srcloc !82

if.then123:                                       ; preds = %do.body109
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %tb180 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tb180, align 8
  %nhi125 = getelementptr inbounds %struct.tb, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %nhi125 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %nhi125, align 4
  %pdev126 = getelementptr inbounds %struct.tb_nhi, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %pdev126 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdev126, align 4
  %dev127 = getelementptr inbounds %struct.pci_dev, ptr %45, i32 0, i32 44
  %46 = ptrtoint ptr %route_hi.i530 to i32
  call void @__asan_loadN_noabort(i32 %46, i32 8)
  %bf.load.i519 = load i64, ptr %route_hi.i530, align 4
  %47 = lshr i64 %bf.load.i519, 1
  %shl.i520 = and i64 %47, 9223372032559808512
  %48 = ptrtoint ptr %route_lo.i533 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %route_lo.i533, align 8
  %conv2.i522 = zext i32 %49 to i64
  %or.i523 = or i64 %shl.i520, %conv2.i522
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug243, ptr noundef %dev127, ptr noundef nonnull @.str.13, i64 noundef %or.i523, i32 noundef %shr) #6
  br label %sw.epilog

do.body137:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then151)) #6
          to label %sw.epilog [label %if.then151], !srcloc !82

if.then151:                                       ; preds = %do.body137
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %tb180 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %tb180, align 8
  %nhi153 = getelementptr inbounds %struct.tb, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %nhi153 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %nhi153, align 4
  %pdev154 = getelementptr inbounds %struct.tb_nhi, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %pdev154 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %pdev154, align 4
  %dev155 = getelementptr inbounds %struct.pci_dev, ptr %55, i32 0, i32 44
  %56 = ptrtoint ptr %route_hi.i530 to i32
  call void @__asan_loadN_noabort(i32 %56, i32 8)
  %bf.load.i525 = load i64, ptr %route_hi.i530, align 4
  %57 = lshr i64 %bf.load.i525, 1
  %shl.i526 = and i64 %57, 9223372032559808512
  %58 = ptrtoint ptr %route_lo.i533 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %route_lo.i533, align 8
  %conv2.i528 = zext i32 %59 to i64
  %or.i529 = or i64 %shl.i526, %conv2.i528
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug244, ptr noundef %dev155, ptr noundef nonnull @.str.14, i64 noundef %or.i529, i32 noundef %shr) #6
  br label %sw.epilog

do.body165:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then179)) #6
          to label %sw.epilog [label %if.then179], !srcloc !82

if.then179:                                       ; preds = %do.body165
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %tb180 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tb180, align 8
  %nhi181 = getelementptr inbounds %struct.tb, ptr %61, i32 0, i32 2
  %62 = ptrtoint ptr %nhi181 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %nhi181, align 4
  %pdev182 = getelementptr inbounds %struct.tb_nhi, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %pdev182 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev182, align 4
  %dev183 = getelementptr inbounds %struct.pci_dev, ptr %65, i32 0, i32 44
  %66 = ptrtoint ptr %route_hi.i530 to i32
  call void @__asan_loadN_noabort(i32 %66, i32 8)
  %bf.load.i531 = load i64, ptr %route_hi.i530, align 4
  %67 = lshr i64 %bf.load.i531, 1
  %shl.i532 = and i64 %67, 9223372032559808512
  %68 = ptrtoint ptr %route_lo.i533 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %route_lo.i533, align 8
  %conv2.i534 = zext i32 %69 to i64
  %or.i535 = or i64 %shl.i532, %conv2.i534
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug245, ptr noundef %dev183, ptr noundef nonnull @.str.15, i64 noundef %or.i535, i32 noundef %shr) #6
  br label %sw.epilog

do.body192:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@usb4_switch_credits_init, %if.then206)) #6
          to label %sw.epilog [label %if.then206], !srcloc !82

if.then206:                                       ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  %70 = ptrtoint ptr %tb180 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tb180, align 8
  %nhi208 = getelementptr inbounds %struct.tb, ptr %71, i32 0, i32 2
  %72 = ptrtoint ptr %nhi208 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %nhi208, align 4
  %pdev209 = getelementptr inbounds %struct.tb_nhi, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %pdev209 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %pdev209, align 4
  %dev210 = getelementptr inbounds %struct.pci_dev, ptr %75, i32 0, i32 44
  %76 = ptrtoint ptr %route_hi.i530 to i32
  call void @__asan_loadN_noabort(i32 %76, i32 8)
  %bf.load.i537 = load i64, ptr %route_hi.i530, align 4
  %77 = lshr i64 %bf.load.i537, 1
  %shl.i538 = and i64 %77, 9223372032559808512
  %78 = ptrtoint ptr %route_lo.i533 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %route_lo.i533, align 8
  %conv2.i540 = zext i32 %79 to i64
  %or.i541 = or i64 %shl.i538, %conv2.i540
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @usb4_switch_credits_init.__UNIQUE_ID_ddebug246, ptr noundef %dev210, ptr noundef nonnull @.str.16, i64 noundef %or.i541, i32 noundef %conv52) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then206, %do.body192, %if.then179, %do.body165, %if.then151, %do.body137, %if.then123, %do.body109, %if.then95, %do.body81, %if.then67, %do.body53
  %max_dma.1 = phi i32 [ %max_dma.0639, %if.then67 ], [ %max_dma.0639, %if.then95 ], [ %max_dma.0639, %if.then123 ], [ %max_dma.0639, %if.then151 ], [ %shr, %if.then179 ], [ %max_dma.0639, %if.then206 ], [ %max_dma.0639, %do.body53 ], [ %max_dma.0639, %do.body81 ], [ %max_dma.0639, %do.body109 ], [ %max_dma.0639, %do.body137 ], [ %shr, %do.body165 ], [ %max_dma.0639, %do.body192 ]
  %max_pcie.1 = phi i32 [ %max_pcie.0640, %if.then67 ], [ %max_pcie.0640, %if.then95 ], [ %max_pcie.0640, %if.then123 ], [ %shr, %if.then151 ], [ %max_pcie.0640, %if.then179 ], [ %max_pcie.0640, %if.then206 ], [ %max_pcie.0640, %do.body53 ], [ %max_pcie.0640, %do.body81 ], [ %max_pcie.0640, %do.body109 ], [ %shr, %do.body137 ], [ %max_pcie.0640, %do.body165 ], [ %max_pcie.0640, %do.body192 ]
  %min_dp_main.1 = phi i32 [ %min_dp_main.0641, %if.then67 ], [ %min_dp_main.0641, %if.then95 ], [ %shr, %if.then123 ], [ %min_dp_main.0641, %if.then151 ], [ %min_dp_main.0641, %if.then179 ], [ %min_dp_main.0641, %if.then206 ], [ %min_dp_main.0641, %do.body53 ], [ %min_dp_main.0641, %do.body81 ], [ %shr, %do.body109 ], [ %min_dp_main.0641, %do.body137 ], [ %min_dp_main.0641, %do.body165 ], [ %min_dp_main.0641, %do.body192 ]
  %min_dp_aux.1 = phi i32 [ %min_dp_aux.0642, %if.then67 ], [ %shr, %if.then95 ], [ %min_dp_aux.0642, %if.then123 ], [ %min_dp_aux.0642, %if.then151 ], [ %min_dp_aux.0642, %if.then179 ], [ %min_dp_aux.0642, %if.then206 ], [ %min_dp_aux.0642, %do.body53 ], [ %shr, %do.body81 ], [ %min_dp_aux.0642, %do.body109 ], [ %min_dp_aux.0642, %do.body137 ], [ %min_dp_aux.0642, %do.body165 ], [ %min_dp_aux.0642, %do.body192 ]
  %max_usb3.1 = phi i32 [ %shr, %if.then67 ], [ %max_usb3.0643, %if.then95 ], [ %max_usb3.0643, %if.then123 ], [ %max_usb3.0643, %if.then151 ], [ %max_usb3.0643, %if.then179 ], [ %max_usb3.0643, %if.then206 ], [ %shr, %do.body53 ], [ %max_usb3.0643, %do.body81 ], [ %max_usb3.0643, %do.body109 ], [ %max_usb3.0643, %do.body137 ], [ %max_usb3.0643, %do.body165 ], [ %max_usb3.0643, %do.body192 ]
  %inc = add nuw nsw i32 %i.0638, 1
  %exitcond.not = icmp eq i32 %inc, %and
  br i1 %exitcond.not, label %sw.epilog.for.end_crit_edge, label %sw.epilog.for.body_crit_edge

sw.epilog.for.body_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %do.end44.for.end_crit_edge
  %max_dma.0.lcssa = phi i32 [ -1, %do.end44.for.end_crit_edge ], [ %max_dma.1, %sw.epilog.for.end_crit_edge ]
  %max_pcie.0.lcssa = phi i32 [ -1, %do.end44.for.end_crit_edge ], [ %max_pcie.1, %sw.epilog.for.end_crit_edge ]
  %min_dp_main.0.lcssa = phi i32 [ -1, %do.end44.for.end_crit_edge ], [ %min_dp_main.1, %sw.epilog.for.end_crit_edge ]
  %min_dp_aux.0.lcssa = phi i32 [ -1, %do.end44.for.end_crit_edge ], [ %min_dp_aux.1, %sw.epilog.for.end_crit_edge ]
  %max_usb3.0.lcssa = phi i32 [ -1, %do.end44.for.end_crit_edge ], [ %max_usb3.1, %sw.epilog.for.end_crit_edge ]
  %route_hi.i542 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %80 = ptrtoint ptr %route_hi.i542 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 8)
  %bf.load.i543 = load i64, ptr %route_hi.i542, align 4
  %81 = lshr i64 %bf.load.i543, 1
  %shl.i544 = and i64 %81, 9223372032559808512
  %route_lo.i545 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %82 = ptrtoint ptr %route_lo.i545 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %route_lo.i545, align 8
  %conv2.i546 = zext i32 %83 to i64
  %or.i547 = or i64 %shl.i544, %conv2.i546
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i547)
  %tobool219.not = icmp eq i64 %or.i547, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_dma.0.lcssa)
  %cmp220 = icmp slt i32 %max_dma.0.lcssa, 0
  %or.cond = select i1 %tobool219.not, i1 %cmp220, i1 false
  br i1 %or.cond, label %do.body223, label %if.end235

do.body223:                                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %tb228 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %84 = ptrtoint ptr %tb228 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %tb228, align 8
  %nhi229 = getelementptr inbounds %struct.tb, ptr %85, i32 0, i32 2
  %86 = ptrtoint ptr %nhi229 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %nhi229, align 4
  %pdev230 = getelementptr inbounds %struct.tb_nhi, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %pdev230 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %pdev230, align 4
  %dev231 = getelementptr inbounds %struct.pci_dev, ptr %89, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev231, ptr noundef nonnull @.str.17, i64 noundef 0) #9
  br label %cleanup

if.end235:                                        ; preds = %for.end
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %90 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %92)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx239 = getelementptr %struct.tb_port, ptr %91, i32 %bf.clear
  %port.0648 = getelementptr %struct.tb_port, ptr %91, i32 1
  %cmp240.not649 = icmp ugt ptr %port.0648, %arrayidx239
  br i1 %cmp240.not649, label %if.end235.for.end370_crit_edge, label %if.end235.for.body242_crit_edge

if.end235.for.body242_crit_edge:                  ; preds = %if.end235
  br label %for.body242

if.end235.for.end370_crit_edge:                   ; preds = %if.end235
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end370

for.body242:                                      ; preds = %tb_port_is_null.exit.thread.for.body242_crit_edge, %if.end235.for.body242_crit_edge
  %port.0652 = phi ptr [ %port.0, %tb_port_is_null.exit.thread.for.body242_crit_edge ], [ %port.0648, %if.end235.for.body242_crit_edge ]
  %nports.0651 = phi i32 [ %97, %tb_port_is_null.exit.thread.for.body242_crit_edge ], [ 0, %if.end235.for.body242_crit_edge ]
  %.pn650 = phi ptr [ %port.0652, %tb_port_is_null.exit.thread.for.body242_crit_edge ], [ %91, %if.end235.for.body242_crit_edge ]
  %tobool.not.i = icmp eq ptr %port.0652, null
  br i1 %tobool.not.i, label %for.body242.tb_port_is_null.exit.thread_crit_edge, label %land.lhs.true.i

for.body242.tb_port_is_null.exit.thread_crit_edge: ; preds = %for.body242
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_null.exit.thread

land.lhs.true.i:                                  ; preds = %for.body242
  %port1.i = getelementptr %struct.tb_port, ptr %.pn650, i32 1, i32 9
  %93 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %port1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool2.not.i = icmp eq i8 %94, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.tb_port_is_null.exit.thread_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i.tb_port_is_null.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_null.exit.thread

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %type.i = getelementptr %struct.tb_port, ptr %.pn650, i32 1, i32 0, i32 2
  %95 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %95, i32 12)
  %bf.load.i554 = load i96, ptr %type.i, align 4
  %96 = and i96 %bf.load.i554, 18446742974197923840
  %cmp.i = icmp eq i96 %96, 1099511627776
  %inc245 = zext i1 %cmp.i to i32
  %spec.select = add i32 %nports.0651, %inc245
  br label %tb_port_is_null.exit.thread

tb_port_is_null.exit.thread:                      ; preds = %tb_port_is_null.exit, %land.lhs.true.i.tb_port_is_null.exit.thread_crit_edge, %for.body242.tb_port_is_null.exit.thread_crit_edge
  %97 = phi i32 [ %nports.0651, %land.lhs.true.i.tb_port_is_null.exit.thread_crit_edge ], [ %nports.0651, %for.body242.tb_port_is_null.exit.thread_crit_edge ], [ %spec.select, %tb_port_is_null.exit ]
  %port.0 = getelementptr %struct.tb_port, ptr %port.0652, i32 1
  %cmp240.not = icmp ugt ptr %port.0, %arrayidx239
  br i1 %cmp240.not, label %for.end248, label %tb_port_is_null.exit.thread.for.body242_crit_edge

tb_port_is_null.exit.thread.for.body242_crit_edge: ; preds = %tb_port_is_null.exit.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body242

for.end248:                                       ; preds = %tb_port_is_null.exit.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp249 = icmp sgt i32 %97, 2
  br i1 %cmp249, label %land.lhs.true251, label %for.end248.if.end269_crit_edge

for.end248.if.end269_crit_edge:                   ; preds = %for.end248
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end269

land.lhs.true251:                                 ; preds = %for.end248
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_dp_aux.0.lcssa)
  %cmp252 = icmp slt i32 %min_dp_aux.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_dp_main.0.lcssa)
  %cmp254 = icmp slt i32 %min_dp_main.0.lcssa, 0
  %or.cond483 = select i1 %cmp252, i1 true, i1 %cmp254
  br i1 %or.cond483, label %do.body257, label %land.lhs.true251.if.end269_crit_edge

land.lhs.true251.if.end269_crit_edge:             ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end269

do.body257:                                       ; preds = %land.lhs.true251
  call void @__sanitizer_cov_trace_pc() #8
  %tb262 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %98 = ptrtoint ptr %tb262 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %tb262, align 8
  %nhi263 = getelementptr inbounds %struct.tb, ptr %99, i32 0, i32 2
  %100 = ptrtoint ptr %nhi263 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %nhi263, align 4
  %pdev264 = getelementptr inbounds %struct.tb_nhi, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %pdev264 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pdev264, align 4
  %dev265 = getelementptr inbounds %struct.pci_dev, ptr %103, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev265, ptr noundef nonnull @.str.21, i64 noundef %or.i547) #9
  br label %cleanup

if.end269:                                        ; preds = %land.lhs.true251.if.end269_crit_edge, %for.end248.if.end269_crit_edge
  br i1 %cmp240.not649, label %if.end269.for.end370_crit_edge, label %for.body282.lr.ph

if.end269.for.end370_crit_edge:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end370

for.body282.lr.ph:                                ; preds = %if.end269
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_dp_main.0.lcssa)
  %cmp286 = icmp slt i32 %min_dp_main.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_dp_aux.0.lcssa)
  %cmp308 = icmp slt i32 %min_dp_aux.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_usb3.0.lcssa)
  %cmp330 = icmp slt i32 %max_usb3.0.lcssa, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_pcie.0.lcssa)
  %cmp352 = icmp slt i32 %max_pcie.0.lcssa, 0
  br label %for.body282

for.body282:                                      ; preds = %for.inc368.for.body282_crit_edge, %for.body282.lr.ph
  %port.1658 = phi ptr [ %port.0648, %for.body282.lr.ph ], [ %port.1, %for.inc368.for.body282_crit_edge ]
  %.pn482657 = phi ptr [ %91, %for.body282.lr.ph ], [ %port.1658, %for.inc368.for.body282_crit_edge ]
  %tobool.not.i561 = icmp eq ptr %port.1658, null
  br i1 %tobool.not.i561, label %for.body282.for.inc368_crit_edge, label %tb_port_is_dpout.exit

for.body282.for.inc368_crit_edge:                 ; preds = %for.body282
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc368

tb_port_is_dpout.exit:                            ; preds = %for.body282
  %type.i562 = getelementptr %struct.tb_port, ptr %.pn482657, i32 1, i32 0, i32 2
  %104 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %104, i32 12)
  %bf.load.i563 = load i96, ptr %type.i562, align 4
  %105 = and i96 %bf.load.i563, 18446742974197923840
  %cmp.i564 = icmp eq i96 %105, 1009089990530957312
  %or.cond484 = select i1 %cmp.i564, i1 %cmp286, i1 false
  br i1 %or.cond484, label %do.body289, label %tb_port_is_dpin.exit

do.body289:                                       ; preds = %tb_port_is_dpout.exit
  call void @__sanitizer_cov_trace_pc() #8
  %tb294 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %106 = ptrtoint ptr %tb294 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tb294, align 8
  %nhi295 = getelementptr inbounds %struct.tb, ptr %107, i32 0, i32 2
  %108 = ptrtoint ptr %nhi295 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %nhi295, align 4
  %pdev296 = getelementptr inbounds %struct.tb_nhi, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %pdev296 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %pdev296, align 4
  %dev297 = getelementptr inbounds %struct.pci_dev, ptr %111, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev297, ptr noundef nonnull @.str.24, i64 noundef %or.i547) #9
  br label %cleanup

tb_port_is_dpin.exit:                             ; preds = %tb_port_is_dpout.exit
  %112 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %112, i32 12)
  %bf.load.i574 = load i96, ptr %type.i562, align 4
  %113 = and i96 %bf.load.i574, 18446742974197923840
  %cmp.i575 = icmp eq i96 %113, 1009088891019329536
  br i1 %cmp.i575, label %land.lhs.true307, label %tb_port_is_dpout.exit582

tb_port_is_dpout.exit582:                         ; preds = %tb_port_is_dpin.exit
  %114 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %114, i32 12)
  %bf.load.i579 = load i96, ptr %type.i562, align 4
  %115 = and i96 %bf.load.i579, 18446742974197923840
  %cmp.i580 = icmp eq i96 %115, 1009089990530957312
  %or.cond485 = select i1 %cmp.i580, i1 %cmp308, i1 false
  br i1 %or.cond485, label %tb_port_is_dpout.exit582.do.body311_crit_edge, label %tb_port_is_dpout.exit582.tb_port_is_usb3_down.exit_crit_edge

tb_port_is_dpout.exit582.tb_port_is_usb3_down.exit_crit_edge: ; preds = %tb_port_is_dpout.exit582
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_usb3_down.exit

tb_port_is_dpout.exit582.do.body311_crit_edge:    ; preds = %tb_port_is_dpout.exit582
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body311

land.lhs.true307:                                 ; preds = %tb_port_is_dpin.exit
  br i1 %cmp308, label %land.lhs.true307.do.body311_crit_edge, label %land.lhs.true307.tb_port_is_usb3_down.exit_crit_edge

land.lhs.true307.tb_port_is_usb3_down.exit_crit_edge: ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_usb3_down.exit

land.lhs.true307.do.body311_crit_edge:            ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body311

do.body311:                                       ; preds = %land.lhs.true307.do.body311_crit_edge, %tb_port_is_dpout.exit582.do.body311_crit_edge
  %tb316 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %116 = ptrtoint ptr %tb316 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %tb316, align 8
  %nhi317 = getelementptr inbounds %struct.tb, ptr %117, i32 0, i32 2
  %118 = ptrtoint ptr %nhi317 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %nhi317, align 4
  %pdev318 = getelementptr inbounds %struct.tb_nhi, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %pdev318 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %pdev318, align 4
  %dev319 = getelementptr inbounds %struct.pci_dev, ptr %121, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev319, ptr noundef nonnull @.str.27, i64 noundef %or.i547) #9
  br label %cleanup

tb_port_is_usb3_down.exit:                        ; preds = %land.lhs.true307.tb_port_is_usb3_down.exit_crit_edge, %tb_port_is_dpout.exit582.tb_port_is_usb3_down.exit_crit_edge
  %122 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %122, i32 12)
  %bf.load.i591 = load i96, ptr %type.i562, align 4
  %123 = and i96 %bf.load.i591, 18446742974197923840
  %cmp.i592 = icmp eq i96 %123, 2306125583702032384
  br i1 %cmp.i592, label %land.lhs.true329, label %tb_port_is_usb3_up.exit

tb_port_is_usb3_up.exit:                          ; preds = %tb_port_is_usb3_down.exit
  %124 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %124, i32 12)
  %bf.load.i596 = load i96, ptr %type.i562, align 4
  %125 = and i96 %bf.load.i596, 18446742974197923840
  %cmp.i597 = icmp eq i96 %125, 2306126683213660160
  %or.cond486 = select i1 %cmp.i597, i1 %cmp330, i1 false
  br i1 %or.cond486, label %tb_port_is_usb3_up.exit.do.body333_crit_edge, label %tb_port_is_usb3_up.exit.tb_port_is_pcie_down.exit_crit_edge

tb_port_is_usb3_up.exit.tb_port_is_pcie_down.exit_crit_edge: ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_pcie_down.exit

tb_port_is_usb3_up.exit.do.body333_crit_edge:     ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body333

land.lhs.true329:                                 ; preds = %tb_port_is_usb3_down.exit
  br i1 %cmp330, label %land.lhs.true329.do.body333_crit_edge, label %land.lhs.true329.tb_port_is_pcie_down.exit_crit_edge

land.lhs.true329.tb_port_is_pcie_down.exit_crit_edge: ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #8
  br label %tb_port_is_pcie_down.exit

land.lhs.true329.do.body333_crit_edge:            ; preds = %land.lhs.true329
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body333

do.body333:                                       ; preds = %land.lhs.true329.do.body333_crit_edge, %tb_port_is_usb3_up.exit.do.body333_crit_edge
  %tb338 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %126 = ptrtoint ptr %tb338 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %tb338, align 8
  %nhi339 = getelementptr inbounds %struct.tb, ptr %127, i32 0, i32 2
  %128 = ptrtoint ptr %nhi339 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %nhi339, align 4
  %pdev340 = getelementptr inbounds %struct.tb_nhi, ptr %129, i32 0, i32 1
  %130 = ptrtoint ptr %pdev340 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %pdev340, align 4
  %dev341 = getelementptr inbounds %struct.pci_dev, ptr %131, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev341, ptr noundef nonnull @.str.30, i64 noundef %or.i547) #9
  br label %cleanup

tb_port_is_pcie_down.exit:                        ; preds = %land.lhs.true329.tb_port_is_pcie_down.exit_crit_edge, %tb_port_is_usb3_up.exit.tb_port_is_pcie_down.exit_crit_edge
  %132 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %132, i32 12)
  %bf.load.i607 = load i96, ptr %type.i562, align 4
  %133 = and i96 %bf.load.i607, 18446742974197923840
  %cmp.i608 = icmp eq i96 %133, 1153204079095185408
  br i1 %cmp.i608, label %land.lhs.true351, label %tb_port_is_pcie_up.exit

tb_port_is_pcie_up.exit:                          ; preds = %tb_port_is_pcie_down.exit
  %134 = ptrtoint ptr %type.i562 to i32
  call void @__asan_loadN_noabort(i32 %134, i32 12)
  %bf.load.i612 = load i96, ptr %type.i562, align 4
  %135 = and i96 %bf.load.i612, 18446742974197923840
  %cmp.i613 = icmp eq i96 %135, 1153205178606813184
  %or.cond487 = select i1 %cmp.i613, i1 %cmp352, i1 false
  br i1 %or.cond487, label %tb_port_is_pcie_up.exit.do.body355_crit_edge, label %tb_port_is_pcie_up.exit.for.inc368_crit_edge

tb_port_is_pcie_up.exit.for.inc368_crit_edge:     ; preds = %tb_port_is_pcie_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc368

tb_port_is_pcie_up.exit.do.body355_crit_edge:     ; preds = %tb_port_is_pcie_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body355

land.lhs.true351:                                 ; preds = %tb_port_is_pcie_down.exit
  br i1 %cmp352, label %land.lhs.true351.do.body355_crit_edge, label %land.lhs.true351.for.inc368_crit_edge

land.lhs.true351.for.inc368_crit_edge:            ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc368

land.lhs.true351.do.body355_crit_edge:            ; preds = %land.lhs.true351
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body355

do.body355:                                       ; preds = %land.lhs.true351.do.body355_crit_edge, %tb_port_is_pcie_up.exit.do.body355_crit_edge
  %tb360 = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  %136 = ptrtoint ptr %tb360 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %tb360, align 8
  %nhi361 = getelementptr inbounds %struct.tb, ptr %137, i32 0, i32 2
  %138 = ptrtoint ptr %nhi361 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %nhi361, align 4
  %pdev362 = getelementptr inbounds %struct.tb_nhi, ptr %139, i32 0, i32 1
  %140 = ptrtoint ptr %pdev362 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %pdev362, align 4
  %dev363 = getelementptr inbounds %struct.pci_dev, ptr %141, i32 0, i32 44
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev363, ptr noundef nonnull @.str.33, i64 noundef %or.i547) #9
  br label %cleanup

for.inc368:                                       ; preds = %land.lhs.true351.for.inc368_crit_edge, %tb_port_is_pcie_up.exit.for.inc368_crit_edge, %for.body282.for.inc368_crit_edge
  %port.1 = getelementptr %struct.tb_port, ptr %port.1658, i32 1
  %cmp280.not = icmp ugt ptr %port.1, %arrayidx239
  br i1 %cmp280.not, label %for.inc368.for.end370_crit_edge, label %for.inc368.for.body282_crit_edge

for.inc368.for.body282_crit_edge:                 ; preds = %for.inc368
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body282

for.inc368.for.end370_crit_edge:                  ; preds = %for.inc368
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end370

for.end370:                                       ; preds = %for.inc368.for.end370_crit_edge, %if.end269.for.end370_crit_edge, %if.end235.for.end370_crit_edge
  %credit_allocation = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 37
  %142 = ptrtoint ptr %credit_allocation to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 1, ptr %credit_allocation, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_usb3.0.lcssa)
  %cmp371 = icmp sgt i32 %max_usb3.0.lcssa, 0
  br i1 %cmp371, label %if.then373, label %for.end370.if.end374_crit_edge

for.end370.if.end374_crit_edge:                   ; preds = %for.end370
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end374

if.then373:                                       ; preds = %for.end370
  call void @__sanitizer_cov_trace_pc() #8
  %max_usb3_credits = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 38
  %143 = ptrtoint ptr %max_usb3_credits to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %max_usb3.0.lcssa, ptr %max_usb3_credits, align 4
  br label %if.end374

if.end374:                                        ; preds = %if.then373, %for.end370.if.end374_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_dp_aux.0.lcssa)
  %cmp375 = icmp sgt i32 %min_dp_aux.0.lcssa, 0
  br i1 %cmp375, label %if.then377, label %if.end374.if.end378_crit_edge

if.end374.if.end378_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end378

if.then377:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #8
  %min_dp_aux_credits = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 39
  %144 = ptrtoint ptr %min_dp_aux_credits to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %min_dp_aux.0.lcssa, ptr %min_dp_aux_credits, align 8
  br label %if.end378

if.end378:                                        ; preds = %if.then377, %if.end374.if.end378_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %min_dp_main.0.lcssa)
  %cmp379 = icmp sgt i32 %min_dp_main.0.lcssa, 0
  br i1 %cmp379, label %if.then381, label %if.end378.if.end382_crit_edge

if.end378.if.end382_crit_edge:                    ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end382

if.then381:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #8
  %min_dp_main_credits = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 40
  %145 = ptrtoint ptr %min_dp_main_credits to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %min_dp_main.0.lcssa, ptr %min_dp_main_credits, align 4
  br label %if.end382

if.end382:                                        ; preds = %if.then381, %if.end378.if.end382_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_pcie.0.lcssa)
  %cmp383 = icmp sgt i32 %max_pcie.0.lcssa, 0
  br i1 %cmp383, label %if.then385, label %if.end382.if.end386_crit_edge

if.end382.if.end386_crit_edge:                    ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end386

if.then385:                                       ; preds = %if.end382
  call void @__sanitizer_cov_trace_pc() #8
  %max_pcie_credits = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 41
  %146 = ptrtoint ptr %max_pcie_credits to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %max_pcie.0.lcssa, ptr %max_pcie_credits, align 8
  br label %if.end386

if.end386:                                        ; preds = %if.then385, %if.end382.if.end386_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %max_dma.0.lcssa)
  %cmp387 = icmp sgt i32 %max_dma.0.lcssa, 0
  br i1 %cmp387, label %if.then389, label %if.end386.cleanup_crit_edge

if.end386.cleanup_crit_edge:                      ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then389:                                       ; preds = %if.end386
  call void @__sanitizer_cov_trace_pc() #8
  %max_dma_credits = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 42
  %147 = ptrtoint ptr %max_dma_credits to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %max_dma.0.lcssa, ptr %max_dma_credits, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then389, %if.end386.cleanup_crit_edge, %do.body355, %do.body333, %do.body311, %do.body289, %do.body257, %do.body223, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %do.end ], [ %call.i, %entry.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ], [ 0, %if.then389 ], [ 0, %if.end386.cleanup_crit_edge ], [ -22, %do.body355 ], [ -22, %do.body333 ], [ -22, %do.body311 ], [ -22, %do.body289 ], [ -22, %do.body257 ], [ -22, %do.body223 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @usb4_switch_query_dp_resource(ptr noundef %sw, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %metadata = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %port = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 9
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %metadata, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !81
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 16, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %call.i, label %if.then2 [
    i32 -95, label %entry.cleanup_crit_edge
    i32 0, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool4.not = icmp eq i8 %6, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then2 ], [ %tobool4.not, %if.end3 ], [ true, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_alloc_dp_resource(ptr noundef %sw, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %metadata = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %port = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 9
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %metadata, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !81
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 17, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %call.i, label %if.then2 [
    i32 -95, label %entry.cleanup_crit_edge
    i32 0, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ %cond, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_dealloc_dp_resource(ptr noundef %sw, ptr nocapture noundef readonly %in) local_unnamed_addr #0 align 64 {
entry:
  %metadata = alloca i32, align 4
  %status = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %port = getelementptr inbounds %struct.tb_port, ptr %in, i32 0, i32 9
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %port, align 4
  %conv = zext i8 %1 to i32
  %2 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv, ptr %metadata, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %status) #6
  %3 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %status, align 1, !annotation !81
  %call.i = call fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext 18, ptr noundef nonnull %metadata, ptr noundef nonnull %status, ptr noundef null, i32 noundef 0, ptr noundef null, i32 noundef 0) #6
  %4 = zext i32 %call.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %call.i, label %if.then2 [
    i32 -95, label %entry.cleanup_crit_edge
    i32 0, label %if.end3
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %status, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool5.not = icmp eq i8 %6, 0
  %cond = select i1 %tobool5.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.then2 ], [ %cond, %if.end3 ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %status) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb4_switch_map_pcie_down(ptr nocapture noundef readonly %sw, ptr noundef readnone %port) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear.i
  %p.022.i = getelementptr %struct.tb_port, ptr %1, i32 1
  %cmp.not23.i = icmp ugt ptr %p.022.i, %arrayidx2.i
  br i1 %cmp.not23.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %p.026.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.022.i, %entry.for.body.i_crit_edge ]
  %usb4_idx.025.i = phi i32 [ %usb4_idx.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %.pn24.i = phi ptr [ %p.026.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %p.026.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %port1.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 9
  %3 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %tb_port_is_null.exit.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

tb_port_is_null.exit.i:                           ; preds = %land.lhs.true.i.i
  %type.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load.i.i = load i96, ptr %type.i.i, align 4
  %6 = and i96 %bf.load.i.i, 18446742974197923840
  %cmp.i.i = icmp eq i96 %6, 1099511627776
  br i1 %cmp.i.i, label %if.end.i, label %tb_port_is_null.exit.i.for.inc.i_crit_edge

tb_port_is_null.exit.i.for.inc.i_crit_edge:       ; preds = %tb_port_is_null.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %tb_port_is_null.exit.i
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 1
  %7 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %10, i32 %bf.clear.i.i.i
  %cmp.i21.i = icmp eq ptr %arrayidx.i.i.i, %p.026.i
  br i1 %cmp.i21.i, label %if.end.i.for.inc.i_crit_edge, label %tb_is_upstream_port.exit.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

tb_is_upstream_port.exit.i:                       ; preds = %if.end.i
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 12
  %12 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %13, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc.i_crit_edge, label %if.end5.i

tb_is_upstream_port.exit.i.for.inc.i_crit_edge:   ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end5.i:                                        ; preds = %tb_is_upstream_port.exit.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 13
  %14 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load6.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %tobool.not.i = icmp sgt i8 %bf.load6.i, -1
  br i1 %tobool.not.i, label %if.then8.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end5.i
  %cmp9.i = icmp eq ptr %p.026.i, %port
  br i1 %cmp9.i, label %if.then8.i.usb4_port_idx.exit_crit_edge, label %if.end11.i

if.then8.i.usb4_port_idx.exit_crit_edge:          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_idx.exit

if.end11.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %usb4_idx.025.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.end5.i.for.inc.i_crit_edge, %tb_is_upstream_port.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %tb_port_is_null.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %usb4_idx.1.i = phi i32 [ %usb4_idx.025.i, %tb_is_upstream_port.exit.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %if.end5.i.for.inc.i_crit_edge ], [ %inc.i, %if.end11.i ], [ %usb4_idx.025.i, %tb_port_is_null.exit.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %land.lhs.true.i.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %for.body.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %if.end.i.for.inc.i_crit_edge ]
  %p.0.i = getelementptr %struct.tb_port, ptr %p.026.i, i32 1
  %cmp.not.i = icmp ugt ptr %p.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.inc.i.usb4_port_idx.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.usb4_port_idx.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_idx.exit

usb4_port_idx.exit:                               ; preds = %for.inc.i.usb4_port_idx.exit_crit_edge, %if.then8.i.usb4_port_idx.exit_crit_edge
  %usb4_idx.0.lcssa.i = phi i32 [ %usb4_idx.025.i, %if.then8.i.usb4_port_idx.exit_crit_edge ], [ %usb4_idx.1.i, %for.inc.i.usb4_port_idx.exit_crit_edge ]
  br i1 %cmp.not23.i, label %usb4_port_idx.exit.cleanup_crit_edge, label %usb4_port_idx.exit.for.body_crit_edge

usb4_port_idx.exit.for.body_crit_edge:            ; preds = %usb4_port_idx.exit
  br label %for.body

usb4_port_idx.exit.cleanup_crit_edge:             ; preds = %usb4_port_idx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %usb4_port_idx.exit.for.body_crit_edge
  %p.022 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.022.i, %usb4_port_idx.exit.for.body_crit_edge ]
  %pcie_idx.021 = phi i32 [ %pcie_idx.1, %for.inc.for.body_crit_edge ], [ 0, %usb4_port_idx.exit.for.body_crit_edge ]
  %.pn20 = phi ptr [ %p.022, %for.inc.for.body_crit_edge ], [ %1, %usb4_port_idx.exit.for.body_crit_edge ]
  %tobool.not.i16 = icmp eq ptr %p.022, null
  br i1 %tobool.not.i16, label %for.body.for.inc_crit_edge, label %tb_port_is_pcie_down.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_pcie_down.exit:                        ; preds = %for.body
  %type.i = getelementptr %struct.tb_port, ptr %.pn20, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 12)
  %bf.load.i17 = load i96, ptr %type.i, align 4
  %16 = and i96 %bf.load.i17, 18446742974197923840
  %cmp.i = icmp eq i96 %16, 1153204079095185408
  br i1 %cmp.i, label %if.end, label %tb_port_is_pcie_down.exit.for.inc_crit_edge

tb_port_is_pcie_down.exit.for.inc_crit_edge:      ; preds = %tb_port_is_pcie_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %tb_port_is_pcie_down.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %pcie_idx.021, i32 %usb4_idx.0.lcssa.i)
  %cmp4 = icmp eq i32 %pcie_idx.021, %usb4_idx.0.lcssa.i
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %pcie_idx.021, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %tb_port_is_pcie_down.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %pcie_idx.1 = phi i32 [ %inc, %if.end6 ], [ %pcie_idx.021, %tb_port_is_pcie_down.exit.for.inc_crit_edge ], [ %pcie_idx.021, %for.body.for.inc_crit_edge ]
  %p.0 = getelementptr %struct.tb_port, ptr %p.022, i32 1
  %cmp.not = icmp ugt ptr %p.0, %arrayidx2.i
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %usb4_port_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %usb4_port_idx.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %p.022, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @usb4_switch_map_usb3_down(ptr nocapture noundef readonly %sw, ptr noundef readnone %port) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports.i, align 4
  %max_port_number.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %max_port_number.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load.i = load i32, ptr %max_port_number.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear.i
  %p.022.i = getelementptr %struct.tb_port, ptr %1, i32 1
  %cmp.not23.i = icmp ugt ptr %p.022.i, %arrayidx2.i
  br i1 %cmp.not23.i, label %entry.cleanup_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %p.026.i = phi ptr [ %p.0.i, %for.inc.i.for.body.i_crit_edge ], [ %p.022.i, %entry.for.body.i_crit_edge ]
  %usb4_idx.025.i = phi i32 [ %usb4_idx.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %.pn24.i = phi ptr [ %p.026.i, %for.inc.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %tobool.not.i.i = icmp eq ptr %p.026.i, null
  br i1 %tobool.not.i.i, label %for.body.i.for.inc.i_crit_edge, label %land.lhs.true.i.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i.i:                                ; preds = %for.body.i
  %port1.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 9
  %3 = ptrtoint ptr %port1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %port1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool2.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool2.not.i.i, label %land.lhs.true.i.i.for.inc.i_crit_edge, label %tb_port_is_null.exit.i

land.lhs.true.i.i.for.inc.i_crit_edge:            ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

tb_port_is_null.exit.i:                           ; preds = %land.lhs.true.i.i
  %type.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 0, i32 2
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 12)
  %bf.load.i.i = load i96, ptr %type.i.i, align 4
  %6 = and i96 %bf.load.i.i, 18446742974197923840
  %cmp.i.i = icmp eq i96 %6, 1099511627776
  br i1 %cmp.i.i, label %if.end.i, label %tb_port_is_null.exit.i.for.inc.i_crit_edge

tb_port_is_null.exit.i.for.inc.i_crit_edge:       ; preds = %tb_port_is_null.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end.i:                                         ; preds = %tb_port_is_null.exit.i
  %sw.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 1
  %7 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %sw.i.i, align 4
  %ports.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %ports.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ports.i.i.i, align 4
  %upstream_port_number.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %8, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %upstream_port_number.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %bf.load.i.i.i = load i32, ptr %upstream_port_number.i.i.i, align 4
  %bf.lshr.i.i.i = lshr i32 %bf.load.i.i.i, 18
  %bf.clear.i.i.i = and i32 %bf.lshr.i.i.i, 63
  %arrayidx.i.i.i = getelementptr %struct.tb_port, ptr %10, i32 %bf.clear.i.i.i
  %cmp.i21.i = icmp eq ptr %arrayidx.i.i.i, %p.026.i
  br i1 %cmp.i21.i, label %if.end.i.for.inc.i_crit_edge, label %tb_is_upstream_port.exit.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

tb_is_upstream_port.exit.i:                       ; preds = %if.end.i
  %dual_link_port.i.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 12
  %12 = ptrtoint ptr %dual_link_port.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dual_link_port.i.i, align 4
  %cmp1.i.i = icmp eq ptr %13, %arrayidx.i.i.i
  br i1 %cmp1.i.i, label %tb_is_upstream_port.exit.i.for.inc.i_crit_edge, label %if.end5.i

tb_is_upstream_port.exit.i.for.inc.i_crit_edge:   ; preds = %tb_is_upstream_port.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.end5.i:                                        ; preds = %tb_is_upstream_port.exit.i
  %link_nr.i = getelementptr %struct.tb_port, ptr %.pn24.i, i32 1, i32 13
  %14 = ptrtoint ptr %link_nr.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load6.i = load i8, ptr %link_nr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load6.i)
  %tobool.not.i = icmp sgt i8 %bf.load6.i, -1
  br i1 %tobool.not.i, label %if.then8.i, label %if.end5.i.for.inc.i_crit_edge

if.end5.i.for.inc.i_crit_edge:                    ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then8.i:                                       ; preds = %if.end5.i
  %cmp9.i = icmp eq ptr %p.026.i, %port
  br i1 %cmp9.i, label %if.then8.i.usb4_port_idx.exit_crit_edge, label %if.end11.i

if.then8.i.usb4_port_idx.exit_crit_edge:          ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_idx.exit

if.end11.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #8
  %inc.i = add i32 %usb4_idx.025.i, 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end11.i, %if.end5.i.for.inc.i_crit_edge, %tb_is_upstream_port.exit.i.for.inc.i_crit_edge, %if.end.i.for.inc.i_crit_edge, %tb_port_is_null.exit.i.for.inc.i_crit_edge, %land.lhs.true.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %usb4_idx.1.i = phi i32 [ %usb4_idx.025.i, %tb_is_upstream_port.exit.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %if.end5.i.for.inc.i_crit_edge ], [ %inc.i, %if.end11.i ], [ %usb4_idx.025.i, %tb_port_is_null.exit.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %land.lhs.true.i.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %for.body.i.for.inc.i_crit_edge ], [ %usb4_idx.025.i, %if.end.i.for.inc.i_crit_edge ]
  %p.0.i = getelementptr %struct.tb_port, ptr %p.026.i, i32 1
  %cmp.not.i = icmp ugt ptr %p.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.inc.i.usb4_port_idx.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.usb4_port_idx.exit_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_idx.exit

usb4_port_idx.exit:                               ; preds = %for.inc.i.usb4_port_idx.exit_crit_edge, %if.then8.i.usb4_port_idx.exit_crit_edge
  %usb4_idx.0.lcssa.i = phi i32 [ %usb4_idx.025.i, %if.then8.i.usb4_port_idx.exit_crit_edge ], [ %usb4_idx.1.i, %for.inc.i.usb4_port_idx.exit_crit_edge ]
  br i1 %cmp.not23.i, label %usb4_port_idx.exit.cleanup_crit_edge, label %usb4_port_idx.exit.for.body_crit_edge

usb4_port_idx.exit.for.body_crit_edge:            ; preds = %usb4_port_idx.exit
  br label %for.body

usb4_port_idx.exit.cleanup_crit_edge:             ; preds = %usb4_port_idx.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %usb4_port_idx.exit.for.body_crit_edge
  %p.022 = phi ptr [ %p.0, %for.inc.for.body_crit_edge ], [ %p.022.i, %usb4_port_idx.exit.for.body_crit_edge ]
  %usb_idx.021 = phi i32 [ %usb_idx.1, %for.inc.for.body_crit_edge ], [ 0, %usb4_port_idx.exit.for.body_crit_edge ]
  %.pn20 = phi ptr [ %p.022, %for.inc.for.body_crit_edge ], [ %1, %usb4_port_idx.exit.for.body_crit_edge ]
  %tobool.not.i16 = icmp eq ptr %p.022, null
  br i1 %tobool.not.i16, label %for.body.for.inc_crit_edge, label %tb_port_is_usb3_down.exit

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_usb3_down.exit:                        ; preds = %for.body
  %type.i = getelementptr %struct.tb_port, ptr %.pn20, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 12)
  %bf.load.i17 = load i96, ptr %type.i, align 4
  %16 = and i96 %bf.load.i17, 18446742974197923840
  %cmp.i = icmp eq i96 %16, 2306125583702032384
  br i1 %cmp.i, label %if.end, label %tb_port_is_usb3_down.exit.for.inc_crit_edge

tb_port_is_usb3_down.exit.for.inc_crit_edge:      ; preds = %tb_port_is_usb3_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end:                                           ; preds = %tb_port_is_usb3_down.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %usb_idx.021, i32 %usb4_idx.0.lcssa.i)
  %cmp4 = icmp eq i32 %usb_idx.021, %usb4_idx.0.lcssa.i
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %inc = add i32 %usb_idx.021, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end6, %tb_port_is_usb3_down.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %usb_idx.1 = phi i32 [ %inc, %if.end6 ], [ %usb_idx.021, %tb_port_is_usb3_down.exit.for.inc_crit_edge ], [ %usb_idx.021, %for.body.for.inc_crit_edge ]
  %p.0 = getelementptr %struct.tb_port, ptr %p.022, i32 1
  %cmp.not = icmp ugt ptr %p.0, %arrayidx2.i
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %usb4_port_idx.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %usb4_port_idx.exit.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ], [ %p.022, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_switch_add_ports(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %enabled.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %bf.load.i = load i64, ptr %enabled.i, align 4
  %1 = and i64 %bf.load.i, 4294967551
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967328, i64 %1)
  %2 = icmp eq i64 %1, 4294967328
  br i1 %2, label %if.end, label %entry.cleanup15_crit_edge

entry.cleanup15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

if.end:                                           ; preds = %entry
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %3 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.038 = getelementptr %struct.tb_port, ptr %4, i32 1
  %5 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %5)
  %bf.load39 = load i32, ptr %max_port_number, align 4
  %bf.lshr40 = lshr i32 %bf.load39, 12
  %bf.clear41 = and i32 %bf.lshr40, 63
  %arrayidx342 = getelementptr %struct.tb_port, ptr %4, i32 %bf.clear41
  %cmp.not43 = icmp ugt ptr %port.038, %arrayidx342
  br i1 %cmp.not43, label %if.end.cleanup15_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup15_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %port.045 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.038, %if.end.for.body_crit_edge ]
  %.pn44 = phi ptr [ %port.045, %for.inc.for.body_crit_edge ], [ %4, %if.end.for.body_crit_edge ]
  %tobool.not.i = icmp eq ptr %port.045, null
  br i1 %tobool.not.i, label %for.body.for.inc_crit_edge, label %land.lhs.true.i

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true.i:                                  ; preds = %for.body
  %port1.i = getelementptr %struct.tb_port, ptr %.pn44, i32 1, i32 9
  %6 = ptrtoint ptr %port1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %port1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool2.not.i = icmp eq i8 %7, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.for.inc_crit_edge, label %tb_port_is_null.exit

land.lhs.true.i.for.inc_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

tb_port_is_null.exit:                             ; preds = %land.lhs.true.i
  %type.i = getelementptr %struct.tb_port, ptr %.pn44, i32 1, i32 0, i32 2
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %8, i32 12)
  %bf.load.i29 = load i96, ptr %type.i, align 4
  %9 = and i96 %bf.load.i29, 18446742974197923840
  %cmp.i30 = icmp eq i96 %9, 1099511627776
  br i1 %cmp.i30, label %if.end6, label %tb_port_is_null.exit.for.inc_crit_edge

tb_port_is_null.exit.for.inc_crit_edge:           ; preds = %tb_port_is_null.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end6:                                          ; preds = %tb_port_is_null.exit
  %cap_usb4 = getelementptr %struct.tb_port, ptr %.pn44, i32 1, i32 7
  %10 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cap_usb4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end6.for.inc_crit_edge, label %if.end8

if.end6.for.inc_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end8:                                          ; preds = %if.end6
  %call9 = tail call ptr @usb4_port_device_add(ptr noundef nonnull %port.045) #6
  %cmp.i31 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then11, label %if.end13

if.then11:                                        ; preds = %if.end8
  %12 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ports, align 4
  %port.011.i = getelementptr %struct.tb_port, ptr %13, i32 1
  %14 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %14)
  %bf.load12.i = load i32, ptr %max_port_number, align 4
  %bf.lshr13.i = lshr i32 %bf.load12.i, 12
  %bf.clear14.i = and i32 %bf.lshr13.i, 63
  %arrayidx215.i = getelementptr %struct.tb_port, ptr %13, i32 %bf.clear14.i
  %cmp.not16.i = icmp ugt ptr %port.011.i, %arrayidx215.i
  br i1 %cmp.not16.i, label %if.then11.cleanup_crit_edge, label %if.then11.for.body.i_crit_edge

if.then11.for.body.i_crit_edge:                   ; preds = %if.then11
  br label %for.body.i

if.then11.cleanup_crit_edge:                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then11.for.body.i_crit_edge
  %port.018.i = phi ptr [ %port.0.i, %for.inc.i.for.body.i_crit_edge ], [ %port.011.i, %if.then11.for.body.i_crit_edge ]
  %.pn17.i = phi ptr [ %port.018.i, %for.inc.i.for.body.i_crit_edge ], [ %13, %if.then11.for.body.i_crit_edge ]
  %usb4.i = getelementptr %struct.tb_port, ptr %.pn17.i, i32 1, i32 8
  %15 = ptrtoint ptr %usb4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %usb4.i, align 4
  %tobool.not.i32 = icmp eq ptr %16, null
  br i1 %tobool.not.i32, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb4_port_device_remove(ptr noundef nonnull %16) #6
  %17 = ptrtoint ptr %usb4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %usb4.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %port.0.i = getelementptr %struct.tb_port, ptr %port.018.i, i32 1
  %18 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ports, align 4
  %20 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %20)
  %bf.load.i33 = load i32, ptr %max_port_number, align 4
  %bf.lshr.i = lshr i32 %bf.load.i33, 12
  %bf.clear.i = and i32 %bf.lshr.i, 63
  %arrayidx2.i = getelementptr %struct.tb_port, ptr %19, i32 %bf.clear.i
  %cmp.not.i = icmp ugt ptr %port.0.i, %arrayidx2.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %usb414 = getelementptr %struct.tb_port, ptr %.pn44, i32 1, i32 8
  %21 = ptrtoint ptr %usb414 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call9, ptr %usb414, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.inc.i.cleanup_crit_edge, %if.then11.cleanup_crit_edge
  %22 = ptrtoint ptr %call9 to i32
  br label %cleanup15

for.inc:                                          ; preds = %if.end13, %if.end6.for.inc_crit_edge, %tb_port_is_null.exit.for.inc_crit_edge, %land.lhs.true.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.045, i32 1
  %23 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ports, align 4
  %25 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx3 = getelementptr %struct.tb_port, ptr %24, i32 %bf.clear
  %cmp.not = icmp ugt ptr %port.0, %arrayidx3
  br i1 %cmp.not, label %for.inc.cleanup15_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup15_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup15

cleanup15:                                        ; preds = %for.inc.cleanup15_crit_edge, %cleanup, %if.end.cleanup15_crit_edge, %entry.cleanup15_crit_edge
  %retval.2 = phi i32 [ %22, %cleanup ], [ 0, %entry.cleanup15_crit_edge ], [ 0, %if.end.cleanup15_crit_edge ], [ 0, %for.inc.cleanup15_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb4_port_device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb4_switch_remove_ports(ptr nocapture noundef readonly %sw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ports = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 2
  %0 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ports, align 4
  %max_port_number = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 2
  %port.011 = getelementptr %struct.tb_port, ptr %1, i32 1
  %2 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %bf.load12 = load i32, ptr %max_port_number, align 4
  %bf.lshr13 = lshr i32 %bf.load12, 12
  %bf.clear14 = and i32 %bf.lshr13, 63
  %arrayidx215 = getelementptr %struct.tb_port, ptr %1, i32 %bf.clear14
  %cmp.not16 = icmp ugt ptr %port.011, %arrayidx215
  br i1 %cmp.not16, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %port.018 = phi ptr [ %port.0, %for.inc.for.body_crit_edge ], [ %port.011, %entry.for.body_crit_edge ]
  %.pn17 = phi ptr [ %port.018, %for.inc.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %usb4 = getelementptr %struct.tb_port, ptr %.pn17, i32 1, i32 8
  %3 = ptrtoint ptr %usb4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %usb4, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usb4_port_device_remove(ptr noundef nonnull %4) #6
  %5 = ptrtoint ptr %usb4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %usb4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %port.0 = getelementptr %struct.tb_port, ptr %port.018, i32 1
  %6 = ptrtoint ptr %ports to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ports, align 4
  %8 = ptrtoint ptr %max_port_number to i32
  call void @__asan_load4_noabort(i32 %8)
  %bf.load = load i32, ptr %max_port_number, align 4
  %bf.lshr = lshr i32 %bf.load, 12
  %bf.clear = and i32 %bf.lshr, 63
  %arrayidx2 = getelementptr %struct.tb_port, ptr %7, i32 %bf.clear
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
declare dso_local void @usb4_port_device_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_unlock(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %5 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %9, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %10 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %10, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %12 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %13 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %14 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %8, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef 4, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  %15 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %val, align 4
  %and = and i32 %16, 2147483647
  store i32 %and, ptr %val, align 4
  %17 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i6 = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %is_unplugged.i6 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_unplugged.i6, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i7 = icmp eq i8 %20, 0
  br i1 %tobool.not.i7, label %if.end.i19, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i19:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %tb.i8 = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %tb.i8 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tb.i8, align 8
  %ctl.i9 = getelementptr inbounds %struct.tb, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %ctl.i9 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctl.i9, align 8
  %route_hi.i.i10 = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %route_hi.i.i10 to i32
  call void @__asan_loadN_noabort(i32 %25, i32 8)
  %bf.load.i.i11 = load i64, ptr %route_hi.i.i10, align 4
  %26 = lshr i64 %bf.load.i.i11, 1
  %shl.i.i12 = and i64 %26, 9223372032559808512
  %route_lo.i.i13 = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 3
  %27 = ptrtoint ptr %route_lo.i.i13 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %route_lo.i.i13, align 8
  %conv2.i.i14 = zext i32 %28 to i64
  %or.i.i15 = or i64 %shl.i.i12, %conv2.i.i14
  %29 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %port3.i, align 4
  %conv.i17 = zext i8 %30 to i32
  %call4.i18 = call i32 @tb_cfg_write(ptr noundef %24, ptr noundef nonnull %val, i64 noundef %or.i.i15, i32 noundef %conv.i17, i32 noundef 1, i32 noundef 4, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i19, %if.end.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i18, %if.end.i19 ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_configure(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb4_port_set_configured(ptr noundef %port, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_port_set_configured(ptr nocapture noundef readonly %port, i1 noundef zeroext %configured) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %cap_usb4 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 7
  %1 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cap_usb4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end
  %add = add i32 %2, 19
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool2.not = icmp eq i32 %call4.i, 0
  br i1 %tobool2.not, label %if.end4, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_port_read.exit
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, -9
  %masksel = select i1 %configured, i32 8, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %val, align 4
  %19 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i18 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %is_unplugged.i18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_unplugged.i18, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i19 = icmp eq i8 %22, 0
  br i1 %tobool.not.i19, label %if.end.i31, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i31:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap_usb4, align 4
  %add9 = add i32 %24, 19
  %tb.i20 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %tb.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb.i20, align 8
  %ctl.i21 = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctl.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl.i21, align 8
  %route_hi.i.i22 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %route_hi.i.i22 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i.i23 = load i64, ptr %route_hi.i.i22, align 4
  %30 = lshr i64 %bf.load.i.i23, 1
  %shl.i.i24 = and i64 %30, 9223372032559808512
  %route_lo.i.i25 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %route_lo.i.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i25, align 8
  %conv2.i.i26 = zext i32 %32 to i64
  %or.i.i27 = or i64 %shl.i.i24, %conv2.i.i26
  %33 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port3.i, align 4
  %conv.i29 = zext i8 %34 to i32
  %call4.i30 = call i32 @tb_cfg_write(ptr noundef %28, ptr noundef nonnull %val, i64 noundef %or.i.i27, i32 noundef %conv.i29, i32 noundef 1, i32 noundef %add9, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i31, %if.end4.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i30, %if.end.i31 ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb4_port_unconfigure(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb4_port_set_configured(ptr noundef %port, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_configure_xdomain(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb4_set_xdomain_configured(ptr noundef %port, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_set_xdomain_configured(ptr nocapture noundef readonly %port, i1 noundef zeroext %configured) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %cap_usb4 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 7
  %1 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %cap_usb4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end
  %add = add i32 %2, 19
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool2.not = icmp eq i32 %call4.i, 0
  br i1 %tobool2.not, label %if.end4, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_port_read.exit
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, -17
  %masksel = select i1 %configured, i32 16, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %val, align 4
  %19 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i18 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %is_unplugged.i18 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_unplugged.i18, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i19 = icmp eq i8 %22, 0
  br i1 %tobool.not.i19, label %if.end.i31, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i31:                                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap_usb4, align 4
  %add9 = add i32 %24, 19
  %tb.i20 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %tb.i20 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb.i20, align 8
  %ctl.i21 = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctl.i21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl.i21, align 8
  %route_hi.i.i22 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %route_hi.i.i22 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i.i23 = load i64, ptr %route_hi.i.i22, align 4
  %30 = lshr i64 %bf.load.i.i23, 1
  %shl.i.i24 = and i64 %30, 9223372032559808512
  %route_lo.i.i25 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %route_lo.i.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i25, align 8
  %conv2.i.i26 = zext i32 %32 to i64
  %or.i.i27 = or i64 %shl.i.i24, %conv2.i.i26
  %33 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port3.i, align 4
  %conv.i29 = zext i8 %34 to i32
  %call4.i30 = call i32 @tb_cfg_write(ptr noundef %28, ptr noundef nonnull %val, i64 noundef %or.i.i27, i32 noundef %conv.i29, i32 noundef 1, i32 noundef %add9, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i31, %if.end4.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i30, %if.end.i31 ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @usb4_port_unconfigure_xdomain(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb4_set_xdomain_configured(ptr noundef %port, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_router_offline(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %val.i, align 4
  %call.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 9, ptr noundef nonnull %val.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %entry.usb4_port_set_router_offline.exit_crit_edge

entry.usb4_port_set_router_offline.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_set_router_offline.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1313166156, ptr %val.i, align 4
  %call2.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %val.i, i8 noundef zeroext 4) #6
  br label %usb4_port_set_router_offline.exit

usb4_port_set_router_offline.exit:                ; preds = %if.end.i, %entry.usb4_port_set_router_offline.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.usb4_port_set_router_offline.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_router_online(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %val.i, align 4
  %call.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 9, ptr noundef nonnull %val.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool1.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %entry.usb4_port_set_router_offline.exit_crit_edge

entry.usb4_port_set_router_offline.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_set_router_offline.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1313166156, ptr %val.i, align 4
  %call2.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %val.i, i8 noundef zeroext 4) #6
  br label %usb4_port_set_router_offline.exit

usb4_port_set_router_offline.exit:                ; preds = %if.end.i, %entry.usb4_port_set_router_offline.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ %call.i, %entry.usb4_port_set_router_offline.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_enumerate_retimers(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1297436229, ptr %val, align 4
  %call = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 8, ptr noundef nonnull %val, i8 noundef zeroext 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_port_sb_write(ptr nocapture noundef readonly %port, i32 noundef %target, i8 noundef zeroext %index, i8 noundef zeroext %reg, ptr noundef %buf, i8 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %size to i32
  %sub = add nuw nsw i32 %conv, 3
  %div64 = lshr i32 %sub, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %cap_usb4 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap_usb4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %buf, null
  br i1 %tobool1.not, label %if.end.if.end6_crit_edge, label %if.then2

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %size)
  %cmp.i = icmp ugt i8 %size, 64
  br i1 %cmp.i, label %if.then2.cleanup_crit_edge, label %if.end.i

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then2
  %sw.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i.i, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %usb4_port_write_data.exit, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb4_port_write_data.exit:                        ; preds = %if.end.i
  %add.i = add i32 %1, 2
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %11 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %11, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %13 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %14 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %15 to i32
  %call4.i.i = tail call i32 @tb_cfg_write(ptr noundef %9, ptr noundef nonnull %buf, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %add.i, i32 noundef %div64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool3.not = icmp eq i32 %call4.i.i, 0
  br i1 %tobool3.not, label %usb4_port_write_data.exit.if.end6_crit_edge, label %usb4_port_write_data.exit.cleanup_crit_edge

usb4_port_write_data.exit.cleanup_crit_edge:      ; preds = %usb4_port_write_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

usb4_port_write_data.exit.if.end6_crit_edge:      ; preds = %usb4_port_write_data.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

if.end6:                                          ; preds = %usb4_port_write_data.exit.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %conv7 = zext i8 %reg to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv7
  %shl10 = shl i32 %target, 16
  %and = and i32 %shl10, 458752
  %or9 = or i32 %or, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %target)
  %cmp = icmp eq i32 %target, 2
  %conv14 = zext i8 %index to i32
  %shl15 = shl nuw nsw i32 %conv14, 20
  %or16 = select i1 %cmp, i32 %shl15, i32 0
  %or11 = or i32 %or9, %or16
  %or18 = or i32 %or11, -2130706432
  %16 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %or18, ptr %val, align 4
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %17 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 20
  %19 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i, label %tb_port_write.exit, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_write.exit:                               ; preds = %if.end6
  %21 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cap_usb4, align 4
  %add20 = add i32 %22, 1
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 5
  %23 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 4
  %27 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %28 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %28, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %18, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %30 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %31 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %32 to i32
  %call4.i = call i32 @tb_cfg_write(ptr noundef %26, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add20, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool22.not = icmp eq i32 %call4.i, 0
  br i1 %tobool22.not, label %if.end24, label %tb_port_write.exit.cleanup_crit_edge

tb_port_write.exit.cleanup_crit_edge:             ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end24:                                         ; preds = %tb_port_write.exit
  %33 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cap_usb4, align 4
  %add26 = add i32 %34, 1
  %call27 = call fastcc i32 @usb4_port_wait_for_bit(ptr noundef %port, i32 noundef %add26, i32 noundef 0, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end24
  %35 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i68 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 20
  %37 = ptrtoint ptr %is_unplugged.i68 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_unplugged.i68, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i69 = icmp eq i8 %38, 0
  br i1 %tobool.not.i69, label %tb_port_read.exit, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end30
  %39 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cap_usb4, align 4
  %add32 = add i32 %40, 1
  %tb.i70 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 5
  %41 = ptrtoint ptr %tb.i70 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tb.i70, align 8
  %ctl.i71 = getelementptr inbounds %struct.tb, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %ctl.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctl.i71, align 8
  %route_hi.i.i72 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 1, i32 4
  %45 = ptrtoint ptr %route_hi.i.i72 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 8)
  %bf.load.i.i73 = load i64, ptr %route_hi.i.i72, align 4
  %46 = lshr i64 %bf.load.i.i73, 1
  %shl.i.i74 = and i64 %46, 9223372032559808512
  %route_lo.i.i75 = getelementptr inbounds %struct.tb_switch, ptr %36, i32 0, i32 1, i32 3
  %47 = ptrtoint ptr %route_lo.i.i75 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %route_lo.i.i75, align 8
  %conv2.i.i76 = zext i32 %48 to i64
  %or.i.i77 = or i64 %shl.i.i74, %conv2.i.i76
  %49 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %port3.i, align 4
  %conv.i79 = zext i8 %50 to i32
  %call4.i80 = call i32 @tb_cfg_read(ptr noundef %44, ptr noundef nonnull %val, i64 noundef %or.i.i77, i32 noundef %conv.i79, i32 noundef 1, i32 noundef %add32, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i80)
  %tobool34.not = icmp eq i32 %call4.i80, 0
  br i1 %tobool34.not, label %if.end36, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %tb_port_read.exit
  %51 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %val, align 4
  %and37 = and i32 %52, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end40, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end40:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %and41 = and i32 %52, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %. = select i1 %tobool42.not, i32 0, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.end36.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %tb_port_write.exit.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %usb4_port_write_data.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.i.i, %usb4_port_write_data.exit.cleanup_crit_edge ], [ %call4.i, %tb_port_write.exit.cleanup_crit_edge ], [ %call27, %if.end24.cleanup_crit_edge ], [ %call4.i80, %tb_port_read.exit.cleanup_crit_edge ], [ -19, %if.end36.cleanup_crit_edge ], [ %., %if.end40 ], [ -19, %if.end.i.cleanup_crit_edge ], [ -22, %if.then2.cleanup_crit_edge ], [ -19, %if.end6.cleanup_crit_edge ], [ -19, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @usb4_port_clx_supported(ptr nocapture noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %1 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 20
  %3 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %cap_usb4 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 7
  %5 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cap_usb4, align 4
  %add = add i32 %6, 18
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %2, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %10, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %val, align 4
  %and = and i32 %18, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1 = icmp ne i32 %and, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool1, %if.end ], [ false, %tb_port_read.exit.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_set_inbound_sbtx(ptr nocapture noundef readonly %port, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i5 = alloca i32, align 4
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %0 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1347769164, ptr %val.i.i, align 4
  %call.i.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.usb4_port_retimer_op.exit_crit_edge

entry.usb4_port_retimer_op.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call1.i.i, 500000000
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %do.body.i.i.usb4_port_retimer_op.exit_crit_edge

do.body.i.i.usb4_port_retimer_op.exit_crit_edge:  ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

if.end6.i.i:                                      ; preds = %do.body.i.i
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %val.i.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %2, label %usb4_port_retimer_op.exit.thread.loopexit43 [
    i32 0, label %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
    i32 542265925, label %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit.thread.loopexit37
    i32 1347769164, label %do.cond.i.i
  ]

if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

do.cond.i.i:                                      ; preds = %if.end6.i.i
  %call12.i.i = call i64 @ktime_get() #6
  %cmp.i.i.i.i = icmp slt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

usb4_port_retimer_op.exit.thread.loopexit37:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread.loopexit43:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread.loopexit:        ; preds = %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
  %retval.0.i.i.ph.ph = phi i32 [ -110, %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ %2, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread:                 ; preds = %usb4_port_retimer_op.exit.thread.loopexit, %usb4_port_retimer_op.exit.thread.loopexit43, %usb4_port_retimer_op.exit.thread.loopexit37, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ -95, %usb4_port_retimer_op.exit.thread.loopexit37 ], [ -5, %usb4_port_retimer_op.exit.thread.loopexit43 ], [ %retval.0.i.i.ph.ph, %usb4_port_retimer_op.exit.thread.loopexit ], [ -11, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

usb4_port_retimer_op.exit:                        ; preds = %do.body.i.i.usb4_port_retimer_op.exit_crit_edge, %entry.usb4_port_retimer_op.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %entry.usb4_port_retimer_op.exit_crit_edge ], [ %call3.i.i, %do.body.i.i.usb4_port_retimer_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -19, i32 %retval.0.i.i)
  %cmp.not = icmp eq i32 %retval.0.i.i, -19
  br i1 %cmp.not, label %if.end, label %usb4_port_retimer_op.exit.cleanup_crit_edge

usb4_port_retimer_op.exit.cleanup_crit_edge:      ; preds = %usb4_port_retimer_op.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %usb4_port_retimer_op.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i5) #6
  %4 = ptrtoint ptr %val.i.i5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1347769164, ptr %val.i.i5, align 4
  %call.i.i6 = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i5, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i6)
  %tobool.not.i.i7 = icmp eq i32 %call.i.i6, 0
  br i1 %tobool.not.i.i7, label %if.end.i.i10, label %if.end.usb4_port_retimer_op.exit23_crit_edge

if.end.usb4_port_retimer_op.exit23_crit_edge:     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23

if.end.i.i10:                                     ; preds = %if.end
  %call1.i.i8 = call i64 @ktime_get() #6
  %add.i.i.i9 = add i64 %call1.i.i8, 500000000
  br label %do.body.i.i13

do.body.i.i13:                                    ; preds = %do.cond.i.i19.do.body.i.i13_crit_edge, %if.end.i.i10
  %call3.i.i11 = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i5, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i11)
  %tobool4.not.i.i12 = icmp eq i32 %call3.i.i11, 0
  br i1 %tobool4.not.i.i12, label %if.end6.i.i14, label %do.body.i.i13.usb4_port_retimer_op.exit23.loopexit_crit_edge

do.body.i.i13.usb4_port_retimer_op.exit23.loopexit_crit_edge: ; preds = %do.body.i.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23.loopexit

if.end6.i.i14:                                    ; preds = %do.body.i.i13
  %5 = ptrtoint ptr %val.i.i5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i5, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %6, label %usb4_port_retimer_op.exit23.loopexit42 [
    i32 0, label %if.end6.i.i14.usb4_port_retimer_op.exit23.loopexit_crit_edge
    i32 542265925, label %if.end6.i.i14.usb4_port_retimer_op.exit23_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit23.loopexit36
    i32 1347769164, label %do.cond.i.i19
  ]

if.end6.i.i14.usb4_port_retimer_op.exit23_crit_edge: ; preds = %if.end6.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23

if.end6.i.i14.usb4_port_retimer_op.exit23.loopexit_crit_edge: ; preds = %if.end6.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23.loopexit

do.cond.i.i19:                                    ; preds = %if.end6.i.i14
  %call12.i.i17 = call i64 @ktime_get() #6
  %cmp.i.i.i.i18 = icmp slt i64 %call12.i.i17, %add.i.i.i9
  br i1 %cmp.i.i.i.i18, label %do.cond.i.i19.do.body.i.i13_crit_edge, label %do.cond.i.i19.usb4_port_retimer_op.exit23.loopexit_crit_edge

do.cond.i.i19.usb4_port_retimer_op.exit23.loopexit_crit_edge: ; preds = %do.cond.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23.loopexit

do.cond.i.i19.do.body.i.i13_crit_edge:            ; preds = %do.cond.i.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i13

usb4_port_retimer_op.exit23.loopexit36:           ; preds = %if.end6.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23

usb4_port_retimer_op.exit23.loopexit42:           ; preds = %if.end6.i.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit23

usb4_port_retimer_op.exit23.loopexit:             ; preds = %do.cond.i.i19.usb4_port_retimer_op.exit23.loopexit_crit_edge, %if.end6.i.i14.usb4_port_retimer_op.exit23.loopexit_crit_edge, %do.body.i.i13.usb4_port_retimer_op.exit23.loopexit_crit_edge
  %retval.0.i.i22.ph = phi i32 [ %call3.i.i11, %do.body.i.i13.usb4_port_retimer_op.exit23.loopexit_crit_edge ], [ %6, %if.end6.i.i14.usb4_port_retimer_op.exit23.loopexit_crit_edge ], [ -110, %do.cond.i.i19.usb4_port_retimer_op.exit23.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit23

usb4_port_retimer_op.exit23:                      ; preds = %usb4_port_retimer_op.exit23.loopexit, %usb4_port_retimer_op.exit23.loopexit42, %usb4_port_retimer_op.exit23.loopexit36, %if.end6.i.i14.usb4_port_retimer_op.exit23_crit_edge, %if.end.usb4_port_retimer_op.exit23_crit_edge
  %retval.0.i.i22 = phi i32 [ %call.i.i6, %if.end.usb4_port_retimer_op.exit23_crit_edge ], [ -95, %usb4_port_retimer_op.exit23.loopexit36 ], [ -5, %usb4_port_retimer_op.exit23.loopexit42 ], [ %retval.0.i.i22.ph, %usb4_port_retimer_op.exit23.loopexit ], [ -11, %if.end6.i.i14.usb4_port_retimer_op.exit23_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i5) #6
  br label %cleanup

cleanup:                                          ; preds = %usb4_port_retimer_op.exit23, %usb4_port_retimer_op.exit.cleanup_crit_edge, %usb4_port_retimer_op.exit.thread
  %retval.0 = phi i32 [ %retval.0.i.i22, %usb4_port_retimer_op.exit23 ], [ %retval.0.i.i, %usb4_port_retimer_op.exit.cleanup_crit_edge ], [ %retval.0.i.i.ph, %usb4_port_retimer_op.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_read(ptr nocapture noundef readonly %port, i8 noundef zeroext %index, i8 noundef zeroext %reg, ptr noundef %buf, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext %reg, ptr noundef %buf, i8 noundef zeroext %size)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_port_sb_read(ptr nocapture noundef readonly %port, i8 noundef zeroext %index, i8 noundef zeroext %reg, ptr noundef %buf, i8 noundef zeroext %size) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %size to i32
  %sub = add nuw nsw i32 %conv, 3
  %div1 = lshr i32 %sub, 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %cap_usb4 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 7
  %0 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cap_usb4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %conv1 = zext i8 %reg to i32
  %shl = shl nuw nsw i32 %conv, 8
  %or = or i32 %shl, %conv1
  %conv7 = zext i8 %index to i32
  %shl8 = shl nuw nsw i32 %conv7, 20
  %or4 = or i32 %or, %shl8
  %or11 = or i32 %or4, -2147352576
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or11, ptr %val, align 4
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %5 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %tb_port_write.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_write.exit:                               ; preds = %if.end
  %add13 = add i32 %1, 1
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %12 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %12, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %13 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %14 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %15 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %16 to i32
  %call4.i = call i32 @tb_cfg_write(ptr noundef %10, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add13, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool14.not = icmp eq i32 %call4.i, 0
  br i1 %tobool14.not, label %if.end16, label %tb_port_write.exit.cleanup_crit_edge

tb_port_write.exit.cleanup_crit_edge:             ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %tb_port_write.exit
  %17 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_usb4, align 4
  %add18 = add i32 %18, 1
  %call19 = call fastcc i32 @usb4_port_wait_for_bit(ptr noundef %port, i32 noundef %add18, i32 noundef 0, i32 noundef 500)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %19 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i3 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 20
  %21 = ptrtoint ptr %is_unplugged.i3 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_unplugged.i3, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i4 = icmp eq i8 %22, 0
  br i1 %tobool.not.i4, label %tb_port_read.exit, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end22
  %23 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cap_usb4, align 4
  %add24 = add i32 %24, 1
  %tb.i5 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 5
  %25 = ptrtoint ptr %tb.i5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tb.i5, align 8
  %ctl.i6 = getelementptr inbounds %struct.tb, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ctl.i6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctl.i6, align 8
  %route_hi.i.i7 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 4
  %29 = ptrtoint ptr %route_hi.i.i7 to i32
  call void @__asan_loadN_noabort(i32 %29, i32 8)
  %bf.load.i.i8 = load i64, ptr %route_hi.i.i7, align 4
  %30 = lshr i64 %bf.load.i.i8, 1
  %shl.i.i9 = and i64 %30, 9223372032559808512
  %route_lo.i.i10 = getelementptr inbounds %struct.tb_switch, ptr %20, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %route_lo.i.i10 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %route_lo.i.i10, align 8
  %conv2.i.i11 = zext i32 %32 to i64
  %or.i.i12 = or i64 %shl.i.i9, %conv2.i.i11
  %33 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %port3.i, align 4
  %conv.i14 = zext i8 %34 to i32
  %call4.i15 = call i32 @tb_cfg_read(ptr noundef %28, ptr noundef nonnull %val, i64 noundef %or.i.i12, i32 noundef %conv.i14, i32 noundef 1, i32 noundef %add24, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i15)
  %tobool26.not = icmp eq i32 %call4.i15, 0
  br i1 %tobool26.not, label %if.end28, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %tb_port_read.exit
  %35 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %val, align 4
  %and29 = and i32 %36, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  %and33 = and i32 %36, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end36, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end36:                                         ; preds = %if.end32
  %tobool37.not = icmp eq ptr %buf, null
  br i1 %tobool37.not, label %if.end36.cleanup_crit_edge, label %cond.true

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.true:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  %call38 = call fastcc i32 @usb4_port_read_data(ptr noundef %port, ptr noundef nonnull %buf, i32 noundef %div1)
  br label %cleanup

cleanup:                                          ; preds = %cond.true, %if.end36.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %if.end28.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %tb_port_write.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call4.i, %tb_port_write.exit.cleanup_crit_edge ], [ %call19, %if.end16.cleanup_crit_edge ], [ %call4.i15, %tb_port_read.exit.cleanup_crit_edge ], [ -19, %if.end28.cleanup_crit_edge ], [ -5, %if.end32.cleanup_crit_edge ], [ %call38, %cond.true ], [ 0, %if.end36.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ -19, %if.end22.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_write(ptr nocapture noundef readonly %port, i8 noundef zeroext %index, i8 noundef zeroext %reg, ptr noundef %buf, i8 noundef zeroext %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext %reg, ptr noundef %buf, i8 noundef zeroext %size)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_is_last(ptr nocapture noundef readonly %port, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %metadata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %metadata, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1414742348, ptr %val.i.i, align 4
  %call.i.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.usb4_port_retimer_op.exit.thread_crit_edge

entry.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call1.i.i, 500000000
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

if.end6.i.i:                                      ; preds = %do.body.i.i
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge [
    i32 0, label %if.end
    i32 542265925, label %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit.thread.loopexit13
    i32 1414742348, label %do.cond.i.i
  ]

if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

do.cond.i.i:                                      ; preds = %if.end6.i.i
  %call12.i.i = call i64 @ktime_get() #6
  %cmp.i.i.i.i = icmp slt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

usb4_port_retimer_op.exit.thread.loopexit:        ; preds = %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
  %retval.0.i.i.ph.ph = phi i32 [ -110, %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ %call3.i.i, %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ -11, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread.loopexit13:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread:                 ; preds = %usb4_port_retimer_op.exit.thread.loopexit13, %usb4_port_retimer_op.exit.thread.loopexit, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge, %entry.usb4_port_retimer_op.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i, %entry.usb4_port_retimer_op.exit.thread_crit_edge ], [ %retval.0.i.i.ph.ph, %usb4_port_retimer_op.exit.thread.loopexit ], [ -95, %usb4_port_retimer_op.exit.thread.loopexit13 ], [ -5, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %call.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 9, ptr noundef nonnull %metadata, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %cond.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %metadata, align 4
  %and = and i32 %6, 1
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %usb4_port_retimer_op.exit.thread
  %retval.0 = phi i32 [ %and, %cond.false ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.i.i.ph, %usb4_port_retimer_op.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_nvm_sector_size(ptr nocapture noundef readonly %port, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %metadata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %metadata, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1397968455, ptr %val.i.i, align 4
  %call.i.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.usb4_port_retimer_op.exit.thread_crit_edge

entry.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call1.i.i, 500000000
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

if.end6.i.i:                                      ; preds = %do.body.i.i
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %3, label %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge [
    i32 0, label %if.end
    i32 542265925, label %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit.thread.loopexit13
    i32 1397968455, label %do.cond.i.i
  ]

if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

do.cond.i.i:                                      ; preds = %if.end6.i.i
  %call12.i.i = call i64 @ktime_get() #6
  %cmp.i.i.i.i = icmp slt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

usb4_port_retimer_op.exit.thread.loopexit:        ; preds = %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
  %retval.0.i.i.ph.ph = phi i32 [ -110, %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ %call3.i.i, %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ -11, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread.loopexit13:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread:                 ; preds = %usb4_port_retimer_op.exit.thread.loopexit13, %usb4_port_retimer_op.exit.thread.loopexit, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge, %entry.usb4_port_retimer_op.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i, %entry.usb4_port_retimer_op.exit.thread_crit_edge ], [ %retval.0.i.i.ph.ph, %usb4_port_retimer_op.exit.thread.loopexit ], [ -95, %usb4_port_retimer_op.exit.thread.loopexit13 ], [ -5, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end6.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %call.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 9, ptr noundef nonnull %metadata, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not = icmp eq i32 %call.i, 0
  br i1 %tobool2.not, label %cond.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %metadata, align 4
  %and = and i32 %6, 16777215
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end.cleanup_crit_edge, %usb4_port_retimer_op.exit.thread
  %retval.0 = phi i32 [ %and, %cond.false ], [ %call.i, %if.end.cleanup_crit_edge ], [ %retval.0.i.i.ph, %usb4_port_retimer_op.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_nvm_set_offset(ptr nocapture noundef readonly %port, i8 noundef zeroext %index, i32 noundef %address) local_unnamed_addr #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %metadata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %and = and i32 %address, 16777212
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %metadata, align 4
  %call.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 9, ptr noundef nonnull %metadata, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %1 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1397772098, ptr %val.i.i, align 4
  %call.i.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.usb4_port_retimer_op.exit_crit_edge

if.end.usb4_port_retimer_op.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call1.i.i, 500000000
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge

do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.loopexit

if.end6.i.i:                                      ; preds = %do.body.i.i
  %2 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %3, label %usb4_port_retimer_op.exit.loopexit10 [
    i32 0, label %if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge
    i32 542265925, label %if.end6.i.i.usb4_port_retimer_op.exit_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit.loopexit9
    i32 1397772098, label %do.cond.i.i
  ]

if.end6.i.i.usb4_port_retimer_op.exit_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.loopexit

do.cond.i.i:                                      ; preds = %if.end6.i.i
  %call12.i.i = call i64 @ktime_get() #6
  %cmp.i.i.i.i = icmp slt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge

do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.loopexit

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

usb4_port_retimer_op.exit.loopexit9:              ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

usb4_port_retimer_op.exit.loopexit10:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

usb4_port_retimer_op.exit.loopexit:               ; preds = %do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge, %if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge, %do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call3.i.i, %do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge ], [ %3, %if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge ], [ -110, %do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit

usb4_port_retimer_op.exit:                        ; preds = %usb4_port_retimer_op.exit.loopexit, %usb4_port_retimer_op.exit.loopexit10, %usb4_port_retimer_op.exit.loopexit9, %if.end6.i.i.usb4_port_retimer_op.exit_crit_edge, %if.end.usb4_port_retimer_op.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.usb4_port_retimer_op.exit_crit_edge ], [ -95, %usb4_port_retimer_op.exit.loopexit9 ], [ -5, %usb4_port_retimer_op.exit.loopexit10 ], [ %retval.0.i.i.ph, %usb4_port_retimer_op.exit.loopexit ], [ -11, %if.end6.i.i.usb4_port_retimer_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %usb4_port_retimer_op.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %usb4_port_retimer_op.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_nvm_write(ptr noundef %port, i8 noundef zeroext %index, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.retimer_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %info, align 8, !annotation !81
  store ptr %port, ptr %info, align 8
  %index2 = getelementptr inbounds %struct.retimer_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %index2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %index, ptr %index2, align 4
  %call = tail call i32 @usb4_port_retimer_nvm_set_offset(ptr noundef %port, i8 noundef zeroext %index, i32 noundef %address)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = call i32 @tb_nvm_write_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @usb4_port_retimer_nvm_write_next_block, ptr noundef nonnull %info) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb4_port_retimer_nvm_write_next_block(ptr nocapture noundef readonly %data, i32 noundef %dwaddress, ptr noundef %buf, i32 noundef %dwords) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %index2 = getelementptr inbounds %struct.retimer_info, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  %dwords.tr = trunc i32 %dwords to i8
  %conv = shl i8 %dwords.tr, 2
  %call.i = tail call fastcc i32 @usb4_port_sb_write(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %3, i8 noundef zeroext 18, ptr noundef %buf, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %4 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1464552514, ptr %val.i.i, align 4
  %call.i.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %3, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.usb4_port_retimer_op.exit_crit_edge

if.end.usb4_port_retimer_op.exit_crit_edge:       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

if.end.i.i:                                       ; preds = %if.end
  %call1.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call1.i.i, 1000000000
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge

do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.loopexit

if.end6.i.i:                                      ; preds = %do.body.i.i
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %val.i.i, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %6, label %usb4_port_retimer_op.exit.loopexit13 [
    i32 0, label %if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge
    i32 542265925, label %if.end6.i.i.usb4_port_retimer_op.exit_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit.loopexit12
    i32 1464552514, label %do.cond.i.i
  ]

if.end6.i.i.usb4_port_retimer_op.exit_crit_edge:  ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.loopexit

do.cond.i.i:                                      ; preds = %if.end6.i.i
  %call12.i.i = call i64 @ktime_get() #6
  %cmp.i.i.i.i = icmp slt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge

do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.loopexit

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

usb4_port_retimer_op.exit.loopexit12:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

usb4_port_retimer_op.exit.loopexit13:             ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit

usb4_port_retimer_op.exit.loopexit:               ; preds = %do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge, %if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge, %do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call3.i.i, %do.body.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge ], [ %6, %if.end6.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge ], [ -110, %do.cond.i.i.usb4_port_retimer_op.exit.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit

usb4_port_retimer_op.exit:                        ; preds = %usb4_port_retimer_op.exit.loopexit, %usb4_port_retimer_op.exit.loopexit13, %usb4_port_retimer_op.exit.loopexit12, %if.end6.i.i.usb4_port_retimer_op.exit_crit_edge, %if.end.usb4_port_retimer_op.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i, %if.end.usb4_port_retimer_op.exit_crit_edge ], [ -95, %usb4_port_retimer_op.exit.loopexit12 ], [ -5, %usb4_port_retimer_op.exit.loopexit13 ], [ %retval.0.i.i.ph, %usb4_port_retimer_op.exit.loopexit ], [ -11, %if.end6.i.i.usb4_port_retimer_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %usb4_port_retimer_op.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %usb4_port_retimer_op.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_nvm_authenticate(ptr nocapture noundef readonly %port, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1213486401, ptr %val, align 4
  %call = call fastcc i32 @usb4_port_sb_write(ptr noundef %port, i32 noundef 2, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val, i8 noundef zeroext 4)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_nvm_authenticate_status(ptr nocapture noundef readonly %port, i8 noundef zeroext %index, ptr nocapture noundef writeonly %status) local_unnamed_addr #0 align 64 {
entry:
  %metadata = alloca i32, align 4
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %0 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %metadata, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !81
  %call.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 8, ptr noundef nonnull %val, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %val, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %3, label %sw.default [
    i32 0, label %sw.bb
    i32 542265925, label %sw.bb1
    i32 1145914145, label %if.end.cleanup_crit_edge
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  %call.i15 = call fastcc i32 @usb4_port_sb_read(ptr noundef %port, i8 noundef zeroext %index, i8 noundef zeroext 9, ptr noundef nonnull %metadata, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool3.not = icmp eq i32 %call.i15, 0
  br i1 %tobool3.not, label %if.end5, label %sw.bb1.cleanup_crit_edge

sw.bb1.cleanup_crit_edge:                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %metadata, align 4
  %and = and i32 %7, 63
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %status, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %sw.default, %if.end5, %sw.bb1.cleanup_crit_edge, %sw.bb, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %sw.default ], [ 0, %if.end5 ], [ 0, %sw.bb ], [ %call.i, %entry.cleanup_crit_edge ], [ %call.i15, %sw.bb1.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_port_retimer_nvm_read(ptr noundef %port, i8 noundef zeroext %index, i32 noundef %address, ptr noundef %buf, i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  %info = alloca %struct.retimer_info, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %info) #6
  %0 = ptrtoint ptr %info to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %info, align 8, !annotation !81
  store ptr %port, ptr %info, align 8
  %index2 = getelementptr inbounds %struct.retimer_info, ptr %info, i32 0, i32 1
  %1 = ptrtoint ptr %index2 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %index, ptr %index2, align 4
  %call = call i32 @tb_nvm_read_data(i32 noundef %address, ptr noundef %buf, i32 noundef %size, i32 noundef 3, ptr noundef nonnull @usb4_port_retimer_nvm_read_block, ptr noundef nonnull %info) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %info) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @usb4_port_retimer_nvm_read_block(ptr nocapture noundef readonly %data, i32 noundef %dwaddress, ptr noundef %buf, i32 noundef %dwords) #0 align 64 {
entry:
  %val.i.i = alloca i32, align 4
  %metadata = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %index2 = getelementptr inbounds %struct.retimer_info, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %index2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %metadata) #6
  %shl = shl i32 %dwaddress, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dwords)
  %cmp = icmp ult i32 %dwords, 16
  %shl3 = shl i32 %dwords, 24
  %or = select i1 %cmp, i32 %shl3, i32 0
  %storemerge = or i32 %or, %shl
  %4 = ptrtoint ptr %metadata to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %storemerge, ptr %metadata, align 4
  %call.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %3, i8 noundef zeroext 9, ptr noundef nonnull %metadata, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end5, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i.i) #6
  %5 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1381123649, ptr %val.i.i, align 4
  %call.i.i = call fastcc i32 @usb4_port_sb_write(ptr noundef %1, i32 noundef 2, i8 noundef zeroext %3, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end5.usb4_port_retimer_op.exit.thread_crit_edge

if.end5.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

if.end.i.i:                                       ; preds = %if.end5
  %call1.i.i = call i64 @ktime_get() #6
  %add.i.i.i = add i64 %call1.i.i, 500000000
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.cond.i.i.do.body.i.i_crit_edge, %if.end.i.i
  %call3.i.i = call fastcc i32 @usb4_port_sb_read(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext 8, ptr noundef nonnull %val.i.i, i8 noundef zeroext 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.not.i.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end6.i.i, label %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

if.end6.i.i:                                      ; preds = %do.body.i.i
  %6 = ptrtoint ptr %val.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %7, label %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge [
    i32 0, label %if.end9
    i32 542265925, label %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
    i32 1145914145, label %usb4_port_retimer_op.exit.thread.loopexit30
    i32 1381123649, label %do.cond.i.i
  ]

if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge: ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

do.cond.i.i:                                      ; preds = %if.end6.i.i
  %call12.i.i = call i64 @ktime_get() #6
  %cmp.i.i.i.i = icmp slt i64 %call12.i.i, %add.i.i.i
  br i1 %cmp.i.i.i.i, label %do.cond.i.i.do.body.i.i_crit_edge, label %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge

do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge: ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread.loopexit

do.cond.i.i.do.body.i.i_crit_edge:                ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i.i

usb4_port_retimer_op.exit.thread.loopexit:        ; preds = %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge, %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge
  %retval.0.i.i.ph.ph = phi i32 [ -110, %do.cond.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ %call3.i.i, %do.body.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ], [ -11, %if.end6.i.i.usb4_port_retimer_op.exit.thread.loopexit_crit_edge ]
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread.loopexit30:      ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_port_retimer_op.exit.thread

usb4_port_retimer_op.exit.thread:                 ; preds = %usb4_port_retimer_op.exit.thread.loopexit30, %usb4_port_retimer_op.exit.thread.loopexit, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge, %if.end5.usb4_port_retimer_op.exit.thread_crit_edge
  %retval.0.i.i.ph = phi i32 [ %call.i.i, %if.end5.usb4_port_retimer_op.exit.thread_crit_edge ], [ %retval.0.i.i.ph.ph, %usb4_port_retimer_op.exit.thread.loopexit ], [ -95, %usb4_port_retimer_op.exit.thread.loopexit30 ], [ -5, %if.end6.i.i.usb4_port_retimer_op.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  br label %cleanup

if.end9:                                          ; preds = %if.end6.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i.i) #6
  %dwords.tr = trunc i32 %dwords to i8
  %conv = shl i8 %dwords.tr, 2
  %call.i25 = call fastcc i32 @usb4_port_sb_read(ptr noundef %1, i8 noundef zeroext %3, i8 noundef zeroext 18, ptr noundef %buf, i8 noundef zeroext %conv) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %usb4_port_retimer_op.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i25, %if.end9 ], [ %call.i, %entry.cleanup_crit_edge ], [ %retval.0.i.i.ph, %usb4_port_retimer_op.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %metadata) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_usb3_port_max_link_rate(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tb_port_is_usb3_down.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_is_usb3_down.exit:                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %2 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %2, 2306125583702032384
  br i1 %cmp.i, label %tb_port_is_usb3_down.exit.if.end_crit_edge, label %tb_port_is_usb3_up.exit

tb_port_is_usb3_down.exit.if.end_crit_edge:       ; preds = %tb_port_is_usb3_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tb_port_is_usb3_up.exit:                          ; preds = %tb_port_is_usb3_down.exit
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 12)
  %bf.load.i13 = load i96, ptr %type.i, align 4
  %4 = and i96 %bf.load.i13, 18446742974197923840
  %cmp.i14 = icmp eq i96 %4, 2306126683213660160
  br i1 %cmp.i14, label %tb_port_is_usb3_up.exit.if.end_crit_edge, label %tb_port_is_usb3_up.exit.cleanup_crit_edge

tb_port_is_usb3_up.exit.cleanup_crit_edge:        ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_is_usb3_up.exit.if.end_crit_edge:         ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %tb_port_is_usb3_up.exit.if.end_crit_edge, %tb_port_is_usb3_down.exit.if.end_crit_edge
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i16 = icmp eq i8 %8, 0
  br i1 %tobool.not.i16, label %tb_port_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 6
  %9 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cap_adap, align 4
  %add = add i32 %10, 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %16 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %16, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %18 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %19 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %20 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %14, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end4, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %23 = and i32 %22, 520192
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %23)
  %cmp = icmp eq i32 %23, 4096
  %cond = select i1 %cmp, i32 20000, i32 10000
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %tb_port_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_port_is_usb3_up.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end4 ], [ -22, %tb_port_is_usb3_up.exit.cleanup_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_usb3_port_actual_link_rate(ptr noundef readonly %port) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tb_port_is_usb3_down.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_is_usb3_down.exit:                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %2 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %2, 2306125583702032384
  br i1 %cmp.i, label %tb_port_is_usb3_down.exit.if.end_crit_edge, label %tb_port_is_usb3_up.exit

tb_port_is_usb3_down.exit.if.end_crit_edge:       ; preds = %tb_port_is_usb3_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

tb_port_is_usb3_up.exit:                          ; preds = %tb_port_is_usb3_down.exit
  %3 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %3, i32 12)
  %bf.load.i17 = load i96, ptr %type.i, align 4
  %4 = and i96 %bf.load.i17, 18446742974197923840
  %cmp.i18 = icmp eq i96 %4, 2306126683213660160
  br i1 %cmp.i18, label %tb_port_is_usb3_up.exit.if.end_crit_edge, label %tb_port_is_usb3_up.exit.cleanup_crit_edge

tb_port_is_usb3_up.exit.cleanup_crit_edge:        ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_is_usb3_up.exit.if.end_crit_edge:         ; preds = %tb_port_is_usb3_up.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %tb_port_is_usb3_up.exit.if.end_crit_edge, %tb_port_is_usb3_down.exit.if.end_crit_edge
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %5 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 20
  %7 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i20 = icmp eq i8 %8, 0
  br i1 %tobool.not.i20, label %tb_port_read.exit, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 6
  %9 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cap_adap, align 4
  %add = add i32 %10, 4
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 5
  %11 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 1, i32 4
  %15 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %15, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %16 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %16, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %6, i32 0, i32 1, i32 3
  %17 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %18 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %19 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %20 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %14, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end4, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %tb_port_read.exit
  %21 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val, align 4
  %and = and i32 %22, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %and8 = and i32 %22, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and8)
  %cmp = icmp eq i32 %and8, 1
  %cond = select i1 %cmp, i32 20000, i32 10000
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end4.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_port_is_usb3_up.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %if.end7 ], [ -22, %tb_port_is_usb3_up.exit.cleanup_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_usb3_port_allocated_bandwidth(ptr noundef %port, ptr nocapture noundef writeonly %upstream_bw, ptr nocapture noundef writeonly %downstream_bw) local_unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  %scale.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc i32 @usb4_usb3_port_cm_request(ptr noundef %port, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %0 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val.i, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale.i) #6
  %1 = ptrtoint ptr %scale.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scale.i, align 4, !annotation !81
  %cap_adap.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 6
  %sw.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i.i, align 4
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %tb_port_read.exit.i, label %if.end.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge

if.end.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_usb3_port_read_allocated_bandwidth.exit

tb_port_read.exit.i:                              ; preds = %if.end
  %6 = ptrtoint ptr %cap_adap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap_adap.i, align 4
  %add.i = add i32 %7, 2
  %tb.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %tb.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb.i.i, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %13 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %15 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %port3.i.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port3.i.i, align 4
  %conv.i.i = zext i8 %17 to i32
  %call4.i.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %val.i, i64 noundef %or.i.i.i, i32 noundef %conv.i.i, i32 noundef 1, i32 noundef %add.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %tb_port_read.exit.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge

tb_port_read.exit.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge: ; preds = %tb_port_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_usb3_port_read_allocated_bandwidth.exit

if.end.i:                                         ; preds = %tb_port_read.exit.i
  %18 = ptrtoint ptr %sw.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw.i.i, align 4
  %is_unplugged.i23.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %is_unplugged.i23.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_unplugged.i23.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i24.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i24.i, label %tb_port_read.exit38.i, label %if.end.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge

if.end.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_usb3_port_read_allocated_bandwidth.exit

tb_port_read.exit38.i:                            ; preds = %if.end.i
  %22 = ptrtoint ptr %cap_adap.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cap_adap.i, align 4
  %add2.i = add i32 %23, 3
  %tb.i25.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %tb.i25.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tb.i25.i, align 8
  %ctl.i26.i = getelementptr inbounds %struct.tb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctl.i26.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl.i26.i, align 8
  %route_hi.i.i27.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i.i27.i to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i.i28.i = load i64, ptr %route_hi.i.i27.i, align 4
  %29 = lshr i64 %bf.load.i.i28.i, 1
  %shl.i.i29.i = and i64 %29, 9223372032559808512
  %route_lo.i.i30.i = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i.i30.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i.i30.i, align 8
  %conv2.i.i31.i = zext i32 %31 to i64
  %or.i.i32.i = or i64 %shl.i.i29.i, %conv2.i.i31.i
  %32 = ptrtoint ptr %port3.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port3.i.i, align 4
  %conv.i34.i = zext i8 %33 to i32
  %call4.i35.i = call i32 @tb_cfg_read(ptr noundef %27, ptr noundef nonnull %scale.i, i64 noundef %or.i.i32.i, i32 noundef %conv.i34.i, i32 noundef 1, i32 noundef %add2.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i35.i)
  %tobool4.not.i = icmp eq i32 %call4.i35.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %tb_port_read.exit38.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge

tb_port_read.exit38.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge: ; preds = %tb_port_read.exit38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_usb3_port_read_allocated_bandwidth.exit

if.end6.i:                                        ; preds = %tb_port_read.exit38.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %scale.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scale.i, align 4
  %and.i = and i32 %35, 63
  %36 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val.i, align 4
  %and7.i = shl i32 %37, 9
  %mul.i.i = and i32 %and7.i, 2096640
  %shl.i.i = shl i32 %mul.i.i, %and.i
  %mul1.i.i = mul i32 %shl.i.i, 8000
  %add.i.i = add i32 %mul1.i.i, 500000
  %div2.i.i = udiv i32 %add.i.i, 1000000
  %38 = ptrtoint ptr %upstream_bw to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div2.i.i, ptr %upstream_bw, align 4
  %39 = lshr i32 %37, 3
  %mul.i40.i = and i32 %39, 2096640
  %shl.i42.i = shl i32 %mul.i40.i, %and.i
  %mul1.i43.i = mul i32 %shl.i42.i, 8000
  %add.i44.i = add i32 %mul1.i43.i, 500000
  %div2.i45.i = udiv i32 %add.i44.i, 1000000
  %40 = ptrtoint ptr %downstream_bw to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div2.i45.i, ptr %downstream_bw, align 4
  br label %usb4_usb3_port_read_allocated_bandwidth.exit

usb4_usb3_port_read_allocated_bandwidth.exit:     ; preds = %if.end6.i, %tb_port_read.exit38.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge, %if.end.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge, %tb_port_read.exit.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge, %if.end.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end6.i ], [ %call4.i.i, %tb_port_read.exit.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge ], [ %call4.i35.i, %tb_port_read.exit38.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge ], [ -19, %if.end.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge ], [ -19, %if.end.i.usb4_usb3_port_read_allocated_bandwidth.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  %call.i7 = call fastcc i32 @usb4_usb3_port_cm_request(ptr noundef %port, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %usb4_usb3_port_read_allocated_bandwidth.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %usb4_usb3_port_read_allocated_bandwidth.exit ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_usb3_port_allocate_bandwidth(ptr noundef %port, ptr nocapture noundef %upstream_bw, ptr nocapture noundef %downstream_bw) local_unnamed_addr #0 align 64 {
entry:
  %consumed_up = alloca i32, align 4
  %consumed_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %consumed_up) #6
  %0 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %consumed_up, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %consumed_down) #6
  %1 = ptrtoint ptr %consumed_down to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %consumed_down, align 4, !annotation !81
  %call.i = tail call fastcc i32 @usb4_usb3_port_cm_request(ptr noundef %port, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @usb4_usb3_port_read_consumed_bandwidth(ptr noundef %port, ptr noundef nonnull %consumed_up, ptr noundef nonnull %consumed_down)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_request_crit_edge

if.end.err_request_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_request

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %upstream_bw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %upstream_bw, align 4
  %4 = ptrtoint ptr %consumed_up to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %consumed_up, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %3, i32 %5)
  %7 = ptrtoint ptr %downstream_bw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %downstream_bw, align 4
  %9 = ptrtoint ptr %consumed_down to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %consumed_down, align 4
  %11 = tail call i32 @llvm.smax.i32(i32 %8, i32 %10)
  %call11 = tail call fastcc i32 @usb4_usb3_port_write_allocated_bandwidth(ptr noundef %port, i32 noundef %6, i32 noundef %11)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end4.err_request_crit_edge

if.end4.err_request_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_request

if.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %upstream_bw to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %6, ptr %upstream_bw, align 4
  %13 = ptrtoint ptr %downstream_bw to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %11, ptr %downstream_bw, align 4
  br label %err_request

err_request:                                      ; preds = %if.end14, %if.end4.err_request_crit_edge, %if.end.err_request_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_request_crit_edge ], [ %call11, %if.end4.err_request_crit_edge ], [ 0, %if.end14 ]
  %call.i38 = tail call fastcc i32 @usb4_usb3_port_cm_request(ptr noundef %port, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %err_request, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_request ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %consumed_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %consumed_up) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_usb3_port_read_consumed_bandwidth(ptr nocapture noundef readonly %port, ptr nocapture noundef writeonly %upstream_bw, ptr nocapture noundef writeonly %downstream_bw) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %scale = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale) #6
  %1 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scale, align 4, !annotation !81
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 6
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %6 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap_adap, align 4
  %add = add i32 %7, 1
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %13 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %15 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %17 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  %18 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i23 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 20
  %20 = ptrtoint ptr %is_unplugged.i23 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %is_unplugged.i23, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i24 = icmp eq i8 %21, 0
  br i1 %tobool.not.i24, label %tb_port_read.exit38, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit38:                              ; preds = %if.end
  %22 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cap_adap, align 4
  %add2 = add i32 %23, 3
  %tb.i25 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 5
  %24 = ptrtoint ptr %tb.i25 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tb.i25, align 8
  %ctl.i26 = getelementptr inbounds %struct.tb, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %ctl.i26 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctl.i26, align 8
  %route_hi.i.i27 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 4
  %28 = ptrtoint ptr %route_hi.i.i27 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 8)
  %bf.load.i.i28 = load i64, ptr %route_hi.i.i27, align 4
  %29 = lshr i64 %bf.load.i.i28, 1
  %shl.i.i29 = and i64 %29, 9223372032559808512
  %route_lo.i.i30 = getelementptr inbounds %struct.tb_switch, ptr %19, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %route_lo.i.i30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %route_lo.i.i30, align 8
  %conv2.i.i31 = zext i32 %31 to i64
  %or.i.i32 = or i64 %shl.i.i29, %conv2.i.i31
  %32 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %port3.i, align 4
  %conv.i34 = zext i8 %33 to i32
  %call4.i35 = call i32 @tb_cfg_read(ptr noundef %27, ptr noundef nonnull %scale, i64 noundef %or.i.i32, i32 noundef %conv.i34, i32 noundef 1, i32 noundef %add2, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i35)
  %tobool4.not = icmp eq i32 %call4.i35, 0
  br i1 %tobool4.not, label %if.end6, label %tb_port_read.exit38.cleanup_crit_edge

tb_port_read.exit38.cleanup_crit_edge:            ; preds = %tb_port_read.exit38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %tb_port_read.exit38
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %scale, align 4
  %and = and i32 %35, 63
  %36 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val, align 4
  %and7 = shl i32 %37, 9
  %mul.i = and i32 %and7, 2096640
  %shl.i = shl i32 %mul.i, %and
  %mul1.i = mul i32 %shl.i, 8000
  %add.i = add i32 %mul1.i, 500000
  %div2.i = udiv i32 %add.i, 1000000
  %38 = ptrtoint ptr %upstream_bw to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div2.i, ptr %upstream_bw, align 4
  %39 = lshr i32 %37, 3
  %mul.i40 = and i32 %39, 2096640
  %shl.i42 = shl i32 %mul.i40, %and
  %mul1.i43 = mul i32 %shl.i42, 8000
  %add.i44 = add i32 %mul1.i43, 500000
  %div2.i45 = udiv i32 %add.i44, 1000000
  %40 = ptrtoint ptr %downstream_bw to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div2.i45, ptr %downstream_bw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %tb_port_read.exit38.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i35, %tb_port_read.exit38.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_usb3_port_write_allocated_bandwidth(ptr nocapture noundef readonly %port, i32 noundef %upstream_bw, i32 noundef %downstream_bw) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  %scale = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scale) #6
  %1 = ptrtoint ptr %scale to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %scale, align 4, !annotation !81
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 6
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %2 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %entry
  %6 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cap_adap, align 4
  %add = add i32 %7, 3
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %13 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %15 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %16 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %17 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %11, ptr noundef nonnull %scale, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_read.exit
  %18 = ptrtoint ptr %scale to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %scale, align 4
  %and = and i32 %19, 63
  store i32 %and, ptr %scale, align 4
  %mul1.i = mul i32 %upstream_bw, 1000000
  %div.i = udiv i32 %mul1.i, 8000
  %shl.i = shl i32 512, %and
  %add.i = add i32 %shl.i, -1
  %sub.i = add i32 %add.i, %div.i
  %20 = add nuw nsw i32 %and, 9
  %div46.i = lshr i32 %sub.i, %20
  %mul1.i28 = mul i32 %downstream_bw, 1000000
  %div.i29 = udiv i32 %mul1.i28, 8000
  %sub.i33 = add i32 %add.i, %div.i29
  %div46.i34 = lshr i32 %sub.i33, %20
  %21 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i36 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %is_unplugged.i36 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_unplugged.i36, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i37 = icmp eq i8 %24, 0
  br i1 %tobool.not.i37, label %tb_port_read.exit51, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit51:                              ; preds = %if.end
  %25 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap_adap, align 4
  %add5 = add i32 %26, 2
  %tb.i38 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 5
  %27 = ptrtoint ptr %tb.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tb.i38, align 8
  %ctl.i39 = getelementptr inbounds %struct.tb, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ctl.i39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctl.i39, align 8
  %route_hi.i.i40 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %route_hi.i.i40 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load.i.i41 = load i64, ptr %route_hi.i.i40, align 4
  %32 = lshr i64 %bf.load.i.i41, 1
  %shl.i.i42 = and i64 %32, 9223372032559808512
  %route_lo.i.i43 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %route_lo.i.i43 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %route_lo.i.i43, align 8
  %conv2.i.i44 = zext i32 %34 to i64
  %or.i.i45 = or i64 %shl.i.i42, %conv2.i.i44
  %35 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port3.i, align 4
  %conv.i47 = zext i8 %36 to i32
  %call4.i48 = call i32 @tb_cfg_read(ptr noundef %30, ptr noundef nonnull %val, i64 noundef %or.i.i45, i32 noundef %conv.i47, i32 noundef 1, i32 noundef %add5, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i48)
  %tobool7.not = icmp eq i32 %call4.i48, 0
  br i1 %tobool7.not, label %if.end9, label %tb_port_read.exit51.cleanup_crit_edge

tb_port_read.exit51.cleanup_crit_edge:            ; preds = %tb_port_read.exit51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %tb_port_read.exit51
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and10 = and i32 %38, -16777216
  %shl = shl i32 %div46.i34, 12
  %or = or i32 %shl, %div46.i
  %or11 = or i32 %or, %and10
  store i32 %or11, ptr %val, align 4
  %39 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i53 = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 20
  %41 = ptrtoint ptr %is_unplugged.i53 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %is_unplugged.i53, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i54 = icmp eq i8 %42, 0
  br i1 %tobool.not.i54, label %if.end.i66, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i66:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %cap_adap, align 4
  %add13 = add i32 %44, 2
  %tb.i55 = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 5
  %45 = ptrtoint ptr %tb.i55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tb.i55, align 8
  %ctl.i56 = getelementptr inbounds %struct.tb, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %ctl.i56 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctl.i56, align 8
  %route_hi.i.i57 = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 1, i32 4
  %49 = ptrtoint ptr %route_hi.i.i57 to i32
  call void @__asan_loadN_noabort(i32 %49, i32 8)
  %bf.load.i.i58 = load i64, ptr %route_hi.i.i57, align 4
  %50 = lshr i64 %bf.load.i.i58, 1
  %shl.i.i59 = and i64 %50, 9223372032559808512
  %route_lo.i.i60 = getelementptr inbounds %struct.tb_switch, ptr %40, i32 0, i32 1, i32 3
  %51 = ptrtoint ptr %route_lo.i.i60 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %route_lo.i.i60, align 8
  %conv2.i.i61 = zext i32 %52 to i64
  %or.i.i62 = or i64 %shl.i.i59, %conv2.i.i61
  %53 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %port3.i, align 4
  %conv.i64 = zext i8 %54 to i32
  %call4.i65 = call i32 @tb_cfg_write(ptr noundef %48, ptr noundef nonnull %val, i64 noundef %or.i.i62, i32 noundef %conv.i64, i32 noundef 1, i32 noundef %add13, i32 noundef 1) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end.i66, %if.end9.cleanup_crit_edge, %tb_port_read.exit51.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i48, %tb_port_read.exit51.cleanup_crit_edge ], [ %call4.i65, %if.end.i66 ], [ -19, %if.end9.cleanup_crit_edge ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scale) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @usb4_usb3_port_release_bandwidth(ptr noundef %port, ptr nocapture noundef writeonly %upstream_bw, ptr nocapture noundef writeonly %downstream_bw) local_unnamed_addr #0 align 64 {
entry:
  %consumed_up = alloca i32, align 4
  %consumed_down = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %consumed_up) #6
  %0 = ptrtoint ptr %consumed_up to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %consumed_up, align 4, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %consumed_down) #6
  %1 = ptrtoint ptr %consumed_down to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %consumed_down, align 4, !annotation !81
  %call.i = tail call fastcc i32 @usb4_usb3_port_cm_request(ptr noundef %port, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = call fastcc i32 @usb4_usb3_port_read_consumed_bandwidth(ptr noundef %port, ptr noundef nonnull %consumed_up, ptr noundef nonnull %consumed_down)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_request_crit_edge

if.end.err_request_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_request

if.end4:                                          ; preds = %if.end
  %2 = ptrtoint ptr %consumed_up to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %consumed_up, align 4
  %4 = tail call i32 @llvm.smax.i32(i32 %3, i32 1000)
  %5 = ptrtoint ptr %consumed_down to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %consumed_down, align 4
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1000)
  %call10 = tail call fastcc i32 @usb4_usb3_port_write_allocated_bandwidth(ptr noundef %port, i32 noundef %4, i32 noundef %7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end4.err_request_crit_edge

if.end4.err_request_crit_edge:                    ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_request

if.end13:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %upstream_bw to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %4, ptr %upstream_bw, align 4
  %9 = ptrtoint ptr %downstream_bw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %downstream_bw, align 4
  br label %err_request

err_request:                                      ; preds = %if.end13, %if.end4.err_request_crit_edge, %if.end.err_request_crit_edge
  %ret.0 = phi i32 [ %call1, %if.end.err_request_crit_edge ], [ %call10, %if.end4.err_request_crit_edge ], [ 0, %if.end13 ]
  %call.i24 = tail call fastcc i32 @usb4_usb3_port_cm_request(ptr noundef %port, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %err_request, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_request ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %consumed_down) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %consumed_up) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_read(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tb_cfg_write(ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__usb4_switch_op(ptr noundef %sw, i16 noundef zeroext %opcode, ptr noundef %metadata, ptr noundef %status, ptr noundef %tx_data, i32 noundef %tx_dwords, ptr noundef %rx_data, i32 noundef %rx_dwords) unnamed_addr #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tb = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %tx_dwords)
  %cmp = icmp ugt i32 %tx_dwords, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %rx_dwords)
  %cmp2 = icmp ugt i32 %rx_dwords, 16
  %or.cond = or i1 %cmp, %cmp2
  br i1 %or.cond, label %entry.cleanup10_crit_edge, label %if.end

entry.cleanup10_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tb, align 8
  %cm_ops1 = getelementptr inbounds %struct.tb, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %cm_ops1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cm_ops1, align 4
  %usb4_switch_op = getelementptr inbounds %struct.tb_cm_ops, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %usb4_switch_op to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %usb4_switch_op, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end8_crit_edge, label %if.then3

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.then3:                                         ; preds = %if.end
  %call = tail call i32 %5(ptr noundef %sw, i16 noundef zeroext %opcode, ptr noundef %metadata, ptr noundef %status, ptr noundef %tx_data, i32 noundef %tx_dwords, ptr noundef %rx_data, i32 noundef %rx_dwords) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -95, i32 %call)
  %cmp5.not = icmp eq i32 %call, -95
  br i1 %cmp5.not, label %if.then3.if.end8_crit_edge, label %if.then3.cleanup10_crit_edge

if.then3.cleanup10_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup10

if.then3.if.end8_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8

if.end8:                                          ; preds = %if.then3.if.end8_crit_edge, %if.end.if.end8_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #6
  %tobool.not.i = icmp eq ptr %metadata, null
  br i1 %tobool.not.i, label %if.end8.if.end3.i_crit_edge, label %if.then.i

if.end8.if.end3.i_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.then.i:                                        ; preds = %if.end8
  %is_unplugged.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %6 = ptrtoint ptr %is_unplugged.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %is_unplugged.i.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i.i, label %tb_sw_write.exit.i, label %if.then.i.usb4_native_switch_op.exit_crit_edge

if.then.i.usb4_native_switch_op.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_write.exit.i:                               ; preds = %if.then.i
  %8 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tb, align 8
  %ctl.i.i = getelementptr inbounds %struct.tb, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %ctl.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctl.i.i, align 8
  %route_hi.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %12 = ptrtoint ptr %route_hi.i.i.i to i32
  call void @__asan_loadN_noabort(i32 %12, i32 8)
  %bf.load.i.i.i = load i64, ptr %route_hi.i.i.i, align 4
  %13 = lshr i64 %bf.load.i.i.i, 1
  %shl.i.i.i = and i64 %13, 9223372032559808512
  %route_lo.i.i.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %route_lo.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %route_lo.i.i.i, align 8
  %conv2.i.i.i = zext i32 %15 to i64
  %or.i.i.i = or i64 %shl.i.i.i, %conv2.i.i.i
  %call1.i.i = tail call i32 @tb_cfg_write(ptr noundef %11, ptr noundef nonnull %metadata, i64 noundef %or.i.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 25, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool1.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool1.not.i, label %tb_sw_write.exit.i.if.end3.i_crit_edge, label %tb_sw_write.exit.i.usb4_native_switch_op.exit_crit_edge

tb_sw_write.exit.i.usb4_native_switch_op.exit_crit_edge: ; preds = %tb_sw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_write.exit.i.if.end3.i_crit_edge:           ; preds = %tb_sw_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3.i

if.end3.i:                                        ; preds = %tb_sw_write.exit.i.if.end3.i_crit_edge, %if.end8.if.end3.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tx_dwords)
  %tobool4.not.i = icmp eq i32 %tx_dwords, 0
  br i1 %tobool4.not.i, label %if.end3.i.if.end10.i_crit_edge, label %if.then5.i

if.end3.i.if.end10.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then5.i:                                       ; preds = %if.end3.i
  %is_unplugged.i71.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %16 = ptrtoint ptr %is_unplugged.i71.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %is_unplugged.i71.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i72.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i72.i, label %tb_sw_write.exit84.i, label %if.then5.i.usb4_native_switch_op.exit_crit_edge

if.then5.i.usb4_native_switch_op.exit_crit_edge:  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_write.exit84.i:                             ; preds = %if.then5.i
  %18 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tb, align 8
  %ctl.i74.i = getelementptr inbounds %struct.tb, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %ctl.i74.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctl.i74.i, align 8
  %route_hi.i.i75.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %22 = ptrtoint ptr %route_hi.i.i75.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 8)
  %bf.load.i.i76.i = load i64, ptr %route_hi.i.i75.i, align 4
  %23 = lshr i64 %bf.load.i.i76.i, 1
  %shl.i.i77.i = and i64 %23, 9223372032559808512
  %route_lo.i.i78.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %route_lo.i.i78.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %route_lo.i.i78.i, align 8
  %conv2.i.i79.i = zext i32 %25 to i64
  %or.i.i80.i = or i64 %shl.i.i77.i, %conv2.i.i79.i
  %call1.i81.i = tail call i32 @tb_cfg_write(ptr noundef %21, ptr noundef %tx_data, i64 noundef %or.i.i80.i, i32 noundef 0, i32 noundef 2, i32 noundef 9, i32 noundef %tx_dwords) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i81.i)
  %tobool7.not.i = icmp eq i32 %call1.i81.i, 0
  br i1 %tobool7.not.i, label %tb_sw_write.exit84.i.if.end10.i_crit_edge, label %tb_sw_write.exit84.i.usb4_native_switch_op.exit_crit_edge

tb_sw_write.exit84.i.usb4_native_switch_op.exit_crit_edge: ; preds = %tb_sw_write.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_write.exit84.i.if.end10.i_crit_edge:        ; preds = %tb_sw_write.exit84.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %tb_sw_write.exit84.i.if.end10.i_crit_edge, %if.end3.i.if.end10.i_crit_edge
  %conv.i = zext i16 %opcode to i32
  %or.i = or i32 %conv.i, -2147483648
  %26 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or.i, ptr %val.i, align 4
  %is_unplugged.i85.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 20
  %27 = ptrtoint ptr %is_unplugged.i85.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %is_unplugged.i85.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i86.i = icmp eq i8 %28, 0
  br i1 %tobool.not.i86.i, label %tb_sw_write.exit98.i, label %if.end10.i.usb4_native_switch_op.exit_crit_edge

if.end10.i.usb4_native_switch_op.exit_crit_edge:  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_write.exit98.i:                             ; preds = %if.end10.i
  %29 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tb, align 8
  %ctl.i88.i = getelementptr inbounds %struct.tb, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %ctl.i88.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctl.i88.i, align 8
  %route_hi.i.i89.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 4
  %33 = ptrtoint ptr %route_hi.i.i89.i to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %bf.load.i.i90.i = load i64, ptr %route_hi.i.i89.i, align 4
  %34 = lshr i64 %bf.load.i.i90.i, 1
  %shl.i.i91.i = and i64 %34, 9223372032559808512
  %route_lo.i.i92.i = getelementptr inbounds %struct.tb_switch, ptr %sw, i32 0, i32 1, i32 3
  %35 = ptrtoint ptr %route_lo.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %route_lo.i.i92.i, align 8
  %conv2.i.i93.i = zext i32 %36 to i64
  %or.i.i94.i = or i64 %shl.i.i91.i, %conv2.i.i93.i
  %call1.i95.i = call i32 @tb_cfg_write(ptr noundef %32, ptr noundef nonnull %val.i, i64 noundef %or.i.i94.i, i32 noundef 0, i32 noundef 2, i32 noundef 26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i95.i)
  %tobool12.not.i = icmp eq i32 %call1.i95.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %tb_sw_write.exit98.i.usb4_native_switch_op.exit_crit_edge

tb_sw_write.exit98.i.usb4_native_switch_op.exit_crit_edge: ; preds = %tb_sw_write.exit98.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

if.end14.i:                                       ; preds = %tb_sw_write.exit98.i
  %call15.i = call i32 @tb_switch_wait_for_bit(ptr noundef %sw, i32 noundef 26, i32 noundef -2147483648, i32 noundef 0, i32 noundef 500) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.usb4_native_switch_op.exit_crit_edge

if.end14.i.usb4_native_switch_op.exit_crit_edge:  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

if.end18.i:                                       ; preds = %if.end14.i
  %37 = ptrtoint ptr %is_unplugged.i85.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %is_unplugged.i85.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i100.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i100.i, label %tb_sw_read.exit.i, label %if.end18.i.usb4_native_switch_op.exit_crit_edge

if.end18.i.usb4_native_switch_op.exit_crit_edge:  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_read.exit.i:                                ; preds = %if.end18.i
  %39 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %tb, align 8
  %ctl.i102.i = getelementptr inbounds %struct.tb, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %ctl.i102.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctl.i102.i, align 8
  %43 = ptrtoint ptr %route_hi.i.i89.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 8)
  %bf.load.i.i104.i = load i64, ptr %route_hi.i.i89.i, align 4
  %44 = lshr i64 %bf.load.i.i104.i, 1
  %shl.i.i105.i = and i64 %44, 9223372032559808512
  %45 = ptrtoint ptr %route_lo.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %route_lo.i.i92.i, align 8
  %conv2.i.i107.i = zext i32 %46 to i64
  %or.i.i108.i = or i64 %shl.i.i105.i, %conv2.i.i107.i
  %call1.i109.i = call i32 @tb_cfg_read(ptr noundef %42, ptr noundef nonnull %val.i, i64 noundef %or.i.i108.i, i32 noundef 0, i32 noundef 2, i32 noundef 26, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109.i)
  %tobool20.not.i = icmp eq i32 %call1.i109.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %tb_sw_read.exit.i.usb4_native_switch_op.exit_crit_edge

tb_sw_read.exit.i.usb4_native_switch_op.exit_crit_edge: ; preds = %tb_sw_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

if.end22.i:                                       ; preds = %tb_sw_read.exit.i
  %47 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %val.i, align 4
  %and.i = and i32 %48, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool23.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool23.not.i, label %if.end25.i, label %if.end22.i.usb4_native_switch_op.exit_crit_edge

if.end22.i.usb4_native_switch_op.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

if.end25.i:                                       ; preds = %if.end22.i
  %tobool26.not.i = icmp eq ptr %status, null
  br i1 %tobool26.not.i, label %if.end25.i.if.end30.i_crit_edge, label %if.then27.i

if.end25.i.if.end30.i_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30.i

if.then27.i:                                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  %and28.i = lshr i32 %48, 24
  %49 = trunc i32 %and28.i to i8
  %conv29.i = and i8 %49, 63
  %50 = ptrtoint ptr %status to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %conv29.i, ptr %status, align 1
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then27.i, %if.end25.i.if.end30.i_crit_edge
  br i1 %tobool.not.i, label %if.end30.i.if.end37.i_crit_edge, label %if.then32.i

if.end30.i.if.end37.i_crit_edge:                  ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.then32.i:                                      ; preds = %if.end30.i
  %51 = ptrtoint ptr %is_unplugged.i85.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %is_unplugged.i85.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i27 = icmp eq i8 %52, 0
  br i1 %tobool.not.i27, label %tb_sw_read.exit39, label %if.then32.i.usb4_native_switch_op.exit_crit_edge

if.then32.i.usb4_native_switch_op.exit_crit_edge: ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_read.exit39:                                ; preds = %if.then32.i
  %53 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %tb, align 8
  %ctl.i29 = getelementptr inbounds %struct.tb, ptr %54, i32 0, i32 3
  %55 = ptrtoint ptr %ctl.i29 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ctl.i29, align 8
  %57 = ptrtoint ptr %route_hi.i.i89.i to i32
  call void @__asan_loadN_noabort(i32 %57, i32 8)
  %bf.load.i.i31 = load i64, ptr %route_hi.i.i89.i, align 4
  %58 = lshr i64 %bf.load.i.i31, 1
  %shl.i.i32 = and i64 %58, 9223372032559808512
  %59 = ptrtoint ptr %route_lo.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %route_lo.i.i92.i, align 8
  %conv2.i.i34 = zext i32 %60 to i64
  %or.i.i35 = or i64 %shl.i.i32, %conv2.i.i34
  %call1.i36 = call i32 @tb_cfg_read(ptr noundef %56, ptr noundef nonnull %metadata, i64 noundef %or.i.i35, i32 noundef 0, i32 noundef 2, i32 noundef 25, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i36)
  %tobool34.not.i = icmp eq i32 %call1.i36, 0
  br i1 %tobool34.not.i, label %tb_sw_read.exit39.if.end37.i_crit_edge, label %tb_sw_read.exit39.usb4_native_switch_op.exit_crit_edge

tb_sw_read.exit39.usb4_native_switch_op.exit_crit_edge: ; preds = %tb_sw_read.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_read.exit39.if.end37.i_crit_edge:           ; preds = %tb_sw_read.exit39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37.i

if.end37.i:                                       ; preds = %tb_sw_read.exit39.if.end37.i_crit_edge, %if.end30.i.if.end37.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rx_dwords)
  %tobool38.not.i = icmp eq i32 %rx_dwords, 0
  br i1 %tobool38.not.i, label %if.end37.i.if.end44.i_crit_edge, label %if.then39.i

if.end37.i.if.end44.i_crit_edge:                  ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.then39.i:                                      ; preds = %if.end37.i
  %61 = ptrtoint ptr %is_unplugged.i85.i to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %is_unplugged.i85.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i24 = icmp eq i8 %62, 0
  br i1 %tobool.not.i24, label %tb_sw_read.exit, label %if.then39.i.usb4_native_switch_op.exit_crit_edge

if.then39.i.usb4_native_switch_op.exit_crit_edge: ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_read.exit:                                  ; preds = %if.then39.i
  %63 = ptrtoint ptr %tb to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tb, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %64, i32 0, i32 3
  %65 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %ctl.i, align 8
  %67 = ptrtoint ptr %route_hi.i.i89.i to i32
  call void @__asan_loadN_noabort(i32 %67, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i89.i, align 4
  %68 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %68, 9223372032559808512
  %69 = ptrtoint ptr %route_lo.i.i92.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %route_lo.i.i92.i, align 8
  %conv2.i.i = zext i32 %70 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %call1.i = call i32 @tb_cfg_read(ptr noundef %66, ptr noundef %rx_data, i64 noundef %or.i.i, i32 noundef 0, i32 noundef 2, i32 noundef 9, i32 noundef %rx_dwords) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool41.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool41.not.i, label %tb_sw_read.exit.if.end44.i_crit_edge, label %tb_sw_read.exit.usb4_native_switch_op.exit_crit_edge

tb_sw_read.exit.usb4_native_switch_op.exit_crit_edge: ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %usb4_native_switch_op.exit

tb_sw_read.exit.if.end44.i_crit_edge:             ; preds = %tb_sw_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

if.end44.i:                                       ; preds = %tb_sw_read.exit.if.end44.i_crit_edge, %if.end37.i.if.end44.i_crit_edge
  br label %usb4_native_switch_op.exit

usb4_native_switch_op.exit:                       ; preds = %if.end44.i, %tb_sw_read.exit.usb4_native_switch_op.exit_crit_edge, %if.then39.i.usb4_native_switch_op.exit_crit_edge, %tb_sw_read.exit39.usb4_native_switch_op.exit_crit_edge, %if.then32.i.usb4_native_switch_op.exit_crit_edge, %if.end22.i.usb4_native_switch_op.exit_crit_edge, %tb_sw_read.exit.i.usb4_native_switch_op.exit_crit_edge, %if.end18.i.usb4_native_switch_op.exit_crit_edge, %if.end14.i.usb4_native_switch_op.exit_crit_edge, %tb_sw_write.exit98.i.usb4_native_switch_op.exit_crit_edge, %if.end10.i.usb4_native_switch_op.exit_crit_edge, %tb_sw_write.exit84.i.usb4_native_switch_op.exit_crit_edge, %if.then5.i.usb4_native_switch_op.exit_crit_edge, %tb_sw_write.exit.i.usb4_native_switch_op.exit_crit_edge, %if.then.i.usb4_native_switch_op.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end44.i ], [ %call1.i.i, %tb_sw_write.exit.i.usb4_native_switch_op.exit_crit_edge ], [ %call1.i81.i, %tb_sw_write.exit84.i.usb4_native_switch_op.exit_crit_edge ], [ %call1.i95.i, %tb_sw_write.exit98.i.usb4_native_switch_op.exit_crit_edge ], [ %call15.i, %if.end14.i.usb4_native_switch_op.exit_crit_edge ], [ %call1.i109.i, %tb_sw_read.exit.i.usb4_native_switch_op.exit_crit_edge ], [ -95, %if.end22.i.usb4_native_switch_op.exit_crit_edge ], [ %call1.i36, %tb_sw_read.exit39.usb4_native_switch_op.exit_crit_edge ], [ %call1.i, %tb_sw_read.exit.usb4_native_switch_op.exit_crit_edge ], [ -19, %if.then.i.usb4_native_switch_op.exit_crit_edge ], [ -19, %if.then5.i.usb4_native_switch_op.exit_crit_edge ], [ -19, %if.end10.i.usb4_native_switch_op.exit_crit_edge ], [ -19, %if.end18.i.usb4_native_switch_op.exit_crit_edge ], [ -19, %if.then32.i.usb4_native_switch_op.exit_crit_edge ], [ -19, %if.then39.i.usb4_native_switch_op.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #6
  br label %cleanup10

cleanup10:                                        ; preds = %usb4_native_switch_op.exit, %if.then3.cleanup10_crit_edge, %entry.cleanup10_crit_edge
  %retval.1 = phi i32 [ %retval.0.i, %usb4_native_switch_op.exit ], [ %call, %if.then3.cleanup10_crit_edge ], [ -22, %entry.cleanup10_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_port_wait_for_bit(ptr nocapture noundef readonly %port, i32 noundef %offset, i32 noundef %value, i32 noundef %timeout_msec) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #6
  %0 = zext i32 %timeout_msec to i64
  %mul.i = mul nuw nsw i64 %0, 1000000
  %add.i = add i64 %call, %mul.i
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %1 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val, align 4, !annotation !81
  %2 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 20
  %4 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %tb_port_read.exit, label %do.body.cleanup.thread_crit_edge

do.body.cleanup.thread_crit_edge:                 ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

tb_port_read.exit:                                ; preds = %do.body
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %11 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %11, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %13 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %14 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %15 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %9, ptr noundef nonnull %val, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %offset, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not = icmp eq i32 %call4.i, 0
  br i1 %tobool.not, label %if.end, label %tb_port_read.exit.cleanup.thread_crit_edge

tb_port_read.exit.cleanup.thread_crit_edge:       ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.end:                                           ; preds = %tb_port_read.exit
  %16 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %val, align 4
  %and = and i32 %17, -2147483648
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %value)
  %cmp = icmp eq i32 %and, %value
  br i1 %cmp, label %if.end.cleanup.thread_crit_edge, label %do.cond

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end.cleanup.thread_crit_edge, %tb_port_read.exit.cleanup.thread_crit_edge, %do.body.cleanup.thread_crit_edge
  %retval.1.ph = phi i32 [ 0, %if.end.cleanup.thread_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup.thread_crit_edge ], [ -19, %do.body.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  br label %cleanup9

do.cond:                                          ; preds = %if.end
  call void @usleep_range_state(i32 noundef 50, i32 noundef 100, i32 noundef 2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  %call7 = call i64 @ktime_get() #6
  %cmp.i.i = icmp slt i64 %call7, %add.i
  br i1 %cmp.i.i, label %do.cond.do.body_crit_edge, label %do.cond.cleanup9_crit_edge

do.cond.cleanup9_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup9

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

cleanup9:                                         ; preds = %do.cond.cleanup9_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ -110, %do.cond.cleanup9_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_port_read_data(ptr nocapture noundef readonly %port, ptr noundef %data, i32 noundef %dwords) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %dwords)
  %cmp = icmp ugt i32 %dwords, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end:                                           ; preds = %entry
  %sw.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %0 = ptrtoint ptr %sw.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sw.i, align 4
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %cap_usb4 = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 7
  %4 = ptrtoint ptr %cap_usb4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cap_usb4, align 4
  %add = add i32 %5, 2
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctl.i, align 8
  %route_hi.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %route_hi.i.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 8)
  %bf.load.i.i = load i64, ptr %route_hi.i.i, align 4
  %11 = lshr i64 %bf.load.i.i, 1
  %shl.i.i = and i64 %11, 9223372032559808512
  %route_lo.i.i = getelementptr inbounds %struct.tb_switch, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %route_lo.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %route_lo.i.i, align 8
  %conv2.i.i = zext i32 %13 to i64
  %or.i.i = or i64 %shl.i.i, %conv2.i.i
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %14 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %15 to i32
  %call4.i = tail call i32 @tb_cfg_read(ptr noundef %9, ptr noundef %data, i64 noundef %or.i.i, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef %dwords) #6
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %call4.i, %if.end.i ], [ -19, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @usb4_usb3_port_cm_request(ptr noundef readonly %port, i1 noundef zeroext %request) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !81
  %tobool.not.i = icmp eq ptr %port, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %tb_port_is_usb3_down.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_is_usb3_down.exit:                        ; preds = %entry
  %type.i = getelementptr inbounds %struct.tb_regs_port_header, ptr %port, i32 0, i32 2
  %1 = ptrtoint ptr %type.i to i32
  call void @__asan_loadN_noabort(i32 %1, i32 12)
  %bf.load.i = load i96, ptr %type.i, align 4
  %2 = and i96 %bf.load.i, 18446742974197923840
  %cmp.i = icmp eq i96 %2, 2306125583702032384
  br i1 %cmp.i, label %if.end, label %tb_port_is_usb3_down.exit.cleanup_crit_edge

tb_port_is_usb3_down.exit.cleanup_crit_edge:      ; preds = %tb_port_is_usb3_down.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %tb_port_is_usb3_down.exit
  %sw = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 1
  %3 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sw, align 4
  %route_hi.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 4
  %5 = ptrtoint ptr %route_hi.i to i32
  call void @__asan_loadN_noabort(i32 %5, i32 8)
  %bf.load.i32 = load i64, ptr %route_hi.i, align 4
  %6 = lshr i64 %bf.load.i32, 1
  %shl.i = and i64 %6, 9223372032559808512
  %route_lo.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %route_lo.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %route_lo.i, align 8
  %conv2.i = zext i32 %8 to i64
  %or.i = or i64 %shl.i, %conv2.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %or.i)
  %tobool.not = icmp eq i64 %or.i, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %cap_adap = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 6
  %is_unplugged.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 20
  %9 = ptrtoint ptr %is_unplugged.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %is_unplugged.i, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i33 = icmp eq i8 %10, 0
  br i1 %tobool.not.i33, label %tb_port_read.exit, label %if.end3.cleanup_crit_edge

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_read.exit:                                ; preds = %if.end3
  %11 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cap_adap, align 4
  %add = add i32 %12, 2
  %tb.i = getelementptr inbounds %struct.tb_switch, ptr %4, i32 0, i32 5
  %13 = ptrtoint ptr %tb.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tb.i, align 8
  %ctl.i = getelementptr inbounds %struct.tb, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %ctl.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctl.i, align 8
  %port3.i = getelementptr inbounds %struct.tb_port, ptr %port, i32 0, i32 9
  %17 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %port3.i, align 4
  %conv.i = zext i8 %18 to i32
  %call4.i = call i32 @tb_cfg_read(ptr noundef %16, ptr noundef nonnull %val, i64 noundef 0, i32 noundef %conv.i, i32 noundef 1, i32 noundef %add, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not, label %if.end7, label %tb_port_read.exit.cleanup_crit_edge

tb_port_read.exit.cleanup_crit_edge:              ; preds = %tb_port_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %tb_port_read.exit
  %19 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %val, align 4
  %and = and i32 %20, 2147483647
  %masksel = select i1 %request, i32 -2147483648, i32 0
  %storemerge = or i32 %and, %masksel
  store i32 %storemerge, ptr %val, align 4
  %21 = ptrtoint ptr %sw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %sw, align 4
  %is_unplugged.i35 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 20
  %23 = ptrtoint ptr %is_unplugged.i35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_unplugged.i35, align 8, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i36 = icmp eq i8 %24, 0
  br i1 %tobool.not.i36, label %tb_port_write.exit, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

tb_port_write.exit:                               ; preds = %if.end7
  %25 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cap_adap, align 4
  %add12 = add i32 %26, 2
  %tb.i37 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 5
  %27 = ptrtoint ptr %tb.i37 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %tb.i37, align 8
  %ctl.i38 = getelementptr inbounds %struct.tb, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %ctl.i38 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctl.i38, align 8
  %route_hi.i.i39 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 1, i32 4
  %31 = ptrtoint ptr %route_hi.i.i39 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 8)
  %bf.load.i.i40 = load i64, ptr %route_hi.i.i39, align 4
  %32 = lshr i64 %bf.load.i.i40, 1
  %shl.i.i41 = and i64 %32, 9223372032559808512
  %route_lo.i.i42 = getelementptr inbounds %struct.tb_switch, ptr %22, i32 0, i32 1, i32 3
  %33 = ptrtoint ptr %route_lo.i.i42 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %route_lo.i.i42, align 8
  %conv2.i.i43 = zext i32 %34 to i64
  %or.i.i44 = or i64 %shl.i.i41, %conv2.i.i43
  %35 = ptrtoint ptr %port3.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %port3.i, align 4
  %conv.i46 = zext i8 %36 to i32
  %call4.i47 = call i32 @tb_cfg_write(ptr noundef %30, ptr noundef nonnull %val, i64 noundef %or.i.i44, i32 noundef %conv.i46, i32 noundef 1, i32 noundef %add12, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i47)
  %tobool14.not = icmp eq i32 %call4.i47, 0
  br i1 %tobool14.not, label %if.end16, label %tb_port_write.exit.cleanup_crit_edge

tb_port_write.exit.cleanup_crit_edge:             ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %tb_port_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %val, align 4
  %and17 = and i32 %38, -2147483648
  store i32 %and17, ptr %val, align 4
  %39 = ptrtoint ptr %cap_adap to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cap_adap, align 4
  %add19 = add i32 %40, 1
  %call20 = call fastcc i32 @usb4_port_wait_for_bit(ptr noundef nonnull %port, i32 noundef %add19, i32 noundef %and17, i32 noundef 1500)
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %tb_port_write.exit.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %tb_port_read.exit.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %tb_port_is_usb3_down.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call20, %if.end16 ], [ -22, %tb_port_is_usb3_down.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call4.i, %tb_port_read.exit.cleanup_crit_edge ], [ %call4.i47, %tb_port_write.exit.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -19, %if.end3.cleanup_crit_edge ], [ -19, %if.end7.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !22, !23, !25, !26, !28, !29, !31, !32, !34, !35, !37, !38, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/thunderbolt/usb4.c", i32 241, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @usb4_switch_setup.__UNIQUE_ID_ddebug238, !1, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/thunderbolt/usb4.c", i32 246, i32 2}
!10 = !{ptr @usb4_switch_setup.__UNIQUE_ID_ddebug239, !9, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.8, !9, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/thunderbolt/usb4.c", i32 710, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug240, !14, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!17 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/thunderbolt/usb4.c", i32 720, i32 4}
!19 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug241, !18, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/thunderbolt/usb4.c", i32 724, i32 4}
!22 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug242, !21, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/thunderbolt/usb4.c", i32 728, i32 4}
!25 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug243, !24, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!26 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/thunderbolt/usb4.c", i32 732, i32 4}
!28 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug244, !27, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/thunderbolt/usb4.c", i32 736, i32 4}
!31 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug245, !30, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/thunderbolt/usb4.c", i32 740, i32 4}
!34 = !{ptr @usb4_switch_credits_init.__UNIQUE_ID_ddebug246, !33, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/thunderbolt/usb4.c", i32 754, i32 3}
!37 = !{ptr @.str.18, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @usb4_switch_credits_init._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @usb4_switch_credits_init._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/thunderbolt/usb4.c", i32 766, i32 3}
!43 = !{ptr @usb4_switch_credits_init._entry.20, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @usb4_switch_credits_init._entry_ptr.22, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/thunderbolt/usb4.c", i32 772, i32 4}
!47 = !{ptr @usb4_switch_credits_init._entry.23, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @usb4_switch_credits_init._entry_ptr.25, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.27, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/thunderbolt/usb4.c", i32 777, i32 4}
!51 = !{ptr @usb4_switch_credits_init._entry.26, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @usb4_switch_credits_init._entry_ptr.28, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.30, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/thunderbolt/usb4.c", i32 782, i32 4}
!55 = !{ptr @usb4_switch_credits_init._entry.29, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @usb4_switch_credits_init._entry_ptr.31, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.33, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/thunderbolt/usb4.c", i32 787, i32 4}
!59 = !{ptr @usb4_switch_credits_init._entry.32, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @usb4_switch_credits_init._entry_ptr.34, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/thunderbolt/usb4.c", i32 169, i32 3}
!63 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @usb4_switch_check_wakes.__UNIQUE_ID_ddebug236, !62, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!65 = !{ptr @.str.37, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/thunderbolt/usb4.c", i32 185, i32 3}
!67 = !{ptr @usb4_switch_check_wakes.__UNIQUE_ID_ddebug237, !66, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!68 = !{ptr @.str.38, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/thunderbolt/tb.h", i32 538, i32 6}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i8 0, i8 2}
!80 = !{!"branch_weights", i32 1, i32 2000}
!81 = !{!"auto-init"}
!82 = !{i64 2148805565, i64 2148805570, i64 2148805583, i64 2148805627, i64 2148805661, i64 2148805682}
