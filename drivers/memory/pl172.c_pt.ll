; ModuleID = '/llk/IR_all_yes/drivers/memory/pl172.c_pt.bc'
source_filename = "../drivers/memory/pl172.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl172_data = type { ptr, i32, ptr }

@__initcall__kmod_pl172__290_312_pl172_driver_init6 = internal global ptr @pl172_driver_init, section ".initcall6.init", align 4
@pl172_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @pl172_probe, ptr @pl172_remove, ptr null, ptr @pl172_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pl172_driver_exit = internal global ptr @pl172_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author291 = internal constant [51 x i8] c"pl172.author=Joachim Eastwood <manabian@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [49 x i8] c"pl172.description=PL172 Memory Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [32 x i8] c"pl172.file=drivers/memory/pl172\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [21 x i8] c"pl172.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"memory-pl172\00", [19 x i8] zeroinitializer }, align 32
@pl172_ids = internal constant { [4 x %struct.amba_id], [48 x i8] } { [4 x %struct.amba_id] [%struct.amba_id { i32 117707122, i32 1058013183, ptr null }, %struct.amba_id { i32 117707125, i32 1058013183, ptr null }, %struct.amba_id { i32 -1996222090, i32 -15728641, ptr null }, %struct.amba_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@pl172_probe.rev = internal global { ptr, [28 x i8] } { ptr @.str.1, [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"?\00", [30 x i8] zeroinitializer }, align 32
@pl172_revisions = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@pl172_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 213, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ARM PL%x revision %s\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl172_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/memory/pl172.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl172_probe._entry_ptr = internal global ptr @pl172_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpmcclk\00", [24 x i8] zeroinitializer }, align 32
@pl172_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 221, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no mpmcclk provided clock\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pl172_probe._entry_ptr.11 = internal global ptr @pl172_probe._entry.8, section ".printk_index", align 4
@pl172_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 227, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to mpmcclk enable clock\0A\00", [32 x i8] zeroinitializer }, align 32
@pl172_probe._entry_ptr.14 = internal global ptr @pl172_probe._entry.12, section ".printk_index", align 4
@pl172_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 233, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to get mpmcclk clock rate\0A\00", [62 x i8] zeroinitializer }, align 32
@pl172_probe._entry_ptr.17 = internal global ptr @pl172_probe._entry.15, section ".printk_index", align 4
@pl172_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.3, ptr @.str.4, i32 240, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"unable to request AMBA regions\0A\00", [32 x i8] zeroinitializer }, align 32
@pl172_probe._entry_ptr.20 = internal global ptr @pl172_probe._entry.18, section ".printk_index", align 4
@pl172_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 247, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ioremap failed\0A\00", [16 x i8] zeroinitializer }, align 32
@pl172_probe._entry_ptr.23 = internal global ptr @pl172_probe._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r1\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r2\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r2p3\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"r2p4\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"r0\00", [29 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpmc,cs\00", [24 x i8] zeroinitializer }, align 32
@pl172_parse_cs_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 178, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cs%u invalid\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pl172_parse_cs_config\00", [42 x i8] zeroinitializer }, align 32
@pl172_parse_cs_config._entry_ptr = internal global ptr @pl172_parse_cs_config._entry, section ".printk_index", align 4
@pl172_parse_cs_config._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.4, i32 185, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cs property required\0A\00", [42 x i8] zeroinitializer }, align 32
@pl172_parse_cs_config._entry_ptr.34 = internal global ptr @pl172_parse_cs_config._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mpmc,memory-width\00", [46 x i8] zeroinitializer }, align 32
@pl172_setup_static._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.4, i32 98, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid memory width cs%u\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pl172_setup_static\00", [45 x i8] zeroinitializer }, align 32
@pl172_setup_static._entry_ptr = internal global ptr @pl172_setup_static._entry, section ".printk_index", align 4
@pl172_setup_static._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.4, i32 102, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"memory-width property required\0A\00", [32 x i8] zeroinitializer }, align 32
@pl172_setup_static._entry_ptr.40 = internal global ptr @pl172_setup_static._entry.38, section ".printk_index", align 4
@.str.41 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mpmc,async-page-mode\00", [43 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mpmc,cs-active-high\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpmc,byte-lane-low\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpmc,extended-wait\00", [45 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpmc,buffer-enable\00", [45 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mpmc,write-protect\00", [45 x i8] zeroinitializer }, align 32
@pl172_setup_static.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.37, ptr @.str.4, ptr @.str.48, i8 0, i8 31, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pl172\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"mpmc static config cs%u: 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpmc,write-enable-delay\00", [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mpmc,output-enable-delay\00", [39 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mpmc,read-access-delay\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mpmc,page-mode-read-delay\00", [38 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mpmc,write-access-delay\00", [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"mpmc,turn-round-delay\00", [42 x i8] zeroinitializer }, align 32
@pl172_setup_static._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.37, ptr @.str.4, i32 167, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to configure cs%u\0A\00", [38 x i8] zeroinitializer }, align 32
@pl172_setup_static._entry_ptr.57 = internal global ptr @pl172_setup_static._entry.55, section ".printk_index", align 4
@pl172_timing_prop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 69, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s timing too tight\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pl172_timing_prop\00", [46 x i8] zeroinitializer }, align 32
@pl172_timing_prop._entry_ptr = internal global ptr @pl172_timing_prop._entry, section ".printk_index", align 4
@pl172_timing_prop.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.47, ptr @.str.59, ptr @.str.4, ptr @.str.60, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s: %u cycle(s)\0A\00", [47 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 370, i64 373, i64 374]
@__sancov_gen_cov_switch_values.61 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@___asan_gen_.62 = private unnamed_addr constant [13 x i8] c"pl172_driver\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 304, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 306, i32 11 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"pl172_ids\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 284, i32 29 }
@___asan_gen_.71 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 198, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 198, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"pl172_revisions\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 190, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 213, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 219, i32 33 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 221, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 227, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 233, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 240, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 247, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 190, i32 48 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 190, i32 54 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 190, i32 60 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 190, i32 68 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 192, i32 48 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 176, i32 32 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 178, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 185, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 90, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 98, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 102, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 106, i32 32 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 109, i32 32 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 112, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 115, i32 32 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 119, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 122, i32 32 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 126, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 129, i32 36 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 135, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 141, i32 36 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 147, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 153, i32 36 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 159, i32 36 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 167, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 69, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.243 = private constant [26 x i8] c"../drivers/memory/pl172.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 76, i32 2 }
@llvm.compiler.used = appending global [80 x ptr] [ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_pl172_driver_exit, ptr @__initcall__kmod_pl172__290_312_pl172_driver_init6, ptr @pl172_driver_exit, ptr @pl172_parse_cs_config._entry, ptr @pl172_parse_cs_config._entry.32, ptr @pl172_parse_cs_config._entry_ptr, ptr @pl172_parse_cs_config._entry_ptr.34, ptr @pl172_probe._entry, ptr @pl172_probe._entry.12, ptr @pl172_probe._entry.15, ptr @pl172_probe._entry.18, ptr @pl172_probe._entry.21, ptr @pl172_probe._entry.8, ptr @pl172_probe._entry_ptr, ptr @pl172_probe._entry_ptr.11, ptr @pl172_probe._entry_ptr.14, ptr @pl172_probe._entry_ptr.17, ptr @pl172_probe._entry_ptr.20, ptr @pl172_probe._entry_ptr.23, ptr @pl172_setup_static._entry, ptr @pl172_setup_static._entry.38, ptr @pl172_setup_static._entry.55, ptr @pl172_setup_static._entry_ptr, ptr @pl172_setup_static._entry_ptr.40, ptr @pl172_setup_static._entry_ptr.57, ptr @pl172_timing_prop._entry, ptr @pl172_timing_prop._entry_ptr, ptr @pl172_driver, ptr @.str, ptr @pl172_ids, ptr @pl172_probe.rev, ptr @.str.1, ptr @pl172_revisions, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_ids to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe.rev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_revisions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_parse_cs_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_parse_cs_config._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_setup_static._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_setup_static._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_setup_static._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl172_timing_prop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl172_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl172_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl172_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl172_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl172_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %cs.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %periphid = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %2 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %periphid, align 8
  %and = and i32 %3, 4095
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.do.end_crit_edge [
    i32 370, label %if.then
    i32 373, label %if.then13
    i32 374, label %if.then28
  ]

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then:                                          ; preds = %entry
  %shr = lshr i32 %3, 20
  %and4 = and i32 %shr, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and4)
  %cmp5 = icmp ult i32 %and4, 4
  br i1 %cmp5, label %if.then6, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr [4 x ptr], ptr @pl172_revisions, i32 0, i32 %and4
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  br label %do.end.sink.split

if.then13:                                        ; preds = %entry
  %7 = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp17 = icmp eq i32 %7, 0
  br i1 %cmp17, label %if.then13.do.end.sink.split_crit_edge, label %if.then13.do.end_crit_edge

if.then13.do.end_crit_edge:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then13.do.end.sink.split_crit_edge:            ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

if.then28:                                        ; preds = %entry
  %8 = and i32 %3, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp32 = icmp eq i32 %8, 0
  br i1 %cmp32, label %if.then28.do.end.sink.split_crit_edge, label %if.then28.do.end_crit_edge

if.then28.do.end_crit_edge:                       ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.then28.do.end.sink.split_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.sink.split

do.end.sink.split:                                ; preds = %if.then28.do.end.sink.split_crit_edge, %if.then13.do.end.sink.split_crit_edge, %if.then6
  %.sink = phi ptr [ %6, %if.then6 ], [ @.str.24, %if.then13.do.end.sink.split_crit_edge ], [ @.str.28, %if.then28.do.end.sink.split_crit_edge ]
  store ptr %.sink, ptr @pl172_probe.rev, align 4
  br label %do.end

do.end:                                           ; preds = %do.end.sink.split, %if.then28.do.end_crit_edge, %if.then13.do.end_crit_edge, %if.then.do.end_crit_edge, %entry.do.end_crit_edge
  %9 = load ptr, ptr @pl172_probe.rev, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.2, i32 noundef %and, ptr noundef %9) #9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end.cleanup_crit_edge, label %if.end45

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end45:                                         ; preds = %do.end
  %call46 = tail call ptr @devm_clk_get(ptr noundef %adev, ptr noundef nonnull @.str.7) #6
  %clk = getelementptr inbounds %struct.pl172_data, ptr %call.i, i32 0, i32 2
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call46, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call46, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end52, label %if.end55

do.end52:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.9) #9
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %13 = ptrtoint ptr %12 to i32
  br label %cleanup

if.end55:                                         ; preds = %if.end45
  %call.i149 = tail call i32 @clk_prepare(ptr noundef %call46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i149)
  %tobool.not.i = icmp eq i32 %call.i149, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end55.do.end62_crit_edge

if.end55.do.end62_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end62

if.end.i:                                         ; preds = %if.end55
  %call1.i = tail call i32 @clk_enable(ptr noundef %call46) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end63, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call46) #6
  br label %do.end62

do.end62:                                         ; preds = %if.then3.i, %if.end55.do.end62_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i149, %if.end55.do.end62_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.13) #9
  br label %cleanup

if.end63:                                         ; preds = %if.end.i
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  %call65 = tail call i32 @clk_get_rate(ptr noundef %15) #6
  %div = udiv i32 %call65, 1000
  %rate = getelementptr inbounds %struct.pl172_data, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call65)
  %17 = icmp ult i32 %call65, 1000
  br i1 %17, label %do.end71, label %if.end72

do.end71:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.16) #9
  br label %err_clk_enable

if.end72:                                         ; preds = %if.end63
  %call73 = tail call i32 @amba_request_regions(ptr noundef %adev, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %if.end79, label %do.end78

do.end78:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.19) #9
  br label %err_clk_enable

if.end79:                                         ; preds = %if.end72
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %18 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %res, align 8
  %end.i = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %19
  %add.i = add i32 %sub.i, %21
  %call82 = tail call ptr @devm_ioremap(ptr noundef %adev, i32 noundef %19, i32 noundef %add.i) #6
  %22 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call82, ptr %call.i, align 4
  %tobool84.not = icmp eq ptr %call82, null
  br i1 %tobool84.not, label %do.end88, label %if.end89

do.end88:                                         ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.22) #9
  tail call void @amba_release_regions(ptr noundef %adev) #6
  br label %err_clk_enable

if.end89:                                         ; preds = %if.end79
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %23 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call91 = tail call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef null) #6
  %cmp92.not159 = icmp eq ptr %call91, null
  br i1 %cmp92.not159, label %if.end89.cleanup_crit_edge, label %if.end89.for.body_crit_edge

if.end89.for.body_crit_edge:                      ; preds = %if.end89
  br label %for.body

if.end89.cleanup_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end89.for.body_crit_edge
  %child_np.0160 = phi ptr [ %call98, %for.inc.for.body_crit_edge ], [ %call91, %if.end89.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cs.i) #6
  %24 = ptrtoint ptr %cs.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %cs.i, align 4, !annotation !138
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child_np.0160, ptr noundef nonnull @.str.29, ptr noundef nonnull %cs.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool.not.i150 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool.not.i150, label %if.then.i, label %do.end6.i

if.then.i:                                        ; preds = %for.body
  %25 = ptrtoint ptr %cs.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp.i151 = icmp ugt i32 %26, 3
  br i1 %cmp.i151, label %do.end.i, label %pl172_parse_cs_config.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.30, i32 noundef %26) #9
  br label %pl172_parse_cs_config.exit.thread

do.end6.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.33) #9
  br label %pl172_parse_cs_config.exit.thread

pl172_parse_cs_config.exit.thread:                ; preds = %do.end6.i, %do.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #6
  br label %for.inc

pl172_parse_cs_config.exit:                       ; preds = %if.then.i
  %call2.i = call fastcc i32 @pl172_setup_static(ptr noundef %adev, ptr noundef nonnull %child_np.0160, i32 noundef %26) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cs.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool94.not = icmp eq i32 %call2.i, 0
  br i1 %tobool94.not, label %if.end96, label %pl172_parse_cs_config.exit.for.inc_crit_edge

pl172_parse_cs_config.exit.for.inc_crit_edge:     ; preds = %pl172_parse_cs_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end96:                                         ; preds = %pl172_parse_cs_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call97 = call i32 @of_platform_populate(ptr noundef nonnull %child_np.0160, ptr noundef null, ptr noundef null, ptr noundef %adev) #6
  br label %for.inc

for.inc:                                          ; preds = %if.end96, %pl172_parse_cs_config.exit.for.inc_crit_edge, %pl172_parse_cs_config.exit.thread
  %call98 = call ptr @of_get_next_available_child(ptr noundef %1, ptr noundef nonnull %child_np.0160) #6
  %cmp92.not = icmp eq ptr %call98, null
  br i1 %cmp92.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_clk_enable:                                   ; preds = %do.end88, %do.end78, %do.end71
  %ret.0 = phi i32 [ %call73, %do.end78 ], [ -12, %do.end88 ], [ -22, %do.end71 ]
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %28) #6
  tail call void @clk_unprepare(ptr noundef %28) #6
  br label %cleanup

cleanup:                                          ; preds = %err_clk_enable, %for.inc.cleanup_crit_edge, %if.end89.cleanup_crit_edge, %do.end62, %do.end52, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %13, %do.end52 ], [ %retval.0.i.ph, %do.end62 ], [ %ret.0, %err_clk_enable ], [ -12, %do.end.cleanup_crit_edge ], [ 0, %if.end89.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl172_remove(ptr noundef %adev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.pl172_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #6
  tail call void @clk_unprepare(ptr noundef %3) #6
  tail call void @amba_release_regions(ptr noundef %adev) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl172_setup_static(ptr noundef %adev, ptr noundef %np, i32 noundef %cs) unnamed_addr #2 align 64 {
entry:
  %cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cfg) #6
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %cfg, align 4, !annotation !138
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.35, ptr noundef nonnull %cfg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then, label %do.end15

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cfg, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %4, label %do.end [
    i32 8, label %if.then2
    i32 16, label %if.then4
    i32 32, label %if.then7
  ]

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %cfg, align 4
  br label %if.end17

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %cfg, align 4
  br label %if.end17

if.then7:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %cfg, align 4
  br label %if.end17

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.36, i32 noundef %cs) #9
  br label %cleanup

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.39) #9
  br label %cleanup

if.end17:                                         ; preds = %if.then7, %if.then4, %if.then2
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.41, ptr noundef null) #6
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %if.end17.if.end20_crit_edge, label %if.then19

if.end17.if.end20_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cfg, align 4
  %or = or i32 %10, 8
  store i32 %or, ptr %cfg, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.end17.if.end20_crit_edge
  %call.i135 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.42, ptr noundef null) #6
  %tobool.i136.not = icmp eq ptr %call.i135, null
  br i1 %tobool.i136.not, label %if.end20.if.end24_crit_edge, label %if.then22

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cfg, align 4
  %or23 = or i32 %12, 64
  store i32 %or23, ptr %cfg, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %call.i137 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.43, ptr noundef null) #6
  %tobool.i138.not = icmp eq ptr %call.i137, null
  br i1 %tobool.i138.not, label %if.end24.if.end28_crit_edge, label %if.then26

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cfg, align 4
  %or27 = or i32 %14, 128
  store i32 %or27, ptr %cfg, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end24.if.end28_crit_edge
  %call.i139 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.44, ptr noundef null) #6
  %tobool.i140.not = icmp eq ptr %call.i139, null
  br i1 %tobool.i140.not, label %if.end28.if.end32_crit_edge, label %if.then30

if.end28.if.end32_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end32

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cfg, align 4
  %or31 = or i32 %16, 256
  store i32 %or31, ptr %cfg, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end28.if.end32_crit_edge
  %periphid = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 4
  %17 = ptrtoint ptr %periphid to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %periphid, align 8
  %and = and i32 %18, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 370, i32 %and)
  %cmp33 = icmp eq i32 %and, 370
  br i1 %cmp33, label %land.lhs.true, label %if.end32.if.end37_crit_edge

if.end32.if.end37_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

land.lhs.true:                                    ; preds = %if.end32
  %call.i141 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.45, ptr noundef null) #6
  %tobool.i142.not = icmp eq ptr %call.i141, null
  br i1 %tobool.i142.not, label %land.lhs.true.if.end37_crit_edge, label %if.then35

land.lhs.true.if.end37_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then35:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cfg, align 4
  %or36 = or i32 %20, 524288
  store i32 %or36, ptr %cfg, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true.if.end37_crit_edge, %if.end32.if.end37_crit_edge
  %call.i143 = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.46, ptr noundef null) #6
  %tobool.i144.not = icmp eq ptr %call.i143, null
  br i1 %tobool.i144.not, label %if.end37.do.body42_crit_edge, label %if.then39

if.end37.do.body42_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cfg, align 4
  %or40 = or i32 %22, 1048576
  store i32 %or40, ptr %cfg, align 4
  br label %do.body42

do.body42:                                        ; preds = %if.then39, %if.end37.do.body42_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  call void @arm_heavy_mb() #6
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %mul = shl i32 %cs, 5
  %add = add i32 %mul, 512
  %add.ptr = getelementptr i8, ptr %27, i32 %add
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %25) #6, !srcloc !140
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl172_setup_static.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl172_setup_static, %if.then50)) #6
          to label %do.end54 [label %if.then50], !srcloc !141

if.then50:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  %28 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cfg, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl172_setup_static.__UNIQUE_ID_ddebug289, ptr noundef %adev, ptr noundef nonnull @.str.48, i32 noundef %cs, i32 noundef %29) #6
  br label %do.end54

do.end54:                                         ; preds = %if.then50, %do.body42
  %add56 = add i32 %mul, 516
  %call57 = call fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef nonnull @.str.49, i32 noundef %add56, i32 noundef 15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %do.end54.do.end93_crit_edge

do.end54.do.end93_crit_edge:                      ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end60:                                         ; preds = %do.end54
  %add62 = add i32 %mul, 520
  %call63 = call fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef nonnull @.str.50, i32 noundef %add62, i32 noundef 15, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end60.do.end93_crit_edge

if.end60.do.end93_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end66:                                         ; preds = %if.end60
  %add68 = add i32 %mul, 524
  %call69 = call fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef nonnull @.str.51, i32 noundef %add68, i32 noundef 31, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end66.do.end93_crit_edge

if.end66.do.end93_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end72:                                         ; preds = %if.end66
  %add74 = add i32 %mul, 528
  %call75 = call fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef nonnull @.str.52, i32 noundef %add74, i32 noundef 31, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %if.end72.do.end93_crit_edge

if.end72.do.end93_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end78:                                         ; preds = %if.end72
  %add80 = add i32 %mul, 532
  %call81 = call fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef nonnull @.str.53, i32 noundef %add80, i32 noundef 31, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %if.end84, label %if.end78.do.end93_crit_edge

if.end78.do.end93_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end84:                                         ; preds = %if.end78
  %add86 = add i32 %mul, 536
  %call87 = call fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef nonnull @.str.54, i32 noundef %add86, i32 noundef 15, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end84.cleanup_crit_edge, label %if.end84.do.end93_crit_edge

if.end84.do.end93_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end93

if.end84.cleanup_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end93:                                         ; preds = %if.end84.do.end93_crit_edge, %if.end78.do.end93_crit_edge, %if.end72.do.end93_crit_edge, %if.end66.do.end93_crit_edge, %if.end60.do.end93_crit_edge, %do.end54.do.end93_crit_edge
  %ret.0 = phi i32 [ %call57, %do.end54.do.end93_crit_edge ], [ %call63, %if.end60.do.end93_crit_edge ], [ %call69, %if.end66.do.end93_crit_edge ], [ %call75, %if.end72.do.end93_crit_edge ], [ %call81, %if.end78.do.end93_crit_edge ], [ %call87, %if.end84.do.end93_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.56, i32 noundef %cs) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end93, %if.end84.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end15 ], [ %ret.0, %do.end93 ], [ -22, %do.end ], [ 0, %if.end84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pl172_timing_prop(ptr noundef %adev, ptr noundef %np, ptr noundef %name, i32 noundef %reg_offset, i32 noundef %max, i32 noundef %start) unnamed_addr #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #6
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !138
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef %name, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body12

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %val, align 4
  %rate = getelementptr inbounds %struct.pl172_data, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rate, align 4
  %mul = mul i32 %6, %4
  %sub = add i32 %mul, 999999
  %div = udiv i32 %sub, 1000000
  %sub2 = sub i32 %div, %start
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub2)
  %cmp = icmp slt i32 %sub2, 0
  br i1 %cmp, label %if.then.do.body8_crit_edge, label %if.else

if.then.do.body8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_cmp4(i32 %sub2, i32 %max)
  %cmp4 = icmp ugt i32 %sub2, %max
  br i1 %cmp4, label %do.end, label %if.else.do.body8_crit_edge

if.else.do.body8_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body8

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %adev, ptr noundef nonnull @.str.58, ptr noundef %name) #9
  br label %cleanup

do.body8:                                         ; preds = %if.else.do.body8_crit_edge, %if.then.do.body8_crit_edge
  %cycles.0 = phi i32 [ %sub2, %if.else.do.body8_crit_edge ], [ 0, %if.then.do.body8_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  call void @arm_heavy_mb() #6
  %7 = call i32 @llvm.bswap.i32(i32 %cycles.0)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %reg_offset
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %7) #6, !srcloc !140
  br label %do.body12

do.body12:                                        ; preds = %do.body8, %entry.do.body12_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl172_timing_prop.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pl172_timing_prop, %if.then17)) #6
          to label %cleanup [label %if.then17], !srcloc !141

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %add.ptr20 = getelementptr i8, ptr %11, i32 %reg_offset
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #6, !srcloc !143
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !144
  %add24 = add i32 %13, %start
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl172_timing_prop.__UNIQUE_ID_ddebug288, ptr noundef %adev, ptr noundef nonnull @.str.60, ptr noundef %name, i32 noundef %add24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %do.body12, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then17 ], [ 0, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !105, !107, !109, !111, !113, !115, !117, !118, !119, !121, !122, !123, !124, !126, !127}
!llvm.module.flags = !{!129, !130, !131, !132, !133, !134, !135, !136}
!llvm.ident = !{!137}

!0 = !{ptr @__initcall__kmod_pl172__290_312_pl172_driver_init6, !1, !"__initcall__kmod_pl172__290_312_pl172_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/memory/pl172.c", i32 312, i32 1}
!2 = !{ptr @__exitcall_pl172_driver_exit, !1, !"__exitcall_pl172_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author291, !4, !"__UNIQUE_ID_author291", i1 false, i1 false}
!4 = !{!"../drivers/memory/pl172.c", i32 314, i32 1}
!5 = !{ptr @__UNIQUE_ID_description292, !6, !"__UNIQUE_ID_description292", i1 false, i1 false}
!6 = !{!"../drivers/memory/pl172.c", i32 315, i32 1}
!7 = !{ptr @__UNIQUE_ID_file293, !8, !"__UNIQUE_ID_file293", i1 false, i1 false}
!8 = !{!"../drivers/memory/pl172.c", i32 316, i32 1}
!9 = !{ptr @__UNIQUE_ID_license294, !8, !"__UNIQUE_ID_license294", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/memory/pl172.c", i32 306, i32 11}
!12 = !{ptr @pl172_driver, !13, !"pl172_driver", i1 false, i1 false}
!13 = !{!"../drivers/memory/pl172.c", i32 304, i32 27}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/memory/pl172.c", i32 198, i32 27}
!16 = !{ptr @pl172_probe.rev, !17, !"rev", i1 false, i1 false}
!17 = !{!"../drivers/memory/pl172.c", i32 198, i32 21}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/memory/pl172.c", i32 213, i32 2}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @pl172_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @pl172_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/memory/pl172.c", i32 219, i32 33}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/memory/pl172.c", i32 221, i32 3}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @pl172_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @pl172_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/memory/pl172.c", i32 227, i32 3}
!35 = !{ptr @pl172_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @pl172_probe._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/memory/pl172.c", i32 233, i32 3}
!39 = !{ptr @pl172_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @pl172_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/memory/pl172.c", i32 240, i32 3}
!43 = !{ptr @pl172_probe._entry.18, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @pl172_probe._entry_ptr.20, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/memory/pl172.c", i32 247, i32 3}
!47 = !{ptr @pl172_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @pl172_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/memory/pl172.c", i32 190, i32 48}
!51 = !{ptr @.str.25, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/memory/pl172.c", i32 190, i32 54}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/memory/pl172.c", i32 190, i32 60}
!55 = !{ptr @.str.27, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/memory/pl172.c", i32 190, i32 68}
!57 = !{ptr @pl172_revisions, !58, !"pl172_revisions", i1 false, i1 false}
!58 = !{!"../drivers/memory/pl172.c", i32 190, i32 27}
!59 = distinct !{null, !60, !"pl175_revisions", i1 false, i1 false}
!60 = !{!"../drivers/memory/pl172.c", i32 191, i32 27}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/memory/pl172.c", i32 192, i32 48}
!63 = distinct !{null, !64, !"pl176_revisions", i1 false, i1 false}
!64 = !{!"../drivers/memory/pl172.c", i32 192, i32 27}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/memory/pl172.c", i32 176, i32 32}
!67 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/memory/pl172.c", i32 178, i32 4}
!69 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pl172_parse_cs_config._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @pl172_parse_cs_config._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.33, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/memory/pl172.c", i32 185, i32 2}
!74 = !{ptr @pl172_parse_cs_config._entry.32, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @pl172_parse_cs_config._entry_ptr.34, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/memory/pl172.c", i32 90, i32 32}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/memory/pl172.c", i32 98, i32 4}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @pl172_setup_static._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @pl172_setup_static._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/memory/pl172.c", i32 102, i32 3}
!85 = !{ptr @pl172_setup_static._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @pl172_setup_static._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/memory/pl172.c", i32 106, i32 32}
!89 = !{ptr @.str.42, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/memory/pl172.c", i32 109, i32 32}
!91 = !{ptr @.str.43, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/memory/pl172.c", i32 112, i32 32}
!93 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/memory/pl172.c", i32 115, i32 32}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/memory/pl172.c", i32 119, i32 32}
!97 = !{ptr @.str.46, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/memory/pl172.c", i32 122, i32 32}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/memory/pl172.c", i32 126, i32 2}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @pl172_setup_static.__UNIQUE_ID_ddebug289, !100, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/memory/pl172.c", i32 129, i32 36}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/memory/pl172.c", i32 135, i32 36}
!107 = !{ptr @.str.51, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/memory/pl172.c", i32 141, i32 36}
!109 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/memory/pl172.c", i32 147, i32 36}
!111 = !{ptr @.str.53, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/memory/pl172.c", i32 153, i32 36}
!113 = !{ptr @.str.54, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/memory/pl172.c", i32 159, i32 36}
!115 = !{ptr @.str.56, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/memory/pl172.c", i32 167, i32 2}
!117 = !{ptr @pl172_setup_static._entry.55, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @pl172_setup_static._entry_ptr.57, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.58, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/memory/pl172.c", i32 69, i32 4}
!121 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @pl172_timing_prop._entry, !120, !"_entry", i1 false, i1 false}
!123 = !{ptr @pl172_timing_prop._entry_ptr, !120, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/memory/pl172.c", i32 76, i32 2}
!126 = !{ptr @pl172_timing_prop.__UNIQUE_ID_ddebug288, !125, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!127 = !{ptr @pl172_ids, !128, !"pl172_ids", i1 false, i1 false}
!128 = !{!"../drivers/memory/pl172.c", i32 284, i32 29}
!129 = !{i32 1, !"wchar_size", i32 2}
!130 = !{i32 1, !"min_enum_size", i32 4}
!131 = !{i32 8, !"branch-target-enforcement", i32 0}
!132 = !{i32 8, !"sign-return-address", i32 0}
!133 = !{i32 8, !"sign-return-address-all", i32 0}
!134 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!135 = !{i32 7, !"uwtable", i32 1}
!136 = !{i32 7, !"frame-pointer", i32 2}
!137 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!138 = !{!"auto-init"}
!139 = !{i64 2155051290}
!140 = !{i64 5846100}
!141 = !{i64 2148734244, i64 2148734249, i64 2148734262, i64 2148734306, i64 2148734340, i64 2148734361}
!142 = !{i64 2155044044}
!143 = !{i64 5846518}
!144 = !{i64 2155047136}
